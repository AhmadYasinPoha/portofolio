# 📝 CHANGELOG — Portofolio Ahmad Yasin Pohan

Semua perubahan penting pada proyek portofolio dicatat di sini.

---

## [2026-11-05 · sesi 18] Personalisasi Kontak — Integrasi Akun TikTok

### 📱 Penambahan Saluran Media Sosial
- Menambahkan tautan profil TikTok resmi (`https://www.tiktok.com/@a.yasinp30?_r=1&_t=ZS-99sS2wrjj0v`) pada kartu kontak `#contact` di `index.html`.
- Dilengkapi dengan ikon SVG logo TikTok vektor yang presisi dan atribut keamanan `target="_blank" rel="noopener noreferrer"`.
- Menambahkan tautan profil TikTok ke dalam daftar `sameAs` pada Schema JSON-LD `Person` untuk optimasi indeks identitas mesin pencari.
- Memperbarui daftar data pribadi di `PLAN.md`.
- **Hasil QA**: 7/7 QA statis lulus, 8 tautan eksternal tervalidasi aman.

---

## [2026-11-04 · sesi 17] Sprint 3 — Integrasi Sertifikasi AI Komdigi & Microsoft (K6 Selesai)

### 🏆 Integrasi Sertifikasi Resmi (K6)
- Mengaktifkan section `#certificates` (Sertifikasi & Pelatihan) di `index.html`:
  - **Program**: Elevate: Artificial Intelligence (AI)
  - **Penerbit**: Kementerian Komunikasi dan Digital (KOMDIGI) & Microsoft
  - **Tahun**: 2025
  - **Tautan Kredensial**: Terhubung langsung ke folder verifikasi cloud resmi dengan pengamanan `rel="noopener noreferrer"`.
  - **Deskripsi**: Pelatihan komprehensif pemanfaatan kecerdasan buatan, teknologi produktivitas berbasis AI, dan ekosistem Microsoft.
- **Navigasi Web & Aksesibilitas**:
  - Menambahkan menu `Sertifikasi` (`#certificates`) pada bilah navigasi desktop dan navigasi seluler (drawer).
  - Menambahkan kompetensi `Artificial Intelligence (AI)` dan `Microsoft AI` ke dalam Schema JSON-LD `Person`.
- **Hasil QA**: 7/7 QA statis lulus, 19 anchor internal valid, 7 tautan eksternal aman.

---

## [2026-11-03 · sesi 16] Sprint 3 — Integrasi Proyek Mobile "SakuKu" (K5 Selesai)

### 📱 Integrasi Proyek Mobile SakuKu (K5)
- Memasang card proyek kedua pada section `#projects` di `index.html`:
  - **Judul**: SakuKu — Personal Finance & Expense Tracker
  - **Badge**: Mobile application project (2024)
  - **Stack**: Flutter, Dart, SQLite, Drift ORM, Offline-First
  - **Tombol Aksi**: Tautan langsung ke repositori GitHub resmi `https://github.com/AhmadYasinPoha/saku_ku` dengan atribut `target="_blank" rel="noopener noreferrer"`.
  - **Uraian Kasus**: Masalah pencatatan keuangan manual, arsitektur offline-first, fitur dashboard saldo otomatis, pengelompokan transaksi, dan navigasi tanggal terintegrasi.
- **Peningkatan Skills & SEO**:
  - Menambahkan kompetensi `Flutter`, `Dart`, dan `Mobile Application Development` ke dalam Schema JSON-LD `Person`.
  - Menyorot badge `Flutter & Dart` pada pilar *Technology & Digital Development* di section `#skills`.
- **Hasil QA**: 7/7 QA statis lolos, 6 tautan eksternal tervalidasi aman.

---

## [2026-11-02 · sesi 15] Sprint 4 — Push Repositori ke GitHub & Konfigurasi SEO Pascadeploy (D2 & D4 Selesai)

### 🚀 Upload ke GitHub (D2)
- Menghubungkan repositori lokal ke remote GitHub resmi: `https://github.com/AhmadYasinPoha/portofolio.git`.
- Berhasil mengeksekusi `git push -u origin main` menggunakan Personal Access Token (PAT).
- Seluruh 21 berkas proyek (termasuk folder `assets/`, skrip, dan dokumentasi) telah live di GitHub.
- Membersihkan URL remote agar kredensial token tidak tersimpan dalam berkas teks konfigurasi lokal.

