wget -nc https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-295990.png
xfconf-query --channel xfce4-desktop --property /backdrop/screen0/monitor0/workspace0/last-image --set $PWD/wallhaven-295990.png -n -t string
