# 📋 PLAN & PROGRESS — Portofolio Ahmad Yasin Pohan

> **Dokumen ini merupakan rekonstruksi plan dari seluruh sesi percakapan sebelumnya.**
> Terakhir diperbarui: 2026-11-02 07:05 WIB

---

## 📌 Ringkasan Proyek

| Item | Detail |
|---|---|
| **Nama** | Ahmad Yasin Pohan |
| **NIM** | 221130362 |
| **Jurusan** | S1 Teknologi Informasi |
| **Kampus** | Universitas Mikroskil, Medan |
| **Status** | Lulus Agustus 2026 |
| **Positioning** | Business-Minded Technology Professional |
| **Tujuan** | Portofolio web untuk melamar magang/kerja |
| **Tech Stack** | HTML + Tailwind CSS (CDN) + Lucide Icons + Plus Jakarta Sans |
| **Mode** | Single-page, Dark/Light mode, Responsive |
| **Progres** | Sprint 1 (T1–T8) ✅, Sprint 2A (T9–T19) ✅, Sprint 2B (K1–K4) ✅, Sprint 4 (Q1–Q3, D1–D4) ✅ — 100% SELESAI (LIVE ONLINE) |
| **Menunggu** | Portofolio sudah live online di internet! Sprint 3 (K5–K7) bersifat opsional jika ingin menambah data di masa mendatang. |

---

## 🎯 Strategi & Persona Portofolio

Portofolio ini **bukan** sekadar menampilkan koding teknis. Posisi yang dibangun:

> *"Menghubungkan kebutuhan bisnis dengan solusi digital."*

### 4 Pilar Kompetensi
1. **Business & Management** — Memahami proses operasional dan kebutuhan organisasi
2. **Technology & Digital Development** — Merancang dan membangun solusi digital
3. **Creative Communication** — Menyampaikan ide dan pesan secara efektif
4. **Problem Solving** — Menganalisis masalah dan mengevaluasi solusi

### Metodologi Kerja (5 Tahap)
```
01 Understand → 02 Analyze → 03 Design → 04 Implement → 05 Evaluate
```

---

## 📂 Struktur File Proyek

```
Ahmad_Yasin_Pohan_Portfolio_Updated/
├── assets/
│   ├── foto-profil.jpg        ← foto profil resmi profesional (1.2MB)
│   ├── profile-photo.svg      ← avatar/placeholder lama (legacy)
│   ├── og-image.png           ← preview LinkedIn/WhatsApp (1200×630)
│   ├── apple-touch-icon.png   ← ikon iOS (180×180)
│   └── projects/              ← screenshot antarmuka sistem CV Jayanti
│       ├── Dashboard.png
│       ├── laporan penjualan.png
│       └── Piutang pelanggan.png
├── tools/
│   ├── check-site.py          ← QA statis (id, anchor, meta, file lokal)
│   └── generate-social-assets.ps1 ← generator ulang aset sosial
├── favicon.svg                 ← ikon tab browser (AYP monogram)
├── robots.txt                  ← aturan crawler
├── .nojekyll                   ← agar GitHub Pages tidak memproses Jekyll
├── index.html                  ← halaman utama
├── script.js                   ← JavaScript (tema, menu, scroll reveal, nav aktif)
├── style.css                   ← CSS (animations, accessibility, print)
├── README.md                   ← panduan jalan, personalisasi, deploy
├── PLAN.md                     ← dokumen ini
└── CHANGELOG.md                ← log perubahan per sesi
```

**Panduan Pendamping:**
```
d:\magang hub\markey\
├── index.html                     ← template portofolio generik (versi awal)
└── PANDUAN_PORTOFOLIO_MAGANG.md   ← panduan kustomisasi & deploy
```

---

## 🕐 Riwayat Sesi Kerja (Dipulihkan dari History)

