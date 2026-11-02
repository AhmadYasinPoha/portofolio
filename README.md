# Portofolio Ahmad Yasin Pohan

Portofolio satu halaman untuk melamar magang/kerja, dengan posisi **Business-Minded Technology Professional** — menghubungkan kebutuhan bisnis dengan solusi digital.

| Item | Detail |
|---|---|
| **Nama** | Ahmad Yasin Pohan |
| **NIM** | 221130362 |
| **Jurusan** | S1 Teknologi Informasi |
| **Kampus** | Universitas Mikroskil, Medan |
| **Status** | Lulus Agustus 2026 |
| **Tech stack** | HTML + Tailwind CSS (CDN) + Lucide Icons + Plus Jakarta Sans |
| **Mode** | Single-page, dark/light, responsif, print-friendly, accessible |

---

## 1. Cara Menjalankan

**Cara cepat:** buka `index.html` langsung di browser (klik dua kali).

**Cara disarankan** (agar path relatif dan font berjalan persis seperti lingkungan web server):

```powershell
python -m http.server 8765
# lalu buka http://localhost:8765 di browser
```

Tidak membutuhkan proses build atau kompilasi npm. Semua pustaka eksternal dimuat melalui CDN modern.

---

## 2. Struktur Proyek

```
Ahmad_Yasin_Pohan_Portfolio_Updated/
├── index.html                        ← halaman utama portofolio (single-page)
├── style.css                         ← animasi, aksesibilitas, print styles
├── script.js                         ← logika tema, menu mobile, scroll reveal, nav aktif
├── favicon.svg                       ← ikon tab browser (monogram AYP)
├── robots.txt                        ← konfigurasi crawling mesin pencari
├── .nojekyll                         ← bypass parser Jekyll di GitHub Pages
├── assets/
│   ├── foto-profil.jpg               ← foto profil resmi profesional (hero section)
│   ├── profile-photo.svg             ← placeholder foto profil (legacy)
│   ├── og-image.png                  ← gambar preview media sosial (1200×630)
│   ├── apple-touch-icon.png          ← ikon sentuh perangkat iOS (180×180)
│   └── projects/                     ← tangkapan layar antarmuka sistem CV Jayanti
│       ├── Dashboard.png
│       ├── laporan penjualan.png
│       └── Piutang pelanggan.png
├── tools/
│   ├── check-site.py                 ← alat QA statis otomatis (id, anchor, meta, aset)
│   └── generate-social-assets.ps1    ← generator aset sosial resolusi tinggi via GDI+
├── PLAN.md                           ← rencana kerja & progres sprint
├── README.md                         ← dokumentasi panduan proyek ini
└── CHANGELOG.md                      ← log riwayat perubahan bertahap
```

---

## 3. Fitur yang Sudah Aktif

- **Foto profil resmi** terpasang rapi di section Hero (`assets/foto-profil.jpg`).
- **Studi kasus komprehensif CV Jayanti Muliatama**:
  - Konteks masalah bisnis, arah solusi, dan nilai implementasi.
  - Kontribusi pribadi faktual dan terstruktur (wawancara kebutuhan operasional, analisis sistem berjalan, spesifikasi kebutuhan fungsional & non-fungsional, solusi fitur).
  - 3 tangkapan layar antarmuka sistem nyata dari folder `assets/projects/`.
  - Tombol aksi langsung ke folder rekaman demo sistem & materi presentasi di OneDrive.
- **Dark/light mode** otomatis tersimpan ke preferensi peramban (`localStorage` kunci `ayp-portfolio-theme`).
- **Menu hamburger mobile** andal (menutup via klik tautan navigasi, tombol `Escape`, klik di luar area menu, maupun penyesuaian ukuran layar).
- **Scroll reveal animation** berbasis IntersectionObserver dengan degradasi mulus bagi browser lawas.
- **Tombol back-to-top** dengan throttling `requestAnimationFrame` dan kepatuhan `prefers-reduced-motion`.
- **Penanda nav aktif** terintegrasi secara visual (`.nav-active`) dan ramah pembaca layar (`aria-current`).
- **Aksesibilitas tingkat lanjut**: skip-to-content link, target fokus `<main tabindex="-1">`, dan focus ring yang jelas untuk navigasi keyboard.
- **SEO & Social Share**: tag meta lengkap, Open Graph (1200×630), Twitter Card, serta JSON-LD Schema `Person` terstruktur.
- **Print styles (`@media print`)**: menghasilkan dokumen cetak/PDF bersih tanpa header, toggle, atau elemen interaktif yang tidak relevan.
- **Tahun hak cipta dinamis** pada footer halaman.

---

## 4. Status Konten & Template Opsional

### Konten Utama (Sprint 1, 2A, 2B) — ✅ 100% Selesai
- **K1 (Foto Profil)**: Terpasang di hero section (`assets/foto-profil.jpg`).
- **K2 (Kontribusi Pribadi)**: Terpasang di section proyek CV Jayanti Muliatama.
- **K3 (Screenshot Antarmuka)**: 3 screenshot aktif di `assets/projects/` (Dashboard, Laporan Penjualan, Piutang Pelanggan).
- **K4 (Tautan Demo & Presentasi)**: Tombol OneDrive aktif mengarah ke rekaman dan materi presentasi lengkap.

