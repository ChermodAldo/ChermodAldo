add_vip() {
  local new_vip_id=$1
  VIP_FILE="/sdcard/AimV2.0/tes.sh"

  # Mengecek apakah ID sudah ada di daftar VIP
  if grep -q "^$new_vip_id$" "$VIP_FILE"; then
    echo "ID sudah ada di daftar VIP."
  else
    echo "$new_vip_id" >> "$VIP_FILE"
    echo "ID berhasil ditambahkan ke daftar VIP."
  fi
}

add_vip 2000