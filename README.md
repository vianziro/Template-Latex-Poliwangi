# 📘 Template Tugas Akhir Poliwangi (LaTeX)

Template untuk menulis **Proposal Tugas Akhir** dan **Laporan Tugas Akhir**
Politeknik Negeri Banyuwangi (Poliwangi) menggunakan LaTeX.

Format mengikuti **Pedoman Mutu Tugas Akhir Poliwangi 2023**, khususnya
Bab 6 dan Lampiran 1 sampai 12.

Proposal dan Laporan sudah **dipisahkan ke dua folder sendiri-sendiri**.
Masing-masing folder punya berkas utama, folder gambar, folder kode, dan
berkas referensi sendiri, sehingga bisa dipakai dan disalin terpisah
tanpa saling mengganggu.

---

## 📁 Isi Folder

```
Template-TA-Poliwangi
├── build.sh                     # membangun Proposal dan Laporan sekaligus
├── README.md
├── contoh-Proposal.pdf          # contoh hasil Proposal
├── contoh-Laporan.pdf           # contoh hasil Laporan
│
├── proposal/                    # 📁 folder mandiri untuk Proposal
│   ├── proposal.tex             #    BERKAS UTAMA — mulai dari sini
│   ├── a0-identitas.tex         #    nama, NIM, judul, pembimbing
│   ├── a2-abstrak.tex           #    abstrak Bahasa Indonesia
│   ├── a9-pustaka.bib           #    referensi milik Proposal
│   ├── a10-lampiran.tex         #    lampiran
│   ├── b1-bab1.tex              #    Bab 1 Pendahuluan
│   ├── b2-bab2.tex              #    Bab 2 Tinjauan Pustaka
│   ├── b3-bab3.tex              #    Bab 3 Metode Penelitian
│   ├── gambar/                  #    folder gambar milik Proposal
│   ├── kode/                    #    folder kode program
│   └── untouch/                 #    pengaturan format
│
└── laporan/                     # 📁 folder mandiri untuk Laporan
    ├── laporan.tex              #    BERKAS UTAMA — mulai dari sini
    ├── a0-identitas.tex
    ├── a2-abstrak.tex           #    abstrak Bahasa Indonesia
    ├── a3-abstract.tex          #    abstract Bahasa Inggris
    ├── a4-pernyataan.tex        #    pernyataan bukan plagiat
    ├── a5-persembahan.tex       #    halaman persembahan
    ├── a6-motto.tex             #    halaman motto
    ├── a7-katapengantar.tex     #    kata pengantar
    ├── a8-daftarsimbol.tex      #    daftar notasi dan simbol
    ├── a9-pustaka.bib           #    referensi milik Laporan
    ├── a10-lampiran.tex         #    lampiran
    ├── b1-bab1.tex .. b5-bab5.tex   # Bab 1 sampai Bab 5
    ├── gambar/                  #    folder gambar milik Laporan
    ├── kode/                    #    folder kode program
    └── untouch/                 #    pengaturan format
```

Tabel, gambar, dan rumus ditulis di dalam berkas bab tempat bahasan itu
berada. Caranya dijelaskan di bagian **Cara Tulis Hal yang Biasa Muncul**
di bawah.

---

## 🚀 Langkah 1 — Siapkan LaTeX

Anda butuh salah satu dari berikut.

