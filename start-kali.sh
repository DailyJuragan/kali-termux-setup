#!/data/data/com.termux/files/usr/bin/bash
termux-wake-lock
pkill -9 -f termux.x11 2>/dev/null
pkill -9 pulseaudio 2>/dev/null
rm -f $PREFIX/tmp/.X11-unix/X0 $PREFIX/tmp/.X0-lock
pulseaudio --start --exit-idle-time=-1 --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1"
termux-x11 :0 -legacy-drawing &
sleep 3
am start --user 0 -n com.termux.x11/com.termux.x11.MainActivity
sleep 2
proot-distro login kali --user kali --shared-tmp -- bash -c "export DISPLAY=:0 PULSE_SERVER=127.0.0.1 TZ=Asia/Jakarta; dbus-launch --exit-with-session startxfce4"
