sudo sh -c 'cat <<EOF >/etc/X11/xorg.conf.d/50-vmmouse.conf
# RAT3 mouse
Section "InputClass"
 Identifier "Mouse Remap"
 MatchProduct "Madcatz Mad Catz R.A.T.3 Mouse"
 MatchDevicePath "/dev/input/event*"
 Option "ButtonMapping" "1 2 3 4 5 6 7 8 9 0 0 0 13 14 15 16 17 18"
EndSection
EOF'