| Cara | Keterangan |
| --- | --- |
| **Overleaf** | paling gampang, tinggal unggah folder `proposal/` atau `laporan/`. Tidak perlu instal apa pun. |
| **MikTeX (Windows)** | instal dari [miktex.org](https://miktex.org/download), centang *Always install missing packages*. |
| **MacTeX / TeX Live** | instal dari [tug.org/mactex](https://tug.org/mactex/). |

Paket LaTeX yang diperlukan sudah cukup umum: `mathptmx`, `setspace`,
`geometry`, `titlesec`, `tocloft`, `caption`, `subcaption`, `tabularx`,
`multirow`, `amsmath`, `enumitem`, `natbib`, `longtable`, `graphicx`,
`float`, `rotating`, `listings`, `xcolor`, `tikz`, `pgfplots`,
`hyperref`, `cleveref`, `ragged2e`, `indentfirst`.

> Di MiKTeX dan TeX Live versi baru, paket-paket di atas terpasang otomatis
> saat pertama kali dokumen dikompilasi.

---

## 🚀 Langkah 2 — Buka dan Jalankan

**Berkas utama:**

- Proposal → buka `proposal/proposal.tex`
- Laporan  → buka `laporan/laporan.tex`

**Di TeXstudio / VS Code (lokal):**

1. Buka berkas utama di atas.
2. Tekan **Build & View** (TeXstudio).
3. Ulangi **Build & View** sampai **dua kali** agar daftar isi dan daftar
   pustaka sudah benar.

**Di terminal (lokal), membangun kedua dokumen sekaligus:**

```bash
./build.sh
```

**Di Overleaf:** buat proyek baru, unggah isi folder `proposal/` atau
`laporan/`, set compiler `pdfLaTeX` dan bibliography `BibTeX`, lalu klik
**Recompile**.

---

## 🚀 Langkah 3 — Isi Identitas

Buka `a0-identitas.tex` di folder yang sedang Anda kerjakan, lalu ganti:

- judul dalam Bahasa Indonesia dan Inggris
- nama dan NIM
- nama pembimbing I dan II beserta NIDN/NIP
- nama penguji I dan II
- ketua jurusan dan ketua program studi
- hari, tanggal, dan tempat seminar atau sidang
- warna sampul sesuai program studi (Tabel 6.2 Pedoman)

> Karena folder Proposal dan Laporan terpisah, identitas perlu diisi dua
> kali. Isi yang penting saja: nama, judul, NIM, pembimbing.

---

## 🚀 Langkah 4 — Tulis Isi

| Berkas | Keterangan |
| --- | --- |
| `a2-abstrak.tex` | ringkasan penelitian, maksimal 350 kata, 3 sampai 5 kata kunci |
| `a3-abstract.tex` | versi Bahasa Inggris (Laporan saja) |
| `a4-pernyataan.tex` | halaman pernyataan, tinggal tanda tangan materai |
| `a5-persembahan.tex` | halaman persembahan, boleh dihapus |
| `a6-motto.tex` | halaman motto, boleh dihapus |
| `a7-katapengantar.tex` | kata pengantar |
| `b1-bab1.tex` | Bab 1: latar belakang, rumusan masalah, tujuan, manfaat, batasan masalah |
| `b2-bab2.tex` | Bab 2: tinjauan pustaka |
| `b3-bab3.tex` | Bab 3: metode penelitian |
| `b4-bab4.tex` | Bab 4: hasil dan pembahasan (Laporan saja) |
| `b5-bab5.tex` | Bab 5: kesimpulan dan saran (Laporan saja) |
| `a9-pustaka.bib` | daftar pustaka |
| `a10-lampiran.tex` | lampiran |

> Untuk **Proposal**, isi `b1`, `b2`, dan `b3` saja.
>
> Setelah proposal disetujui, salin isi `b1`, `b2`, `b3`, abstrak, dan
> daftar pustaka dari folder `proposal/` ke folder `laporan/`, lalu
> lengkapi Bab 4 dan Bab 5.

---

## 📝 Referensi dan Sitasi

Semua referensi ditulis ke berkas `a9-pustaka.bib` di folder dokumen
tersebut. Contoh entri:

```bibtex
@article{sudirman2010,
  author  = {Sudirman, L. I.},
  title   = {Partial Purification of Antimicrobial Compounds},
  journal = {Hayati Journal of Biosciences},
  year    = {2010},
  volume  = {17},
  number  = {2},
  pages   = {63--67}
}
```

Menulis kutipan di dalam teks:

| Perintah | Hasil |
| --- | --- |
| `\citep{sudirman2010}` | (Sudirman, 2010) |
| `\citet{sudirman2010}` | Sudirman (2010) |
| `\citep{gonzalez2018, prasetyo2021}` | (Gonzalez dan Woods, 2018; Prasetyo dan Wulandari, 2021) |

Gaya sitasi mengikuti APA seperti yang diminta Pedoman.
Untuk membuat entri `.bib` dengan mudah, gunakan Mendeley, Zotero,
atau JabRef, lalu salin entri ke `a9-pustaka.bib`.

---

## ✍️ Cara Tulis Hal yang Biasa Muncul

Perhatikan berkas `b1` sampai `b5`, di dalamnya sudah ada contoh yang bisa
Anda tiru.

### Menyebut gambar dan tabel

```latex
Gambar alir ditunjukkan pada \cref{fig:tahapan}.
Bandingkan dengan \cref{tab:alatbahan}.
```

### Membuat gambar dari berkas

```latex
\begin{figure}[H]
  \centering
  \includegraphics[width=10cm]{nama-gambar.png}
  \caption{Bagan Arsitektur Sistem (Hasil Penelitian, 2024)}
  \label{fig:arsitektur}
\end{figure}
```

Simpan berkas gambar Anda di folder `gambar/`, lalu tulis namanya saja
tanpa `gambar/`.

### Membuat tabel

Nomor dan judul tabel berada **di atas** tabel, rata kiri, tebal.
Sumber ditulis di bagian bawah tabel.

```latex
\begin{table}[H]
  \caption{Alat dan Bahan Penelitian}
  \label{tab:alatbahan}
  \begin{spacing}{1}
    \centering
    \begin{tabularx}{\textwidth}{|c|X|c|}
      \hline
      \rowcolor{blue!12}
      \textbf{No} & \textbf{Nama} & \textbf{Jumlah} \\
      \hline
      1 & Kamera digital & 1 unit \\
      \hline
    \end{tabularx}
  \end{spacing}
\end{table}
```

### Membuat rumus

Nomor rumus mengikuti nomor bab dan berada di ujung kanan.

```latex
\begin{equation}
  y_j = \frac{1}{1 + e^{-(w_{ij}x_i + b_j)}}
  \label{eq:sigmoid}
\end{equation}
```

### Membuat kode program

Untuk kode yang panjang, lebih rapi dipisah ke berkas `.py` di folder
`kode/`.

```latex
\lstinputlisting[language=Python, caption={Judul Kode}]{kode/nama_kode.py}
```

---

## 🧩 Menu yang Sering Dihapus

- `a5-persembahan.tex` dan `a6-motto.tex` bisa dihapus bila tidak
  diperlukan. Hapus juga baris `\include{a5-persembahan}` dan
  `\include{a6-motto}` di berkas utama `laporan.tex`.
- `a8-daftarsimbol.tex` dapat dihapus bila tidak memakai simbol khusus.
- `a10-lampiran.tex` dapat dihapus bila tidak ada lampiran.

---

## 📮 Bantuan

Pertanyaan seputar Pedoman Mutu Tugas Akhir Poliwangi silakan menghubungi
Program Studi masing-masing.

---

## Lisensi

Template bebas digunakan dan disesuaikan.