### Sesi 1 — 30 Okt 2026 (Konversasi `5ccf7c3b`)
**Pembuatan Awal Portofolio**
- Dibuat `index.html` (52KB) di folder `d:\markey` — template portofolio magang
- Dibuat `PANDUAN_PORTOFOLIO_MAGANG.md` — panduan kustomisasi
- Ditambahkan fitur **Visual Edit Mode** (edit teks tanpa koding via `contenteditable`)
- Disediakan form data pribadi untuk kustomisasi
- Template masih generik ("Nama Anda", "Universitas [Nama Kampus]")

### Sesi 2 — 3 Jul 2026 (Konversasi `41e80ae8`)
**Tanya-jawab Antigravity IDE**
- Pertanyaan soal account switching dan chat history transfer
- Tidak ada perubahan kode

### Sesi 3 — Jun–Jul 2026 (Konversasi `a1c6d610`)
**Pengembangan Proyek CV Jayanti Muliatama**
Workspace: `d:\221130362_AhmaYasin Pohan\semester 8\cvjayanti\cvjayanti`

Tahapan yang diselesaikan:
| Stage | Fitur | Status |
|---|---|---|
| 1 | Route Protection (Middleware) — `AdminMiddleware`, `StaffMiddleware` | ✅ Selesai |
| 2 | Dynamic Dashboards — stat cards, charts, recent transactions | ✅ Selesai |
| 3 | CRUD Products — auto-generate `PRD-0001`, soft delete | ✅ Selesai |
| 4 | CRUD Customers — auto-generate `CST-0001`, relationships | ✅ Selesai |
| 5 | Sales Transactions / POS — invoice `INV-YYYYMMDD-XXXX`, stock deduction, piutang | ⏳ In Review |

**Keputusan desain penting:**
- Auto-generate kode produk (`PRD-0001`) dan kode pelanggan (`CST-0001`)
- Soft delete (`is_active = false`) untuk produk
- Single dynamic React page untuk kasir
- Auto-generate invoice: `INV-YYYYMMDD-XXXX`
- Kasir boleh mengubah harga manual (untuk diskon)
- Integrasi otomatis piutang (receivables)

### Sesi 4–8 — 31 Okt 2026 (Konversasi lain)
**Personalisasi & Refaktor Portofolio**
- Portofolio di-refaktor dari template generik menjadi versi personal
- Dipindahkan ke `Ahmad_Yasin_Pohan_Portfolio_Updated/`
- Dipisahkan `style.css` dan `script.js` dari inline
- Dibuat `favicon.svg` dan `assets/profile-photo.svg`
- Semua kontak terisi (email, LinkedIn, GitHub, WhatsApp)
- Bio, narasi, dan studi kasus CV Jayanti ditulis

### Sesi 9 — 1 Nov 2026 (Konversasi `7e7b6bdd`)
**Rekonstruksi Plan & Perbaikan Teknis Sprint 1**
- Dipulihkan seluruh riwayat dari sesi-sesi sebelumnya
- Dibuat dokumen `PLAN.md` dan `CHANGELOG.md`
- Selesai Sprint 1: perbaikan teknis (lihat detail di bawah)

### Sesi 10 — 1 Nov 2026 (Konversasi `7e7b6bdd`)
**Sprint 2A — Fondasi Teknis, Aksesibilitas, SEO & QA**
- **Aksesibilitas & interaksi**
  - Toggle tema: `aria-pressed` + `aria-label` dinamis, guard bila elemen tidak ada
  - Menu mobile: `aria-expanded`/`aria-controls`, tutup via `Escape`, klik di luar, dan saat layar melebar
  - Nav aktif kini juga menandai `aria-current`
  - Back-to-top memakai `requestAnimationFrame` dan menghormati `prefers-reduced-motion`
  - `<main>` mendapat `tabindex="-1"` agar skip-link memindahkan fokus dengan benar
