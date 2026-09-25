# Kali Linux di Termux:X11 - Setup Saya

Setup Kali Linux lengkap yang jalan di Android lewat Termux dan Termux:X11, sudah dilengkapi tool red team & blue team (Nmap, Wireshark, Metasploit, Burp, Suricata, dan lainnya).

## Download yang Dibutuhkan

- Termux: https://f-droid.org/en/packages/com.termux/
- Termux:X11: https://github.com/termux/termux-x11/releases

(Install dari F-Droid, bukan Play Store, karena versi Play Store sudah tidak didukung.)

## Cara Install dari Nol

Jalankan urutan berikut satu per satu di Termux, tunggu tiap perintah selesai baru lanjut ke baris berikutnya.

### 1. Install Termux dan Termux:X11
Download dan install kedua APK dari link di atas.

### 2. Update Termux dan install proot-distro

    pkg update && pkg upgrade -y
    pkg install proot-distro -y

### 3. Install Kali Linux

    proot-distro install kali

### 4. Masuk ke Kali dan install XFCE

    proot-distro login kali
    apt update && apt install -y xfce4 xfce4-terminal dbus-x11

### 5. Copy script peluncur
Download file start-kali.sh dari repo ini, taruh di folder home Termux, lalu:

    chmod +x start-kali.sh

### 6. Jalankan Kali

    ./start-kali.sh

Setelah itu buka aplikasi Termux:X11 (terpisah dari Termux) untuk melihat desktopnya muncul.

### 7. Terapkan tampilan yang sama (opsional)
Di dalam Kali, copy folder xfce4-config dari repo ini ke ~/.config/xfce4, dan folder Desktop ke ~/Desktop, supaya wallpaper dan ikon sama.

### 8. Install semua tool
Lihat daftar lengkap di daftar-tools.txt, atau install sekaligus dengan:

    sudo apt install -y nmap wireshark suricata lynis yara ettercap-graphical metasploit-framework sqlmap hydra john nikto gobuster tshark

## Isi Repo
- start-kali.sh - script peluncur XFCE
- xfce4-config/ - config tampilan
- Desktop/ - ikon-ikon custom
- daftar-tools.txt - daftar tool yang dipakai

## Catatan
Setup ini untuk keperluan belajar cybersecurity. Gunakan hanya pada sistem/jaringan milik sendiri atau yang sudah punya izin.
