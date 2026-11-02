#!/usr/bin/env python3
"""Pemeriksaan statis portofolio (QA Sprint 4 - Q1).

Menjalankan:
    python tools/check-site.py

Yang diperiksa:
  - ID ganda pada index.html
  - Anchor internal (#section) yang tidak punya target
  - File lokal (css/js/gambar) yang dirujuk tetapi tidak ada
  - Meta wajib (viewport, description, Open Graph, Twitter Card)
  - JSON-LD valid
  - Atribut alt pada gambar & rel="noopener" pada target="_blank"
"""
from __future__ import annotations

import json
import sys
from html.parser import HTMLParser
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
INDEX = ROOT / "index.html"

REQUIRED_META = [
    "description",
    "viewport",
    "og:title",
    "og:description",
    "og:type",
    "og:image",
    "og:locale",
    "twitter:card",
    "twitter:title",
    "twitter:image",
]

REMOTE_PREFIXES = ("http://", "https://", "//", "data:", "mailto:", "tel:")


class Collector(HTMLParser):
    def __init__(self) -> None:
        super().__init__(convert_charrefs=True)
        self.ids: list[str] = []
        self.anchors: list[str] = []
        self.local_refs: list[tuple[str, str]] = []
        self.images: list[dict[str, str]] = []
        self.blank_targets: list[tuple[str, str]] = []
        self.metas: dict[str, str] = {}
        self.has_lang = False
        self.jsonld: list[str] = []
        self._buffer: list[str] | None = None

    def handle_starttag(self, tag: str, attrs) -> None:
        a = {k: (v or "") for k, v in attrs}

        if a.get("id"):
            self.ids.append(a["id"])

        if tag == "html" and a.get("lang"):
            self.has_lang = True

        if tag == "meta":
            key = a.get("name") or a.get("property") or a.get("charset") or ""
            if key and key != "charset":
                self.metas[key] = a.get("content", "")

        if tag == "a":
            href = a.get("href", "")
            if href.startswith("#") and len(href) > 1:
                self.anchors.append(href)
            if a.get("target") == "_blank":
                self.blank_targets.append((href, a.get("rel", "")))
            if href and not href.startswith(("#",) + REMOTE_PREFIXES):
                self.local_refs.append(("a", href))

        if tag == "img":
            self.images.append(a)
            src = a.get("src", "")
            if src and not src.startswith(REMOTE_PREFIXES):
                self.local_refs.append(("img", src))

        if tag == "link":
            href = a.get("href", "")
            if href and not href.startswith(REMOTE_PREFIXES):
                self.local_refs.append(("link", href))

        if tag == "script":
            src = a.get("src", "")
            if src and not src.startswith(REMOTE_PREFIXES):
                self.local_refs.append(("script", src))
            if a.get("type") == "application/ld+json":
                self._buffer = []

    def handle_endtag(self, tag: str) -> None:
        if tag == "script" and self._buffer is not None:
            self.jsonld.append("".join(self._buffer))
            self._buffer = None

    def handle_data(self, data: str) -> None:
        if self._buffer is not None:
            self._buffer.append(data)


def main() -> int:
    if not INDEX.exists():
        print("ERROR: index.html tidak ditemukan")
        return 1

    source = INDEX.read_text(encoding="utf-8")
    parser = Collector()
    parser.feed(source)
    parser.close()

    errors: list[str] = []
    warnings: list[str] = []
    passed: list[str] = []

    # 1. ID ganda
    seen: set[str] = set()
    duplicates = sorted({i for i in parser.ids if i in seen or seen.add(i)})
    if duplicates:
        errors.append("ID ganda: " + ", ".join(duplicates))
    else:
        passed.append(f"ID unik ({len(parser.ids)} id)")

    # 2. Anchor internal
    missing_anchors = sorted({a for a in parser.anchors if a[1:] not in parser.ids})
    if missing_anchors:
        errors.append("Anchor tanpa target: " + ", ".join(missing_anchors))
    else:
        passed.append(f"Semua anchor internal valid ({len(parser.anchors)} tautan)")

    # 3. File lokal
    missing_files = sorted(
        {ref for _, ref in parser.local_refs if not (ROOT / ref.split("?")[0]).exists()}
    )
    if missing_files:
        errors.append("File tidak ditemukan: " + ", ".join(missing_files))
    else:
        passed.append(f"Semua file lokal tersedia ({len(parser.local_refs)} rujukan)")

    # 4. Meta wajib
    missing_meta = [m for m in REQUIRED_META if not parser.metas.get(m)]
    if missing_meta:
        errors.append("Meta belum lengkap: " + ", ".join(missing_meta))
    else:
        passed.append(f"Meta SEO/OG/Twitter lengkap ({len(REQUIRED_META)} tag)")

    if not parser.has_lang:
        warnings.append("Tag <html> belum punya atribut lang")

    # 5. JSON-LD
    if not parser.jsonld:
        warnings.append("JSON-LD terstruktur belum ada")
    for block in parser.jsonld:
        try:
            json.loads(block)
        except json.JSONDecodeError as exc:
            errors.append(f"JSON-LD tidak valid: {exc}")
    if parser.jsonld:
        passed.append(f"JSON-LD valid ({len(parser.jsonld)} blok)")

    # 6. Aksesibilitas gambar
    no_alt = [img.get("src", "?") for img in parser.images if not img.get("alt")]
    if no_alt:
        warnings.append("Gambar tanpa alt: " + ", ".join(no_alt))
    else:
        passed.append("Semua gambar punya atribut alt")

    # 7. target="_blank" tanpa rel noopener
    unsafe = [href for href, rel in parser.blank_targets if "noopener" not in rel]
    if unsafe:
        warnings.append('target="_blank" tanpa rel="noopener": ' + ", ".join(unsafe))
    else:
        passed.append('Semua target="_blank" memakai rel="noopener"')

    print("=" * 62)
    print(" QA STATIS - Portofolio Ahmad Yasin Pohan")
    print("=" * 62)
    for item in passed:
        print(f"  [OK]   {item}")
    for item in warnings:
        print(f"  [WARN] {item}")
    for item in errors:
        print(f"  [FAIL] {item}")

    print("-" * 62)
    print(f" Hasil: {len(passed)} ok, {len(warnings)} peringatan, {len(errors)} error")
    print("=" * 62)
    return 1 if errors else 0


if __name__ == "__main__":
    sys.exit(main())