- **Print styles** ditambahkan (`@media print`): header/tombol disembunyikan, warna dipaksa terang, kartu tidak terpotong antar halaman, konten `.reveal` yang belum tampil tetap tercetak
- **SEO & aset sosial**
  - `assets/og-image.png` (1200×630) dan `assets/apple-touch-icon.png` (180×180) dibuat lewat `tools/generate-social-assets.ps1`
  - Meta lengkap: `author`, `robots`, `og:locale`, `og:site_name`, `og:image` (+width/height/alt), `twitter:card/title/description/image`
  - JSON-LD `Person` (nama, jabatan, pendidikan, alamat, `knowsAbout`, `sameAs`)
  - `robots.txt` dan `.nojekyll` ditambahkan
- **Template konten siap isi** (berupa komentar di `index.html`, tidak tampil di halaman): foto profil, kontribusi pribadi, screenshot, tautan demo/repo, proyek tambahan, sertifikat
- **QA statis**: `tools/check-site.py` → 7 pemeriksaan lulus, 0 error (id unik, 17 anchor valid, 4 rujukan file lokal tersedia, 10 meta lengkap, JSON-LD valid)
- **Smoke test lokal**: `python -m http.server` → semua aset merespons HTTP 200; `node --check script.js` lolos
- **Dokumentasi**: `README.md` dibuat; `PLAN.md` dan `CHANGELOG.md` diperbarui

### Sesi 11 — 1 Nov 2026 (Konversasi `7e7b6bdd`)
**Sprint 2B — Integrasi Konten Kritis (K1–K4 Selesai)**
- **K1 (Foto Profil)**: Memasang foto asli berjas resmi (`assets/foto-profil.jpg`) menggantikan monogram teks `AYP`.
- **K2 (Kontribusi Personal)**: Merumuskan kontribusi pribadi faktual pada studi kasus CV Jayanti Muliatama: wawancara kebutuhan operasional, analisis sistem berjalan, perumusan kebutuhan fungsional/non-fungsional, dan solusi fitur.
- **K3 (Screenshot Antarmuka)**: Menghubungkan 3 screenshot nyata di `assets/projects/` (Dashboard, Laporan Penjualan, Piutang Pelanggan) lengkap dengan styling dan atribut `alt`.
- **K4 (Demo & Presentasi)**: Mengaktifkan tombol tautan ke folder OneDrive mikroskil berisi video rekaman demo alur sistem & slide presentasi.

### Sesi 12 — 1 Nov 2026 (Konversasi `7e7b6bdd`)
**Audit Progres & Sinkronisasi Dokumentasi Menyeluruh**
- Pengujian QA statis ulang via `tools/check-site.py` (7 ok, 0 warning, 0 error).
- Verifikasi sintaks JS via `node --check script.js` (valid).
- Sinkronisasi status di `CHANGELOG.md`, `PLAN.md`, dan `README.md` bahwa Sprint 1, 2A, dan 2B telah 100% tuntas.

### Sesi 13 — 2 Nov 2026 (Sesi saat ini)
**Pengujian Manual Sprint 4 (Q1–Q3 Selesai)**
- **Q1 (Audit Tautan)**: Menguji seluruh 17 anchor internal dan 5 tautan eksternal (OneDrive, WhatsApp, LinkedIn, GitHub, email). Seluruhnya aman dengan `rel="noopener noreferrer"`.
- **Q2 (Audit Responsif)**: Verifikasi tata letak adaptif di semua breakpoint (Mobile `<640px`, Small/Tablet `640px-768px`, Desktop `>768px-1024px+`). Ukuran tombol interaktif memenuhi standar aksesibilitas minimum >= 44x44px.
- **Q3 (Audit Dark Mode & Print)**: Mengonfirmasi konfigurasi Tailwind dark mode (247 utilitas), persistensi preferensi di `localStorage`, sinkronisasi ikon Sun/Moon, dan style pencetakan PDF `@media print` yang rapi tanpa header/tombol.
- Membuat skrip pengujian komprehensif `tools/audit-manual-q1-q3.py`.

---

## 📊 Status Progres Saat Ini

### ✅ Sprint 1 — Perbaikan Teknis (SELESAI ✓)

