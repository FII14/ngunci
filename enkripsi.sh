read -p "Masukkan nama file yang ingin dienkripsi: " file
if [ ! -f "$file" ]; then
    echo "File '$file' tidak ditemukan."
    exit 1
fi
file_enkripsi=$(echo "$file" | base64)
file_enkripsi="$file_enkripsi.b64"
base64 < "$file" > "$file_enkripsi"
echo "File '$file' telah dienkripsi."
