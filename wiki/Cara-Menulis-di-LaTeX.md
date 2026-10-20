# ✍️ Cara Menulis di LaTeX

Semua resep di halaman ini **sudah ada di dalam berkas bab** template ini.
Cukup ditiru, lalu ubah isinya. Cuplikan kode singkat ada di README; halaman ini
menjelaskan aturannya dan hal-hal yang paling sering keliru.

## 1. Judul bab dan sub-bab

```latex
\chapter{PENDAHULUAN}
\section{Latar Belakang}
\subsection{Studi Awal}
```

LaTeX menyusunnya sendiri menjadi:

```text
BAB 1
PENDAHULUAN
1.1 Latar Belakang
1.1.1 Studi Awal
```

> ⚠️ Jangan menambahkan perintah `\chapter*` untuk judul bab biasa. Tanda
> bintang membuat bab **tidak** masuk daftar isi dan tidak bernomor.

Bagian awal (ABSTRAK, KATA PENGANTAR, LEMBAR PENGESAHAN, DAFTAR ISI, dan
seterusnya) sudah ditangani template, jadi jangan ditulis sendiri di berkas bab.

## 2. Menyebut gambar, tabel, dan rumus — selalu pakai `\cref`

```latex
Gambar alir tahapan penelitian ditunjukkan pada \cref{fig:tahapan}.
Bandingkan hasilnya dengan \cref{tab:alatbahan}.
Rumus konversi warna dijelaskan pada \cref{eq:hsv}.
```

Hasil cetaknya otomatis: **“Gambar 3.1”**, **“Tabel 3.2”**, **“persamaan 4.1”**.
Karena nomor diambil otomatis, Anda tidak akan pernah salah nomor meski tabel
dipindah ke bab lain.

> ❌ Jangan menulis manual “seperti pada Gambar 2.1”. Kalau gambar dipindah,
> nomor yang diketik tangan jadi salah dan pembimbing akan mengoreksi.

Prefiks `label` yang dipakai template ini:

| Prefiks | Untuk |
| --- | --- |
| `fig:` | gambar |
| `tab:` | tabel |
| `eq:` | rumus |
| `lst:` | kode program |
| `chap:` | judul bab (kalau ingin merujuk satu bab) |

## 3. Memasukkan gambar

```latex
\begin{figure}[H]
  \centering
  \includegraphics[width=11cm]{nama-gambar.png}
  \caption{Bagan Arsitektur Sistem (Hasil Penelitian, 2024)}
  \label{fig:arsitektur}
\end{figure}
```

Aturan penting:

- Simpan berkas gambar di folder **`gambar/`**, lalu di LaTeX tulis nama
  berkasnya **saja** (`nama-gambar.png`), tanpa `gambar/`.
- Format yang direkomendasikan: **PNG** untuk tangkapan layar dan **PDF** untuk
  grafik vektor (tajam di semua ukuran kertas).
- Lebar jangan lebih dari 11 cm biar tidak melebihi margin.
- Nomor dan judul otomatis muncul **di bawah** gambar, rata tengah, tebal.
- Sumber gambar tulis di baris terakhir judul, di dalam kurung.
- Hindari nama berkas berspasi atau berhuruf besar/kapital campur — gunakan
  huruf kecil dan tanda hubung.

## 4. Membuat tabel

```latex
\begin{table}[H]
  \caption{Alat dan Bahan Penelitian}
  \label{tab:alatbahan}
  \begin{spacing}{1}
    \centering
    \begin{tabularx}{\textwidth}{|>{\centering\arraybackslash}p{0.9cm}|X|c|}
      \hline
      \rowcolor{blue!12}
      \textbf{No} & \textbf{Nama Alat/Bahan} & \textbf{Jumlah} \\
      \hline
      1 & Kamera digital 12 megapiksel & 1 unit \\
      \hline
    \end{tabularx}
  \end{spacing}
\end{table}
```

Aturan penting:

- Nomor dan judul otomatis muncul **di atas** tabel, rata kiri, tebal.
- Sumber tabel tulis manual di **bawah** tabel, biasanya spasi 1: `Sumber: Diolah, 2025`.
- `\begin{spacing}{1}` di dalam tabel supaya baris tidak mengembang karena
  spasi 1,5 dokumen.
- `[H]` (dari paket `float`) membuat tabel “diam” di tempat, sesuai kebiasaan
  penulisan Indonesia.
- Judul tabel pakai *title case*: kata depan dan kata sambung tetap kecil.

