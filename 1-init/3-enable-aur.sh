sudo pacman -S --needed base-devel --noconfirm
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si --noconfirm
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si --noconfirm
cd ..
rm -rf package-query
rm -rf yaourt
sudo yaourt -Sy --aur