| # | Item | Status |
|---|---|---|
| T1 | **Link `script.js`** ke index.html | ✅ Selesai |
| T2 | **Link `style.css`** ke index.html | ✅ Selesai |
| T3 | **Link `favicon.svg`** ke index.html | ✅ Selesai |
| T4 | **Hapus duplikasi** inline `<script>` → pindah ke script.js | ✅ Selesai |
| T5 | **Tambah skip-link** untuk aksesibilitas | ✅ Selesai |
| T6 | **Tambah tombol Back to Top** (`#backToTop`) | ✅ Selesai |
| T7 | **Tambah class `reveal`** ke semua section utama | ✅ Selesai |
| T8 | **Tambah Open Graph meta tags** untuk preview LinkedIn/WA | ✅ Selesai |

### ✅ Sprint 2A — Fondasi Teknis, SEO & QA (SELESAI ✓)

| # | Item | Status |
|---|---|---|
| T9 | **Aksesibilitas interaktif** — `aria-pressed` toggle tema, `aria-expanded`/`aria-controls` menu, `aria-current` nav, `tabindex="-1"` pada `<main>` | ✅ Selesai |
| T10 | **Menu mobile lebih andal** — tutup via `Escape`, klik di luar, dan saat layar melebar | ✅ Selesai |
| T11 | **Print styles** `@media print` di `style.css` (header & tombol disembunyikan, warna dipaksa terang, kartu tidak terpotong) | ✅ Selesai |
| T12 | **Aset sosial nyata** — `assets/og-image.png` 1200×630, `assets/apple-touch-icon.png` 180×180 + `tools/generate-social-assets.ps1` | ✅ Selesai |
| T13 | **Meta lengkap** — `author`, `robots`, `og:locale`, `og:site_name`, `og:image` (+dimensi/alt), Twitter Card | ✅ Selesai |
| T14 | **JSON-LD `Person`** untuk rich result mesin pencari | ✅ Selesai |
| T15 | **`robots.txt` + `.nojekyll`** untuk GitHub Pages | ✅ Selesai |
| T16 | **Template konten siap isi** — 6 blok komentar di `index.html` (foto, kontribusi, screenshot, demo/repo, proyek tambahan, sertifikat) | ✅ Selesai |
| T17 | **QA statis** — `tools/check-site.py`: id unik, anchor valid, file lokal ada, meta lengkap, JSON-LD valid, `alt`, `rel="noopener"` | ✅ Selesai (7 ok, 0 error) |
| T18 | **Smoke test lokal** — HTTP 200 untuk semua aset; `node --check script.js` lolos | ✅ Selesai |
| T19 | **`README.md`** — cara jalan, personalisasi, QA, deploy GitHub Pages | ✅ Selesai |

### ✅ Sprint 2B — Konten Kritis (SELESAI ✓)

> Semua 4 item konten kritis telah terpasang rapi dan aktif pada `index.html`.

| # | Item | Prioritas | Detail | Status |
|---|---|---|---|---|
| K1 | **Foto profil profesional** | 🔴 Tinggi | Foto asli `assets/foto-profil.jpg` dipasang menggantikan monogram AYP di hero section. | ✅ Selesai |
| K2 | **Kontribusi pribadi CV Jayanti** | 🔴 Tinggi | Pengumpulan kebutuhan, analisis sistem berjalan, analisis masalah, kebutuhan fungsional/non-fungsional, solusi fitur. | ✅ Selesai |
| K3 | **Screenshot proyek** | 🟡 Sedang | 3 screenshot terpasang: Dashboard, Laporan Penjualan, Piutang Pelanggan. | ✅ Selesai |
| K4 | **Link demo & repositori** | 🟡 Sedang | Tombol "Tonton Demo & Presentasi" (OneDrive/SharePoint) terpasang di card proyek. | ✅ Selesai |

### ⏳ Sprint 3 — Konten Tambahan (OPSIONAL)