## 5. Menulis rumus

```latex
\begin{equation}
  y_j = \frac{1}{1 + e^{-\left(\sum_{i=1}^{n} w_{ij}x_i + b_j\right)}}
  \label{eq:sigmoid}
\end{equation}
```

Rumus otomatis mulai dari batas kiri margin dan nomornya `(2.1)` berada di
ujung kanan. Penjelasan setiap simbol sebaiknya ditulis di bawah rumus, selalu
dimulai dari batas kiri (tanpa indentasi).

## 6. Membuat diagram alir dan grafik

- **Diagram alir** → TikZ, contoh ada di `b3-bab3.tex`. Template sudah
  menyediakan gaya `mulai`, `proses`, `keputusan`, `kotak`, dan `panah`.
- **Grafik** → PGFPlots, contoh ada di `b4-bab4.tex` (grafik batang dan grafik
  penurunan galat).
- **Jadwal penelitian** → bentuk *bar chart* TikZ, contoh juga di `b3-bab3.tex`.

Grafik dibuat dengan kode, bukan gambar tempel, jadi angka dan warnanya bisa
langsung disesuaikan.

## 7. Memasukkan kode program

Kode yang panjang sebaiknya dipisah ke berkas `.py` di folder `kode/`, lalu
dipanggil:

```latex
\lstinputlisting[language=Python,
                 caption={Kode Program Pelatihan Model},
                 label={lst:pelatihan}]{kode/latih_model.py}
```

Nomor kode mengikuti nomor bab, misalnya **Kode 4.1**. Untuk cuplikan pendek,
pakai lingkungan `lstlisting` langsung di berkas bab.

## 8. Menulis sitasi

```latex
\citep{gonzalez2018}     % -> (Gonzalez & Woods, 2018)
\citet{prasetyo2021}     % -> Prasetyo (2021)
```

Aturan singkat:

- `\citep{...}` untuk sitasi di dalam kurung: `(Sudirman, 2010)`
- `\citet{...}` untuk menyebut nama penulis di awal kalimat
- Lebih dari dua penulis → **dkk.**, misal `(Estiasih dkk., 2015)`
- Dua penulis dipisah dengan **dan** (bukan “&”), misal `(Gonzalez dan Woods, 2018)`
- Sitasi diurutkan abjad jika lebih dari satu sumber
- Pastikan kunci BibTeX-nya sama dengan entri di `a9-pustaka.bib`

> 💡 Kalau sitasi muncul sebagai `?` di PDF, artinya kunci `\citep` tidak cocok
> dengan entri di `.bib`, atau `bibtex` belum dijalankan.

## 9. Menambah lampiran

```latex
\lampiran{Kode Program Pelatihan Jaringan Saraf Tiruan}
```

Setiap lampiran diberi judul dengan perintah `\lampiran{...}`. Lampiran otomatis
dinomori **A, B, C, …** dan langsung tercatat di **DAFTAR LAMPIRAN** — tidak
perlu mengisi daftar itu secara manual.

## 10. Daftar pustaka

Sumber referensi ditulis di `a9-pustaka.bib`:

```bibtex
@book{arif2012,
  author    = {Arif, S.},
  year      = {2012},
  title     = {Belajar Riset},
  publisher = {Pustaka Ilmu},
  address   = {Yogyakarta}
}
```

Sepuluh entri contoh tersedia dan bisa langsung dipakai. Jenis entri yang
dipakai: `@book`, `@article`, `@inproceedings`, `@phdthesis`, `@mastersthesis`,
`@techreport`, `@misc`, dan `@online`.

## 11. Kesalahan penulisan yang paling sering terjadi

| Salah | Benar |
| --- | --- |
| Menulis nomor tabel manual | Pakai `\label` + `\cref` |
| Nama berkas gambar ikut folder: `gambar/arsitektur.png` | `arsitektur.png` |
| Spasi tabel tidak diatur (baris menjorok lebar) | Bungkus dengan `\begin{spacing}{1}` |
| `\chapter*{BAB 1 PENDAHULUAN}` | `\chapter{PENDAHULUAN}` |
| Sitasi `(Gonzalez dan Woods, 2018)` ditulis tangan | `\citep{gonzalez2018}` |
| Lampiran ditulis manual “LAMPIRAN A” | `\lampiran{Judul}` |
| Hanya mengompilasi sekali, daftar isi kosong | Kompilasi sampai berada** (2–3 kali) |