### 🌐 Konfigurasi Pascadeploy (D4)
- Mengaktifkan `<link rel="canonical" href="https://ahmadyasinpoha.github.io/portofolio/">` di `index.html`.
- Mengaktifkan `<meta property="og:url" content="https://ahmadyasinpoha.github.io/portofolio/">`.
- Memperbarui `og:image` dan `twitter:image` menjadi URL absolut penuh (`https://ahmadyasinpoha.github.io/portofolio/assets/og-image.png`) agar preview LinkedIn dan WhatsApp tampil sempurna.
- Menambahkan URL profil portofolio pada Schema JSON-LD `Person`.
- Memperbarui rujukan sitemap pada `robots.txt`.
- Perubahan pascadeploy telah di-commit (`24ea9e7`) dan langsung di-push ke GitHub.

---

## [2026-11-02 · sesi 14] Sprint 4 — Inisialisasi Git Repositori Lokal (D1 Selesai)

### 📦 Setup Repositori Git Lokal (D1)
- Membuat berkas `.gitignore` untuk mengecualikan berkas sistem OS (`.DS_Store`, `Thumbs.db`, `desktop.ini`, `*.log`, `*.tmp`) dan folder sumber foto mentah `foto_profil/`.
- Menjalankan `git init` dan mengonfigurasi branch utama menjadi `main` (`git branch -M main`).
- Mengonfigurasi identitas Git lokal repository: `Ahmad Yasin Pohan <pohanahmadyasin@gmail.com>`.
- Melakukan staging 21 berkas proyek portofolio dan mengeksekusi initial commit:
  - Commit ID: `e8229c7`
  - Pesan commit: `feat: inisialisasi portofolio Ahmad Yasin Pohan siap deploy`
- Seluruh struktur berkas, aset web, dan dokumentasi telah terpatri di riwayat Git lokal.

---

## [2026-11-02 · sesi 13] Sprint 4 — Pengujian Manual Komprehensif (Q1–Q3 Selesai)

### 🔗 Audit Tautan Internal & Eksternal (Q1)
- Memeriksa seluruh 17 tautan internal (anchor links) pada navigasi desktop, mobile menu drawer, dan tombol CTA hero (`#home`, `#about`, `#approach`, `#skills`, `#projects`, `#education`, `#contact`). Seluruhnya memiliki elemen ID target yang valid.
- Memeriksa seluruh 5 tautan eksternal aktif:
  - Tonton Demo & Presentasi (OneDrive/SharePoint)
  - Kontak Email (`mailto:pohanahmadyasin@gmail.com`)
  - Profil LinkedIn (`https://www.linkedin.com/in/ahmad-yasin-pohan-523491256/`)
  - Profil GitHub (`https://github.com/AhmadYasinPoha`)
  - Direct WhatsApp Chat (`https://wa.me/6282275192211`)
- Seluruh tautan eksternal dengan `target="_blank"` telah terproteksi atribut keamanan `rel="noopener noreferrer"`.

### 📱 Audit Desain Responsif (Q2)
- Menguji fluiditas layout di seluruh tier resolusi:
  - Mobile Small (<640px): Drawer menu vertikal, profil photo stack, card pilar 1-kolom.
  - Mobile Medium / Phablet (sm: >=640px): Card pilar 2-kolom, problem-solution 2-kolom.
  - Tablet (md: >=768px): Transisi navbar hamburger ke navigasi horizontal desktop.
  - Desktop (lg: >=1024px): Layout 2-kolom asimetris pada hero section (1.3fr : .7fr) dan proyek CV Jayanti (.9fr : 1.1fr).
- Memastikan semua tombol interaktif memiliki target sentuh minimum >= 44x44px sesuai standar kenyamanan layar sentuh (WCAG / Apple HIG).

### 🌓 Audit Dark Mode & Cetak PDF (Q3)
- Memverifikasi 247 utilitas kelas Tailwind varian `dark:` pada elemen latar, teks, border, dan kartu.
- Mengonfirmasi fungsi tombol toggle tema (`#themeToggle`), sinkronisasi ikon Sun/Moon, dan penyimpanan status di `localStorage` (`ayp-portfolio-theme`).
- Memverifikasi aturan `@media print`: header mengambang, drawer seluler, dan tombol back-to-top otomatis disembunyikan; latar dipaksa putih cerah hemat tinta; elemen animasi `.reveal` dipaksa tampil; serta aturan `break-inside: avoid` mencegah kartu terpotong antar halaman.
- Membuat skrip alat pengujian otomatis: `tools/audit-manual-q1-q3.py`.