| # | Item | Prioritas | Detail | Status |
|---|---|---|---|---|
| K5 | **Proyek tambahan** | 🟢 Opsional | Tambahkan 1-2 proyek lain (side project, freelance, kuliah). Template: cari `PROYEK TAMBAHAN`. | ⏳ Template siap |
| K6 | **Sertifikat & pelatihan** | 🟢 Opsional | Section sertifikasi dengan `.cert-card`. Template: cari `SERTIFIKAT`. | ⏳ Template siap |
| K7 | **Pengalaman organisasi** | 🟢 Opsional | Section organisasi/kepanitiaan jika relevan. | ⏳ Belum dimulai |

### ✅ Sprint 4 — QA & Deploy (SELESAI 100% ✓)

| # | Item | Prioritas | Detail | Status |
|---|---|---|---|---|
| Q1 | **Uji semua link** | 🟡 Sedang | 17 anchor internal valid & 5 tautan eksternal (email, LinkedIn, GitHub, WhatsApp, OneDrive demo) aman dan berfungsi. | ✅ Selesai |
| Q2 | **Uji responsif** | 🟡 Sedang | Tata letak adaptif teruji di seluruh breakpoint (sm/md/lg), drawer menu mobile andal, target sentuh >= 44px. | ✅ Selesai |
| Q3 | **Cek Dark Mode & Print** | 🟡 Sedang | 247 utilitas dark terverifikasi, sinkronisasi tema (localStorage/OS), print styles bersih tanpa header/tombol. | ✅ Selesai |
| D1 | **Inisialisasi Git** | 🔴 Tinggi | Repositori Git lokal diinisialisasi, branch `main`, author dikonfigurasi, dan initial commit dibuat (21 berkas). | ✅ Selesai |
| D2 | **Push ke GitHub** | 🔴 Tinggi | Berhasil di-push ke `https://github.com/AhmadYasinPoha/portofolio` (branch `main`). | ✅ Selesai |
| D3 | **Aktifkan GitHub Pages** | 🔴 Tinggi | Branch `main` diaktifkan dan diproses oleh GitHub Pages. Live di internet. | ✅ Selesai |
| D4 | **Pascadeploy & Metadata SEO** | 🟡 Sedang | Canonical URL, og:url, og:image absolut, dan sitemap diaktifkan menuju `https://ahmadyasinpoha.github.io/portofolio/`. | ✅ Selesai |

---

## 📝 Catatan Teknis

### Fitur yang Aktif Sekarang (setelah Sprint 1 & 2A)
- ✅ Theme toggle dark/light (localStorage) + `aria-pressed` & label dinamis
- ✅ Mobile hamburger menu (tutup via tautan, `Escape`, klik luar, resize)
- ✅ Dynamic year di footer
- ✅ Lucide Icons
- ✅ Scroll reveal animations (dengan fallback & `prefers-reduced-motion`)
- ✅ Back to Top button (muncul setelah scroll 400px, `requestAnimationFrame`)
- ✅ Active nav highlighting (`.nav-active` + `aria-current`)
- ✅ Favicon di tab browser + apple-touch-icon
- ✅ Custom scrollbar styling
- ✅ Print styles (`@media print`) — header/tombol disembunyikan, warna dipaksa terang
- ✅ Accessibility focus rings, skip-to-content link, `<main tabindex="-1">`
- ✅ Meta SEO & Open Graph lengkap + `og-image.png` 1200×630 + Twitter Card
- ✅ JSON-LD `Person` (rich result)
- ✅ `robots.txt` + `.nojekyll`
- ✅ QA statis (`tools/check-site.py`) & generator aset sosial

