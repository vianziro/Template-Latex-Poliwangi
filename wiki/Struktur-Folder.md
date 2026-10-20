# 📁 Struktur Folder

Penjelasan setiap berkas. Berkas bernama `a*` adalah bagian awal, `b*` adalah
bab, dan `untouch/` berisi pengaturan format yang praktis tidak perlu disentuh.

```text
📦 Template-TA-Poliwangi
┣ 📜 README.md          ← dokumen utama repo ini
┣ 🖼️ banner.png         ← banner pembuka README
┣ ⚙️ build.sh           ← membangun Proposal & Laporan sekaligus
┣ 📄 contoh-Proposal.pdf
┣ 📄 contoh-Laporan.pdf
┣ 📁 wiki/              ← berisi halaman wiki (sudah Anda baca sekarang)
┃
┣ 📂 proposal/          ← FOLDER MANDIRI UNTUK PROPOSAL
┗ 📂 laporan/           ← FOLDER MANDIRI UNTUK LAPORAN
```

## Isi folder `proposal/`

| Berkas | Fungsi | Perlu diubah? |
| --- | --- | --- |
| `proposal.tex` | **Berkas utama.** Semua bagian dipanggil dari sini | Jarang |
| `a0-identitas.tex` | Judul, nama, NIM, pembimbing, penguji, pejabat, tanggal, warna sampul | ✅ **Wajib** |
| `a2-abstrak.tex` | Abstrak Bahasa Indonesia + kata kunci | ✅ |
| `b1-bab1.tex` | Bab 1 — Pendahuluan | ✅ |
| `b2-bab2.tex` | Bab 2 — Tinjauan Pustaka (contoh tabel perbandingan) | ✅ |
| `b3-bab3.tex` | Bab 3 — Metode Penelitian (contoh diagram alir dan jadwal) | ✅ |
| `a9-pustaka.bib` | Daftar pustaka (10 entri contoh) | ✅ |
| `a10-lampiran.tex` | Lampiran | ✅ |
| `gambar/` | Tempat menyimpan gambar; sudah ada `logo-poliwangi.png` | 📥 Simpan gambar di sini |
| `kode/` | Tempat menyimpan kode program; ada contoh `latih_model.py` | 📥 |
| `untouch/xx-preambles.tex` | **Pusat pengaturan format** — paket, margin, huruf, spasi, judul bab, tabel, gambar, rumus, sitasi | ❌ Jangan diubah |
| `untouch/xx-sampul.tex` | Susunan sampul | ❌ |
| `untouch/xx-halamanjudul.tex` | Susunan halaman judul | ❌ |
| `untouch/xx-pengesahan-proposal.tex` | Lembar pengesahan proposal | Isi sudah dari `a0` |
| `untouch/xx-daftar.tex` | DAFTAR ISI (sesuai pedoman, proposal hanya daftar isi) | ❌ |
| `untouch/xx-daftarpustaka.tex` | Judul + cara memanggil daftar pustaka | ❌ |

> 📘 Menurut Pedoman Mutu TA 2023 (Tabel 6.3), proposal **hanya** memuat daftar
> isi — tidak ada daftar tabel, daftar gambar, daftar simbol, maupun daftar
> lampiran. Itulah sebabnya `proposal/untouch/xx-daftar.tex` lebih pendek.

## Isi folder `laporan/`

| Berkas | Fungsi | Perlu diubah? |
| --- | --- | --- |
| `laporan.tex` | **Berkas utama.** Semua bagian dipanggil dari sini | Jarang |
| `a0-identitas.tex` | Judul, nama, NIM, pembimbing, penguji, pejabat, tanggal, warna sampul | ✅ **Wajib** |
| `a2-abstrak.tex` | Abstrak Bahasa Indonesia + kata kunci | ✅ |
| `a3-abstract.tex` | Abstract Bahasa Inggris + keywords | ✅ |
| `a4-pernyataan.tex` | Pernyataan keaslian tulisan | ✅ |
| `a5-persembahan.tex` | Halaman persembahan | ✅ |
| `a6-motto.tex` | Halaman motto | ✅ |
| `a7-katapengantar.tex` | Kata pengantar | ✅ |
| `a8-daftarsimbol.tex` | Daftar notasi dan simbol | ✅ |
| `b1-bab1.tex` | Bab 1 — Pendahuluan | ✅ |
| `b2-bab2.tex` | Bab 2 — Tinjauan Pustaka | ✅ |
| `b3-bab3.tex` | Bab 3 — Metode Penelitian | ✅ |
| `b4-bab4.tex` | Bab 4 — Hasil dan Pembahasan (grafik, tabel hasil, kode) | ✅ |
| `b5-bab5.tex` | Bab 5 — Penutup | ✅ |
| `a9-pustaka.bib` | Daftar pustaka (10 entri contoh) | ✅ |
| `a10-lampiran.tex` | Lampiran | ✅ |
| `gambar/` | Tempat menyimpan gambar; sudah ada `logo-poliwangi.png` | 📥 |
| `kode/` | Tempat menyimpan kode program; ada contoh `latih_model.py` | 📥 |
| `untouch/xx-preambles.tex` | Pusat pengaturan format | ❌ Jangan diubah |
| `untouch/xx-sampul.tex` | Susunan sampul | ❌ |
| `untouch/xx-halamanjudul.tex` | Susunan halaman judul | ❌ |
| `untouch/xx-pengesahan-laporan.tex` | Lembar pengesahan laporan | Isi dari `a0` |
| `untouch/xx-daftar.tex` | DAFTAR ISI + DAFTAR TABEL + DAFTAR GAMBAR | ❌ |
| `untouch/xx-daftarpustaka.tex` | Judul + cara memanggil daftar pustaka | ❌ |

## Berkas yang dihasilkan setelah kompilasi

Berkas berikut muncul setelah kompilasi dan **sudah diabaikan** oleh
`.gitignore`, jadi aman dihapus kapan saja:

```text
*.aux  *.bbl  *.blg  *.lof  *.log  *.lot  *.loa  *.out  *.toc
```

## Kenapa folder `untouch/`?

Semua pengaturan format pedoman dikumpulkan di sana supaya mahasiswa tidak
perlu mengutak-atik. Nama berkas diberi awalan `xx-` sebagai tanda
"jangan diubah". Kalau memang perlu mengubah format, ubah di
`untouch/xx-preambles.tex` dan perlakukan sebagai perubahan penting — jangan
tinggalkan perubahan itu tanpa memberitahu pembimbing.
