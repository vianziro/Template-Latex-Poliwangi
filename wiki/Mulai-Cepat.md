# 🚀 Mulai Cepat

Halaman ini memandu dari nol sampai PDF jadi. Hana perlu lima langkah.

## Sebelum mulai — pilih tempat menulis

Ada dua cara. Pilih salah satu, lalu lanjut ke Langkah 1.

| Cara | Cocok untuk | Langkah |
| --- | --- | --- |
| ☁️ **Overleaf** (paling mudah, tidak perlu pasang apa pun) | Ingin langsung bisa dari browser | Buka https://www.overleaf.com/docs?snip_uri=https%3A%2F%2Fgithub.com%2Fvianziro%2FTemplate-Latex-Poliwangi%2Farchive%2Frefs%2Fheads%2Fmain.zip lalu login. Project langsung terbentuk. |
| 💻 **Komputer sendiri** | Sudah punya LaTeX, atau ingin kerja offline | Pasang TeX Live / MacTeX / MiKTeX, lalu unduh repo ini (`git clone` atau tombol **Code → Download ZIP**) |

## Langkah 1 — buka berkas utama

| Dokumen | Berkas utama |
| --- | --- |
| 📘 Proposal | `proposal/proposal.tex` |
| 📗 Laporan | `laporan/laporan.tex` |

Berkas inilah yang dikompilasi. Berkas lain semuanya dipanggil (`\input`) dari
sana, jadi jangan mengubah nama berkas.

## Langkah 2 — isi identitas

Buka `a0-identitas.tex` di folder dokumen yang sedang Anda kerjakan. Ganti:

- judul tugas akhir
- nama dan NIM
- program studi
- dosen pembimbing (dan pembimbing lapangan kalau ada)
- dosen penguji
- ketua jurusan, ketua program studi
- tanggal seminar / sidang
- warna sampul (`\warnasampul`) — lihat tabel warna per prodi di README

> 💡 Warna sampul berbeda-beda per program studi. Kalau belum yakin, tanyakan
> ke prodi atau salin warna dari sampul teman satu prodi.

## Langkah 3 — tulis isi bab

| Proposal | Laporan |
| --- | --- |
| `b1-bab1.tex` — Pendahuluan | `b1-bab1.tex` — Pendahuluan |
| `b2-bab2.tex` — Tinjauan Pustaka | `b2-bab2.tex` — Tinjauan Pustaka |
| `b3-bab3.tex` — Metode Penelitian | `b3-bab3.tex` — Metode Penelitian |
| — | `b4-bab4.tex` — Hasil dan Pembahasan |
| — | `b5-bab5.tex` — Penutup |

Hapus teks contoh, lalu tulis penelitian Anda sendiri. Contoh tabel, gambar,
rumus, diagram alir, dan kode di dalam berkas-berkas itu sengaja dibiarkan
sebagai acuan — cara pakainya dijelaskan di
[Cara Menulis di LaTeX](Cara-Menulis-di-LaTeX).

Bagian awal (abstrak, pernyataan, persembahan, motto, kata pengantar, daftar
simbol, lampiran) juga tinggal diisi:

- `a2-abstrak.tex` — abstrak Bahasa Indonesia + kata kunci
- `a3-abstract.tex` — abstract Bahasa Inggris (laporan saja)
- `a4-pernyataan.tex` — pernyataan keaslian (laporan saja)
- `a5-persembahan.tex` — halaman persembahan (laporan saja)
- `a6-motto.tex` — halaman motto (laporan saja)
- `a7-katapengantar.tex` — kata pengantar (laporan saja)
- `a8-daftarsimbol.tex` — daftar notasi dan simbol (laporan saja)
- `a10-lampiran.tex` — lampiran

## Langkah 4 — tambah referensi

Buka `a9-pustaka.bib`, salin salah satu contoh entri, lalu ubah isinya.
Kutip di teks dengan `\citep{kunciReferensi}`.

```bibtex
@book{arif2012,
  author  = {Arif, S.},
  year    = {2012},
  title   = {Belajar Riset},
  publisher = {Pustaka Ilmu},
  address = {Yogyakarta}
}
```

LaTeX akan otomatis membuat daftar pustaka dan sitasi bergaya APA. Sampai
sepuluh entri contoh sudah tersedia di dalam berkas tersebut.

## Langkah 5 — kompilasi

**Di Overleaf:** tekan **Recompile**.

**Di komputer (paling mudah):**

```bash
./build.sh
```

Sekali jalan, `build.sh` membuat `proposal/Proposal.pdf` dan
`laporan/Laporan.pdf` sekaligus.

**Manual:**

```bash
cd proposal
pdflatex proposal.tex     # tahap 1
bibtex   proposal         # menyusun daftar pustaka
pdflatex proposal.tex     # tahap 2
pdflatex proposal.tex     # tahap 3 — daftar isi jadi benar
```

**Di TeXstudio:** klik **Build & View** (atau `F5`) sampai **dua kali**.

> ⚠️ **Kenapa harus dua sampai tiga kali?**
> Kompilasi pertama mengumpulkan judul bab dan referensi, kompilasi berikutnya
> menyusunnya ke halaman yang benar. Daftar isi yang masih kosong berarti baru
> dikompilasi satu kali.

## ✅ Selesai — daftar periksa

- [ ] Nama, NIM, pembimbing, penguji sudah sesuai
- [ ] Warna sampul sesuai prodi
- [ ] Abstrak dan kata kunci terisi
- [ ] Semua bab berisi tulisan sendiri, bukan teks contoh
- [ ] Nomor tabel, gambar, dan rumus muncul (bukan `??`)
- [ ] Daftar isi terisi
- [ ] Daftar pustaka muncul, sitasi tidak berupa `?`
- [ ] Nomor halaman: bagian awal pakai angka Romawi, isi pakai angka Arab