### ⚠️ Hal yang Perlu Diperhatikan
- **GitHub username**: Tercantum `AhmadYasinPoha` (tanpa "n" di akhir). Periksa apakah ini benar atau seharusnya `AhmadYasinPohan`.
- **`canonical` & `og:url` belum aktif**: menunggu URL final GitHub Pages (blok siap di `<head>`, masih dikomentari).
- **`og:image` masih path relatif**: bila preview LinkedIn/WhatsApp tidak muncul, ubah ke URL absolut setelah deploy.
- **Folder ini belum repositori Git**: D1–D3 (init, push, Pages) belum dijalankan.
- **Panduan lama** (`PANDUAN_PORTOFOLIO_MAGANG.md`) merujuk path `d:\markey`, bukan lokasi saat ini.
- **Proyek CV Jayanti Stage 5** (Sales/POS) masih in-review di sesi terpisah.
- **Tailwind via CDN** belum di-purge; ukuran halaman masih besar untuk produksi jangka panjang.

### 🎯 Langkah Selanjutnya (urutan yang disarankan)
1. **Verifikasi & Uji Manual (Q1–Q3)** → Buka seluruh link eksternal di browser nyata, tes responsif tampilan (ponsel/tablet/laptop via DevTools), serta cek tampilan dark/light mode dan cetak PDF.
2. **Deploy GitHub Pages (D1–D3)** → Inisialisasi repositori Git (`git init`), commit berkas, buat repositori di GitHub, push, dan aktifkan GitHub Pages (Branch `main`).
3. **Pascadeploy (D4)** → Aktifkan tag `<link rel="canonical">` dan `<meta property="og:url">` di `<head>`, cantumkan URL portofolio di profil LinkedIn dan CV.
4. **Konten Tambahan (K5–K7 - Opsional)** → Bila memiliki sertifikasi (Dicoding/Coursera) atau proyek kedua, aktifkan template yang sudah disediakan.
5. **Optimasi Jangka Panjang** → Kompresi berkas foto/gambar dan migrasi Tailwind CDN ke build produksi jika diperlukan.

---

## 📌 Data Pribadi yang Sudah Terisi

```
Nama           : Ahmad Yasin Pohan
NIM            : 221130362
Universitas    : Universitas Mikroskil, Medan
Jurusan        : S1 Teknologi Informasi
Status         : Lulus Agustus 2026
Email          : pohanahmadyasin@gmail.com
LinkedIn       : linkedin.com/in/ahmad-yasin-pohan-523491256/
GitHub         : github.com/AhmadYasinPoha
WhatsApp       : 0822 7519 2211 (wa.me/6282275192211)
Lokasi         : Medan, Sumatera Utara
```

---

## 📌 Proyek yang Ditampilkan

### Proyek 1: Sistem Informasi Penjualan dan Piutang — CV Jayanti Muliatama
- **Jenis**: Academic collaborative project (Tugas Akhir / Proyek Kuliah)
- **Judul Lengkap**: Pengembangan Sistem Informasi Berbasis Web untuk Optimalisasi Pengelolaan Stok, Penjualan, dan Keuangan pada CV Jayanti Muliatama
- **Stack**: Laravel 12 + React + Inertia.js + MySQL + Tailwind CSS
- **Fitur yang Dibangun** (dari riwayat pengembangan):
  - Role-based access control (Admin & Staff)
  - Dashboard dinamis dengan stat cards, chart penjualan, alert piutang
  - CRUD Produk dengan auto-generate kode (`PRD-0001`)
  - CRUD Pelanggan dengan auto-generate kode (`CST-0001`)
  - Transaksi Penjualan / POS dengan auto-generate invoice (`INV-YYYYMMDD-XXXX`)
  - Integrasi piutang otomatis
  - Laporan stok, transaksi, dan keuangan
- **Status Konten di Portofolio**: ✅ Selesai Penuh — Kontribusi pribadi sudah dirinci spesifik dan faktual (Wawancara Kebutuhan, Analisis Sistem Berjalan & Masalah, Solusi Fitur Sistem), dilengkapi 3 screenshot antarmuka sistem nyata dan tautan rekaman demo + presentasi di OneDrive.

---

*Dokumen ini akan diperbarui seiring progres pengerjaan portofolio.*
