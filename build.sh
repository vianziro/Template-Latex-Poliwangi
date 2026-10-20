#!/bin/sh
#==================================================================
# Script untuk membangun Proposal dan Laporan.
# Masing-masing dokumen punya folder sendiri-sendiri:
#
#   proposal/proposal.tex      -> proposal/Proposal.pdf
#   laporan/laporan.tex        -> laporan/Laporan.pdf
#
# Jalankan dengan:  ./build.sh
#==================================================================
set -eu
cd "$(dirname "$0")"

bangun() {
  FOLDER="$1"    # contoh: proposal
  MAIN="$2"      # contoh: proposal.tex
  NAMA="$3"      # contoh: Proposal
  JENIS="$4"     # Proposal atau Laporan

  echo "==> Membangun $FOLDER/$NAMA.pdf"

  ( cd "$FOLDER" && \
    pdflatex -interaction=nonstopmode -halt-on-error -jobname="$NAMA" \
             "\def\Jenis{$JENIS}\input{$MAIN}" \
             > "/tmp/$NAMA.1.log" 2>&1 ) \
  || { echo "   GAGAL pada kompilasi pertama. Lihat /tmp/$NAMA.1.log"; exit 1; }

  # Menyusun daftar pustaka dari a9-pustaka.bib milik folder tersebut
  ( cd "$FOLDER" && bibtex "$NAMA" > "/tmp/$NAMA.2.log" 2>&1 ) || \
    echo "   Perhatian: bibtex melaporkan masalah, lihat /tmp/$NAMA.2.log"

  # Dua kompilasi agar nomor halaman dan daftar isi sudah benar
  ( cd "$FOLDER" && \
    pdflatex -interaction=nonstopmode -jobname="$NAMA" \
             "\def\Jenis{$JENIS}\input{$MAIN}" \
             > "/tmp/$NAMA.3.log" 2>&1 ) \
  || { echo "   GAGAL pada kompilasi kedua. Lihat /tmp/$NAMA.3.log"; exit 1; }

  ( cd "$FOLDER" && \
    pdflatex -interaction=nonstopmode -jobname="$NAMA" \
             "\def\Jenis{$JENIS}\input{$MAIN}" \
             > "/tmp/$NAMA.4.log" 2>&1 ) \
  || { echo "   GAGAL pada kompilasi terakhir. Lihat /tmp/$NAMA.4.log"; exit 1; }

  echo "   Hasil ada di $FOLDER/$NAMA.pdf"
}

bangun laporan  laporan.tex  Laporan  Laporan
bangun proposal proposal.tex Proposal Proposal

echo
echo "Semua dokumen selesai dibuat."
