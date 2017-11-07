git clone https://github.com/grassmunk/Chicago95.git
cd Chicago95
cp -rf Theme/Chicago95 ~/.themes/
cp -rf Icons/Chicago95 ~/.icons/
cp -rf Cursors ~/.icons/
mkdir -p ~/.fonts/truetype
cp -rf Fonts/vga_font ~/.fonts/truetype/
sudo fc-cache -f -v
cp -rf Extras/Chicago95.zsh-theme ~/.oh-my-zsh/themes/
cd ..
rm -rf Chicago95