---

## [2026-11-01 · sesi 12] Audit Progres & Sinkronisasi Dokumentasi Menyeluruh

### 🔍 Verifikasi & Pengujian Otomatis
- Menjalankan kembali suite QA statis (`tools/check-site.py`): **7 ok, 0 peringatan, 0 error**.
  - 14 ID unik tanpa duplikasi
  - 17 anchor internal terverifikasi valid
  - 8 rujukan aset lokal tersedia di disk (foto profil, 3 screenshot proyek, og-image, apple-touch-icon, favicon, script/css)
  - 10 tag meta SEO, Open Graph, dan Twitter Card lengkap
  - Validitas format JSON-LD Schema `Person`
  - Semua gambar memiliki teks alternatif (`alt`)
  - Semua anchor eksternal (`target="_blank"`) memiliki `rel="noopener noreferrer"`
- Uji sintaks JavaScript (`node --check script.js`): valid, tanpa galat sintaks.

### 📚 Sinkronisasi Dokumentasi
- **`CHANGELOG.md`**: Melengkapi riwayat pencapaian Sprint 2B (K1 foto profil resmi, K2 kontribusi pribadi terstruktur, K3 screenshot antarmuka sistem, K4 tautan demo & presentasi OneDrive).
- **`PLAN.md`**: Memperbarui status menyeluruh Sprint 2B menjadi SELESAI (100% konten kritis terpenuhi), memperbarui peta struktur aset, dan mengarahkan fokus langkah selanjutnya ke Sprint 4 (Uji manual & Deploy GitHub Pages).
- **`README.md`**: Memperbarui struktur file aktual dan memperbarui panduan checklist dari "konten kritis yang ditunggu" menjadi "siap deploy & konten opsional lanjutan".

---

## [2026-11-01 · sesi 11] Sprint 2B — Penyelesaian Konten Kritis (K1–K4 Selesai)

### 👤 Foto Profil Profesional (K1)
- Mengganti monogram teks `AYP` dengan foto resmi Ahmad Yasin Pohan (`assets/foto-profil.jpg`).
- Foto disajikan dengan rasio aspek proporsional (`aspect-[4/4.3]`), sudut membulat elegan (`rounded-[1.5rem]`), serta atribut aksesibilitas dan performa (`alt="Foto profil Ahmad Yasin Pohan"`, `loading="lazy"`, `decoding="async"`).
- Menjaga kebersihan layout dengan menghapus catatan teks penjelasan monogram lama.

### 💼 Kontribusi Pribadi Terstruktur & Otentik (K2)
- Mengisi kontribusi pribadi pada proyek utama **CV Jayanti Muliatama** sesuai peran nyata pengguna di bidang analisis sistem:
  1. Melaksanakan pengumpulan kebutuhan sistem melalui wawancara langsung dengan pihak operasional CV Jayanti Muliatama.
  2. Menyusun gambaran umum perusahaan, analisis sistem berjalan, dan analisis masalah.
  3. Menentukan kebutuhan fungsional, non-fungsional, dan solusi fitur sistem agar beroperasi optimal.
- Menegaskan positioning sebagai *Business-Minded Technology Professional* yang menjembatani bisnis dan teknologi.

### 🖼️ Screenshot Antarmuka Sistem Nyata (K3)
- Memasang 3 tangkapan layar antarmuka sistem asli dari folder `assets/projects/`:
  - `assets/projects/Dashboard.png` — Dashboard ringkasan operasional dan analitik.
  - `assets/projects/laporan penjualan.png` — Modul rekapitulasi transaksi penjualan.
  - `assets/projects/Piutang pelanggan.png` — Modul pemantauan piutang pelanggan dan status pembayaran.
- Masing-masing dilengkapi atribut `alt` deskriptif untuk aksesibilitas dan styling border kontras lembut.

### 🎬 Tautan Demo & Rekaman Presentasi (K4)
- Menambahkan tombol interaktif **"Tonton Demo & Presentasi"** pada card proyek CV Jayanti Muliatama di `index.html`.
- Mengarahkan rekruter ke folder cloud OneDrive/SharePoint yang memuat rekaman video alur sistem berjalan dan slide presentasi lengkap.
- Menggunakan ikon Lucide `play-circle` dan `external-link` dengan keamanan `rel="noopener noreferrer"`.
- Keterangan pendukung ditambahkan: *"Mencakup rekaman alur sistem & slide presentasi lengkap (OneDrive)"*.

