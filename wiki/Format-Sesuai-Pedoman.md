# ✅ Format Sesuai Pedoman Mutu TA 2023

Setiap aturan pada **Bab 6** dan **Lampiran 1–12** Pedoman Mutu Tugas Akhir
Poliwangi 2023 diimplementasikan di `untouch/xx-preambles.tex` dan
berkas-berkas halaman awal. Artinya Anda tidak perlu mengatur format manual.

## Tabel aturan → pengaturan

| Aturan Pedoman | Cara mengatur di template ini | Acuan |
| --- | --- | --- |
| Kertas HVS A4 80 gram | `a4paper` | §6.1(1) |
| Margin kiri 3 cm, atas 2 cm, kanan 2 cm, bawah 2 cm | opsi `geometry` | Lampiran 1 |
| Times New Roman 12 pt, jarak 1,5 spasi | `mathptmx` + `setspace` | §6.1(2) |
| Baris pertama masuk 1,25 cm, before/after 0 | `\parindent` + `\parskip` | §6.1(3) |
| Nomor & judul tabel di **atas**, kiri, tebal, spasi 1 | `captionsetup[table]` | §6.1(4) |
| Sumber tabel di **bawah** tabel | ditulis manual di bawah tabel | §6.1(4) |
| Rumus mulai dari batas kiri, nomor di ujung kanan | opsi `fleqn` + `amsmath` | §6.1(5) |
| Nomor & judul gambar di **bawah**, tengah, tebal | `captionsetup[figure]` | §6.1(6) |
| Judul tabel & gambar *title case*, kecuali kata depan/sambung | ditulis langsung pada judul | §6.1(4)(6) |
| Warna sampul sesuai program studi | `\warnasampul` di `a0-identitas.tex` | Tabel 6.2 |
| Nomor halaman bawah tengah, romawi lalu arab | `pagenumbering` | §6.1 |
| Judul TA kapital 16, piramida terbalik | halaman judul | §6.1 |
| Lambang Poliwangi 4 × 4 cm | `\includegraphics[width=4cm]` | §6.1 |
| Abstrak maksimal 350 kata, 3–5 kata kunci | `a2-abstrak.tex` | §6.2 |
| Sitasi `(Nama, tahun)`, *dkk* untuk > 2 penulis | `natbib` + `apalike` | §6.1 |
| Daftar pustaka abjad, bentuk APA | `bibtex` dengan `apalike.bst` | §6.1 |

## Urutan halaman laporan

```text
sampul           → tidak diberi nomor
halaman judul    → dihitung sebagai halaman i
pembukaan (roman):
  persembahan, motto, pernyataan keaslian, lembar pengesahan,
  abstrak, abstract, kata pengantar, daftar isi, daftar tabel,
  daftar gambar, daftar notasi/simbol, daftar lampiran
isi (arab):
  Bab 1 Pendahuluan
  Bab 2 Tinjauan Pustaka
  Bab 3 Metode Penelitian
  Bab 4 Hasil dan Pembahasan
  Bab 5 Penutup
daftar pustaka
lampiran
```

## Urutan halaman proposal

```text
sampul           → tidak diberi nomor
halaman judul    → dihitung sebagai halaman i
lembar pengesahan proposal
abstrak
daftar isi
Bab 1 Pendahuluan
Bab 2 Tinjauan Pustaka
Bab 3 Metode Penelitian
daftar pustaka
lampiran
```

## Nomor tabel, gambar, rumus, dan lampiran

| Jenis | Bentuk nomor | Contoh |
| --- | --- | --- |
| Bab | `BAB 1` | BAB 1 PENDAHULUAN |
| Sub-bab | `1.1`, `1.2` | 3.1 Jenis Penelitian |
| Sub-sub-bab | `1.1.1` | 2.3.1 Definisi |
| Tabel | `bab.tabel` | Tabel 3.2 |
| Gambar | `bab.gambar` | Gambar 4.1 |
| Rumus | `bab.rumus`, rata kanan dalam kurung | (4.1) |
| Lampiran | huruf | Lampiran A, Lampiran B |
| Daftar kode | mengikuti nomor bab | Kode 4.1 |

Semua nomor terisi otomatis dan urut. Menambah tabel baru tidak akan
menggeser nomor tabel lain secara manual.

## Warna sampul per program studi

Warna diatur dari satu baris di `a0-identitas.tex`, berupa kode warna heksadesimal:

```latex
\providecommand{\warnasampul}{FFFF00}   % contoh: kuning (Teknik Informatika)
```

| Program studi | Warna sampul | Kode heksadesimal |
| --- | --- | --- |
| Teknik Informatika | kuning, tulisan hitam | `FFFF00` |
| Teknik Sipil | biru tua, tulisan emas | `000080` |
| Teknik Mesin | merah, tulisan emas | `FF0000` |
| Manajemen Bisnis Pariwisata | oranye | `FF7F00` |
| Agribisnis | hijau tua | `009F3C` |
| Teknologi Pengolahan Hasil Ternak | cokelat tua | `964B00` |
| Teknik Manufaktur Kapal | biru muda | `0080FF` |

Tabel lengkap beserta catatannya juga ada di README bagian
**🎨 Warna Sampul per Program Studi**.
