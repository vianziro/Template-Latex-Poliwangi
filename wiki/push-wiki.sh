#!/usr/bin/env bash
#==============================================================================
# push-wiki.sh — Memindahkan seluruh halaman dari folder wiki/ ke tab Wiki
#                 GitHub, sekali jalan.
#
# Kenapa perlu skrip ini?
#   GitHub baru membuat "repo git" untuk wiki SETELAH halaman pertama dibuat
#   lewat halaman web. Jadi ada satu langkah manual (sekali saja), lalu semua
#   halaman lain otomatis masuk lewat skrip ini.
#
# Cara pakai:
#   1. Buka https://github.com/vianziro/Template-Latex-Poliwangi/wiki
#   2. Klik tombol "Create the first page" (buat halaman apa saja, misal judul
#      "Home", lalu klik Save Page)
#   3. Jalankan skrip ini:   ./wiki/push-wiki.sh
#
# Skrip aman dijalankan berulang kali (tinggal menjalankan ulang setelah isi
# wiki diubah di folder wiki/).
#==============================================================================
set -euo pipefail

REPO_WIKI="https://github.com/vianziro/Template-Latex-Poliwangi.wiki.git"
WIKI_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

echo "==> Memeriksa koneksi ke repo wiki..."
if ! git ls-remote "$REPO_WIKI" >/dev/null 2>&1; then
  cat <<'PESAN'

GAGAL: repo wiki belum bisa diakses.

Penyebab paling umum: halaman pertama di wiki belum pernah dibuat lewat web.
Langkah sekali saja:

  1. Buka   https://github.com/vianziro/Template-Latex-Poliwangi/wiki
  2. Klik  "Create the first page"
  3. Isi judul apa saja (misal: Home), lalu klik Save Page
  4. Jalankan skrip ini lagi

PESAN
  exit 1
fi

echo "==> Menyalin isi folder wiki/ (repo wiki)..."
git clone --quiet "$REPO_WIKI" "$TMP_DIR/wiki"
# hapus berkas lama supaya halaman yang dihapus dari folder juga ikut terhapus
find "$TMP_DIR/wiki" -mindepth 1 -maxdepth 1 -name '*.md' -delete
cp "$WIKI_DIR"/*.md "$TMP_DIR/wiki/"

cd "$TMP_DIR/wiki"

git add -A
if git diff --cached --quiet; then
  echo "==> Tidak ada perubahan. Wiki sudah paling baru."
  exit 0
fi

git -c user.name="Template-Latex-Poliwangi" \
    -c user.email="noreply@github.com" \
    commit -q -m "Perbarui dokumentasi wiki dari folder wiki/"

echo "==> Mengirim ke GitHub..."
git push --quiet origin HEAD:master

cat <<'PESAN'

SELESAI. Semua halaman wiki sudah terkirim:
  Home, Mulai Cepat, Struktur Folder, Format Sesuai Pedoman,
  Cara Menulis di LaTeX, FAQ, plus Sidebar dan Footer.

Lihat hasilnya di:
  https://github.com/vianziro/Template-Latex-Poliwangi/wiki

CATATAN: halaman pertama yang Anda buat manual bisa dihapus dari daftar
halaman bila dinomori ganda — cukup buka halaman itu dan klik Delete.