### 🔍 Hasil QA Pasca-Sprint 2B
- QA statis (`tools/check-site.py`): **7 ok, 0 error, 0 warning** (rujukan file lokal bertambah dari 4 menjadi 8 berkas, seluruhnya valid).
- Uji sintaks JavaScript (`node --check script.js`): lolos tanpa kendala.

---

## [2026-11-01 · sesi 10] Sprint 2A — Aksesibilitas, SEO, QA & Dokumentasi

### ♿ Aksesibilitas & Interaksi (T9–T10)
- **`index.html`**
  - Toggle tema: `type="button"`, `aria-pressed="false"`, `aria-label` dinamis ("Aktifkan mode gelap/terang")
  - Toggle menu: `type="button"`, `aria-expanded="false"`, `aria-controls="mobileMenu"`
  - `<nav>` mobile: `aria-label="Navigasi utama (mobile)"`
  - `<main id="main" tabindex="-1">` agar skip-link memindahkan fokus dengan benar
  - Back-to-top: `type="button"` + `aria-label`
- **`script.js`** ditulis ulang
  - Semua query memakai null-guard (tidak error bila elemen tidak ada)
  - `syncThemeToggle()` menjaga `aria-pressed` & `aria-label` tetap sinkron
  - Menu mobile tutup pada: klik tautan, `Escape` (fokus kembali ke tombol), klik di luar, dan resize ke desktop
  - Back-to-top di-throttle dengan `requestAnimationFrame`
  - `aria-current` disinkronkan dengan nav aktif
  - Scroll memakai `behavior: auto` bila `prefers-reduced-motion: reduce`

### 🖨️ Print Styles (T11)
- Blok `@media print` di `style.css`: header, skip-link, back-to-top, dan menu mobile disembunyikan; warna teks/latar dipaksa terang; `.reveal`/`.rise` dipaksa tampil; section & card diberi `break-inside: avoid`; lebar maksimum halaman diatur

### 🔍 SEO & Aset Sosial (T12–T15)
- **`tools/generate-social-assets.ps1`** — generator GDI+ (tanpa dependency tambahan) → `assets/og-image.png` (1200×630) & `assets/apple-touch-icon.png` (180×180)
- **`index.html` `<head>`**: `author`, `robots`, `og:locale`, `og:site_name`, `og:image` + `og:image:width/height/alt`, `twitter:card/site/title/description/image`/`image:alt`, `apple-touch-icon`, blok komentar untuk `canonical` & `og:url`
- **JSON-LD `Person`**: nama, jabatan, email, alamat, `alumniOf`, `knowsAbout`, `sameAs` (LinkedIn, GitHub)
- **`robots.txt`** — allow all + placeholder `Sitemap:` (dikomentari)
- **`.nojekyll`** — mencegah pemrosesan Jekyll di GitHub Pages

### 📄 Template Konten Siap Isi (T16)
- 6 blok komentar di `index.html`, tidak tampil di halaman: `FOTO PROFIL`, `KONTRIBUSI PRIBADI`, `SCREENSHOT PROYEK`, `TAUTAN DEMO & REPOSITORI`, `PROYEK TAMBAHAN`, `SERTIFIKAT & PELATIHAN`
- Komentar di awal file diganti catatan STATUS: daftar yang selesai + 6 data yang masih ditunggu
- Prinsip: tidak ada data palsu — template hanya diisi bila datanya benar tersedia

### ✅ QA Tooling (T17–T18)
- **`tools/check-site.py`** — 7 pemeriksaan statis: ID ganda, anchor internal tanpa target, file lokal hilang, meta wajib, JSON-LD valid, `alt` gambar, `rel="noopener"` pada `target="_blank"`
- Hasil: **7 ok, 0 error, 0 warning** (17 anchor valid, 10 meta lengkap, 4 rujukan file lokal tersedia)
- Smoke test: `python -m http.server` → `/`, `/style.css`, `/script.js`, `/favicon.svg`, `/assets/og-image.png`, `/assets/apple-touch-icon.png`, `/robots.txt` semua **HTTP 200**
- `node --check script.js` → lolos tanpa error sintaks

