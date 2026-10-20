# ❓ FAQ

Jawaban untuk galat dan kebingungan yang paling sering muncul.

## 📑 Daftar isi masih kosong

Ini **bukan galat** — dokumen baru dikompilasi satu kali. Kompilasi pertama
hanya mengumpulkan judul, kompilasi berikutnya menyusunnya.

```bash
pdflatex laporan.tex
pdflatex laporan.tex      # daftar isi baru terisi
```

Atau jalankan `./build.sh` yang sudah melakukan tiga kali kompilasi.

## 📚 Sitasi muncul sebagai tanda tanya `?`

Artinya kunci di `\citep{...}` tidak cocok dengan entri di `a9-pustaka.bib`,
atau tahap `bibtex` belum dijalankan. Perbaiki dengan:

```bash
bibtex laporan        # atau: bibtex proposal
pdflatex laporan.tex
pdflatex laporan.tex
```

Cek juga huruf besar-kecil kunci — `Gonzalez2018` dan `gonzalez2018` dianggap
berbeda.

## 🖼️ Tabel, gambar, atau rumus muncul sebagai `??`

Nomor tidak bisa ditemukan karena `\label` belum ada atau salah tulis. Pastikan:

1. Setiap `figure`, `table`, dan `equation` punya `\label{...}`
2. Penulisan `\cref{...}` sama persis dengan kuncinya
3. Dokumen dikompilasi dua kali

## 🗂️ Gambar tidak muncul / “file not found”

- Berkas gambar harus berada di folder **`gambar/`**
- Di LaTeX tulis nama berkas saja: `\includegraphics{arsitektur.png}`
  — **bukan** `{gambar/arsitektur.png}`
- Perhatikan ekstensi: `.png`, `.pdf`, `.jpg` sama dengan nama berkas sebenarnya
- Nama berkas jangan memakai spasi, huruf kapital campur, atau karakter khusus

## ⌨️ `Undefined control sequence`

Biasanya salah ketuk penamaan perintah. Yang paling sering:

| Perintah | Fungsi |
| --- | --- |
| `\cref` | merujuk gambar, tabel, rumus (huruf kecil semua) |
| `\citep` | sitasi di dalam kurung |
| `\citet` | sitasi menyebut nama penulis |
| `\lampiran` | membuat judul lampiran |
| `\halamankosong` | menyisipkan halaman kosong |

Kalau perintah yang benar tetap tidak dikenal, periksa ejaan tanda kurung
kurawal `{` dan `}`.

## 📄 Sampul jadi dua halaman

Template ini sudah mengatasinya dengan membungkus tiap blok sampul dalam
`\begin{spacing}{1}`. Kalau sampul Anda tetap meluber, penyebabnya teks judul
terlalu panjang — persingkat judul (sekitar 20 kata) di `a0-identitas.tex`.

## 🚫 `Overfull \hbox` di log kompilasi

Artinya ada baris yang sedikit lebih lebar dari margin. Umumnya hanya
pergeseran kecil dan tidak terlihat. Sudah ditekan seminimal mungkin dengan
pengaturan `tolerance` dan `emergencystretch` di `untouch/xx-preambles.tex`.

Sumber yang paling sering: URL atau nama berkas panjang. Solusinya:

```latex
\url{https://contoh-alamat-yang-sangat-panjang.sekali/ini}
```

atau pecah kata dengan tanda hubung pada tempat yang wajar.

## 🌐 Di Overleaf PDF-nya kosong atau gagal

1. Pastikan compiler **pdfLaTeX** — Menu → Settings → Compiler
2. Pastikan **Main document** diisi `proposal.tex` atau `laporan.tex`
3. Kalau project dibuat dari tombol Buka di Overleaf, berkasnya sudah lengkap;
   kalau gagal, unggah ulang ZIP repo ini
4. Tekan **Recompile** dua kali supaya daftar isi dan pustaka benar

## 🔤 `Package babel Error: Unknown option 'indonesian'`

LaTeX minimalis belum punya kamus bahasa Indonesia.

```bash
tlmgr --usermode install babel-indonesian
```

Di TeX Live/MacTeX lengkap dan di Overleaf, paket ini sudah tersedia.

## 🔤 Huruf Times tidak muncul

Template memakai paket `mathptmx` untuk meniru Times New Roman. Kalau hasilnya
tetap huruf *Computer Modern*:

```bash
tlmgr --usermode install mathptmx
```

## 🎨 Cara mengganti warna sampul

Satu baris di `a0-identitas.tex`:

```latex
\providecommand{\warnasampul}{000080}    % biru tua
```

Daftar kode warna per prodi ada di halaman
[Format Sesuai Pedoman](Format-Sesuai-Pedoman).

## 📎 Lampiran tidak muncul di DAFTAR LAMPIRAN

Judul lampiran harus dibuat dengan perintah `\lampiran{...}`, bukan `\chapter`
atau tulisan manual. Cek `a10-lampiran.tex`.

## ✍️ Judul bab tidak masuk daftar isi

Jangan memakai `\chapter*`. Pakai `\chapter{...}` biasa; template sudah
mengatur bentuk “BAB 1” dan judul kapital sendiri.

## 🗑️ Berkas kompilasi menumpuk

Aman dihapus kapan saja:

```bash
rm -f *.aux *.bbl *.blg *.lof *.log *.lot *.loa *.out *.toc
```

## 🤝 Masih bermasalah?

Buka **Issues** di repository
(https://github.com/vianziro/Template-Latex-Poliwangi/issues) dan ceritakan:
- dokumen apa (Proposal atau Laporan)
- pesan galat dari log kompilasi
- cara kompilasi (Overleaf / komputer / `build.sh`)