### Konten Tambahan Lanjutan (Sprint 3) — ⏳ Opsional
Template markup sudah disiapkan di `index.html` dalam bentuk komentar HTML. Jika ingin diaktifkan di masa mendatang:

| # | Item | Kata kunci di `index.html` | Keterangan |
|---|---|---|---|
| K5 | Proyek tambahan | `PROYEK TAMBAHAN` | Tambahkan proyek kedua jika ada (side project, tugas kuliah, freelance) |
| K6 | Sertifikat & pelatihan | `SERTIFIKAT` | Tambahkan kartu sertifikat jika memiliki lisensi/sertifikasi terverifikasi |
| K7 | Organisasi | — | Tambahkan riwayat kepanitiaan/organisasi bila relevan |

---

## 5. QA & Utilitas

### Pemeriksaan statis otomatis

```powershell
python tools/check-site.py
```

Memeriksa integritas halaman secara komprehensif: ID ganda, anchor internal tanpa target yang cocok, ketersediaan seluruh file lokal yang dirujuk, kelengkapan tag meta SEO/OG/Twitter, validitas JSON-LD Schema, atribut `alt` pada semua elemen gambar, serta kepatuhan `rel="noopener"` pada `target="_blank"`.

### Pemeriksaan sintaks JavaScript

```powershell
node --check script.js
```

### Regenerasi aset sosial

```powershell
powershell -ExecutionPolicy Bypass -File tools/generate-social-assets.ps1
```

Menghasilkan ulang `assets/og-image.png` (1200×630) dan `assets/apple-touch-icon.png` (180×180) menggunakan API grafik bawaan Windows.

### Checklist pengujian manual & audit (Sprint 4: Q1–Q3)

- [x] Semua tautan eksternal (email, LinkedIn, GitHub, WhatsApp, OneDrive demo) tervalidasi dan aman (`rel="noopener noreferrer"`)
- [x] Semua 17 navigasi internal (anchor links) terhubung ke ID section yang valid
- [x] Responsivitas adaptif di semua breakpoint (Mobile `<640px`, Phablet `sm:`, Tablet `md:`, Desktop `lg:`)
- [x] Target sentuh tombol seluler memenuhi standar aksesibilitas minimum >= 44x44px
- [x] Dark mode & light mode: 247 utilitas kontras terverifikasi + fungsi simpan `localStorage`
- [x] Navigasi keyboard: tombol `Tab` → skip-link → menu → kontak; `Escape` menutup menu seluler
- [x] Preview cetak (`Ctrl/Cmd + P`) menghasilkan tampilan PDF rapi tanpa elemen navigasi mengambang
- [x] Banner preview media sosial (`assets/og-image.png`) tersedia dan terhubung di meta tag

---

## 6. Deploy ke GitHub Pages

1. Pastikan username akun GitHub Anda. Saat ini tercantum `AhmadYasinPoha` (periksa apakah sudah sesuai atau seharusnya `AhmadYasinPohan`).
2. Jalankan perintah Git berikut pada terminal workspace:

```powershell
git init
git add .
git commit -m "Portofolio Ahmad Yasin Pohan - siap deploy"
git branch -M main
git remote add origin https://github.com/USERNAME/portofolio.git
git push -u origin main
```

3. Buka repositori di GitHub, masuk ke tab **Settings → Pages**:
   - Sumber: **Deploy from a branch**
   - Branch: **main**, folder: **/(root)**
   - Klik **Save**
4. Setelah link GitHub Pages aktif (misalnya `https://username.github.io/portofolio/`):
   - Buka tag komentar di bagian `<head>` berkas `index.html`, sesuaikan `USERNAME`, lalu aktifkan tag `<link rel="canonical">` dan `<meta property="og:url">`.
   - Buka baris `Sitemap:` pada berkas `robots.txt` bila telah membuat sitemap.
   - Cantumkan tautan portofolio pada profil LinkedIn dan berkas Curriculum Vitae (CV).

> Catatan: `og:image` menggunakan path relatif `assets/og-image.png`. Sebagian besar platform dapat meresolusi ini otomatis, namun bila preview LinkedIn/WhatsApp belum muncul, Anda dapat menggantinya menjadi URL absolut penuh setelah deployment selesai.

---

## 7. Catatan Teknis

- **Tailwind CSS via CDN** (`cdn.tailwindcss.com`) — memudahkan pemeliharaan tanpa dependensi npm build tool.
- **Konfigurasi Tailwind** (`darkMode: 'class'`, palet warna khusus `ink` dan `accent`, box shadow halus) disematkan sebelum utilitas diproses.
- **Lucide Icons** diinjeksi via script CDN dan diinisialisasi melalui `lucide.createIcons()`.
- **Kunci localStorage tema**: `ayp-portfolio-theme` (`dark` / `light`).
- **Aksesibilitas**: mematuhi panduan WCAG dasar (skip-link, target fokus, ARIA states).

---

## 8. Lisensi & Hak Cipta

Konten data pribadi, foto, dan studi kasus proyek adalah milik **Ahmad Yasin Pohan**. Dilarang menduplikasi atau mempublikasikan identitas pribadi tanpa izin yang bersangkutan.