### 📚 Dokumentasi (T19)
- **`README.md` dibuat** — cara menjalankan, struktur proyek, daftar fitur, checklist personalisasi dengan kata kunci template, cara QA, cara regenerasi aset sosial, langkah deploy GitHub Pages, catatan teknis
- **`PLAN.md` diperbarui** — tambah Sesi 10, Sprint 2A selesai (T9–T19), Sprint 2B/3/4 diberi status, perbarui daftar fitur, catatan teknis, dan "Langkah Selanjutnya"
- **`CHANGELOG.md`** — entri ini

### ⏳ Belum Dikerjakan (menunggu data pemilik)
- **K1** Foto profil asli (`assets/profile-photo.jpg`) — template `FOTO PROFIL` tersedia
- **K2** Rincian kontribusi pribadi proyek CV Jayanti — template `KONTRIBUSI PRIBADI` tersedia
- **K3** Screenshot proyek 2–3 gambar — template `SCREENSHOT PROYEK` tersedia
- **K4** URL demo/repositori proyek — template `TAUTAN DEMO & REPOSITORI` tersedia
- **K5–K7** Proyek tambahan, sertifikat, pengalaman organisasi — template `PROYEK TAMBAHAN` & `SERTIFIKAT` tersedia
- **Q1–Q3** Uji manual tautan, responsif, dark mode & hasil print
- **D1–D4** `git init` → push GitHub → aktifkan Pages → cantumkan URL di CV/LinkedIn
- **`canonical` & `og:url`** — blok komentar siap, menunggu URL final

---

## [2026-11-01 · sesi 9] Sprint 1 — Perbaikan Teknis

### ✅ File Linking (T1–T3)
- **`style.css` di-link** ke `index.html` via `<link rel="stylesheet" href="style.css">`
  - Mengaktifkan: scroll reveal animations, back-to-top styling, custom scrollbar, print styles, accessibility focus rings, nav-active indicator, certificate card hover, skip-link, profile-photo class
- **`script.js` di-link** ke `index.html` via `<script src="script.js">`
  - Mengaktifkan: scroll reveal (IntersectionObserver), back-to-top button, active nav highlighting
- **`favicon.svg` di-link** ke `index.html` via `<link rel="icon" type="image/svg+xml" href="favicon.svg">`

### ✅ Duplikasi Dihapus (T4)
- Inline `<style>` block (16 baris) **dihapus** — semua style sudah ada di `style.css`
- Inline `<script>` block (28 baris) **dihapus** — semua fungsionalitas sudah ada di `script.js`
- Mengurangi ukuran `index.html` dari 501 baris → 471 baris

### ✅ Elemen Baru Ditambahkan (T5–T7)
- **Skip-link** `<a class="skip-link">` ditambahkan setelah `<body>` untuk aksesibilitas keyboard
- **Back to Top button** `<button id="backToTop">` ditambahkan sebelum `</body>`
- **Class `reveal`** ditambahkan ke 7 section: About, Approach, Skills, Projects, Career Direction, Education, Contact

### ✅ SEO & Social (T8)
- **Open Graph meta tags** ditambahkan:
  - `og:title` — judul untuk preview di LinkedIn/WhatsApp
  - `og:description` — deskripsi untuk preview
  - `og:type` — website

### 📄 Dokumentasi
- Dibuat `PLAN.md` — plan lengkap dengan riwayat dipulihkan dari 3 sesi sebelumnya
- Dibuat `CHANGELOG.md` — dokumen ini

---

## [2026-10-31] Personalisasi & Refaktor

> *Dikerjakan di sesi sebelumnya (dipulihkan dari history)*

- Portofolio di-refaktor dari template generik (`d:\markey`) menjadi versi personal
- Folder dipindahkan ke `Ahmad_Yasin_Pohan_Portfolio_Updated/`
- Inline styles dan scripts dipisahkan ke `style.css` dan `script.js`
- Dibuat `favicon.svg` (monogram AYP) dan `assets/profile-photo.svg` (placeholder)
- Kontak diisi: email, LinkedIn, GitHub, WhatsApp
- Bio, narasi diri, dan studi kasus CV Jayanti ditulis lengkap
- 4 pilar kompetensi dan 5 tahap metodologi dirancang

---

## [2026-10-30] Pembuatan Awal

> *Dikerjakan di sesi awal (dipulihkan dari history)*

- Dibuat template portofolio magang dari nol di `d:\markey`
- Dibuat `PANDUAN_PORTOFOLIO_MAGANG.md`
- Ditambahkan fitur Visual Edit Mode (edit tanpa koding)
- Template masih generik (placeholder teks)

