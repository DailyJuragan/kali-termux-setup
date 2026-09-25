# Kali Linux di Termux:X11 - Setup Saya

Setup Kali Linux lengkap yang jalan di Android lewat Termux dan Termux:X11, sudah dilengkapi tool red team & blue team (Nmap, Wireshark, Metasploit, Burp, Suricata, dan lainnya).

## Download yang Dibutuhkan

- Termux: https://f-droid.org/en/packages/com.termux/
- Termux:X11: https://github.com/termux/termux-x11/releases

(Install dari F-Droid, bukan Play Store, karena versi Play Store sudah tidak didukung.)

## Cara Install dari Nol

### 1. Install Termux dan Termux:X11
Download dan install kedua APK di atas.

### 2. Buka Termux, install proot-distro
pkg update && pkg upgrade -y
pkg install proot-distro -y

### 3. Install Kali Linux
proot-distro install kali

### 4. Masuk ke Kali dan install XFCE
proot-distro login kali
apt update && apt install -y xfce4 xfce4-terminal dbus-x11

### 5. Copy script peluncur
Copy start-kali.sh dari repo ini ke folder home Termux, lalu:
chmod +x start-kali.sh

### 6. Jalankan
./start-kali.sh
Lalu buka aplikasi Termux:X11 untuk melihat desktopnya.

### 7. Terapkan tampilan yang sama (opsional)
Copy folder xfce4-config dari repo ini ke ~/.config/xfce4 di dalam Kali, dan folder Desktop ke ~/Desktop.

### 8. Install semua tool
Lihat daftar di daftar-tools.txt, atau install dengan:
sudo apt install -y nmap wireshark suricata lynis yara ettercap-graphical metasploit-framework sqlmap hydra john nikto gobuster tshark

## Isi Repo
- start-kali.sh - script peluncur XFCE
- xfce4-config/ - config tampilan
- Desktop/ - ikon-ikon custom
- daftar-tools.txt - daftar tool yang dipakai

## Catatan
Setup ini untuk keperluan belajar cybersecurity. Gunakan hanya pada sistem/jaringan milik sendiri atau yang sudah punya izin.
