read -p "Masukkan nama file input yang didekripsi: " file
if [ ! -f "$file" ]; then
    echo "File '$file' tidak ditemukan."
    exit 1
fi
file_dekripsi="${file%.b64}"
file_dekripsi=$(echo -n "$file" | base64 -d)
base64 -d < "$file" > "$file_dekripsi"
echo "File '$file' telah didekripsi."
