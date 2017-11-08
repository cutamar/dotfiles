wget -nc http://www.colorhexa.com/688894.png
xfconf-query --channel xfce4-desktop --property /backdrop/screen0/monitor1/workspace0/last-image --set $PWD/688894.png  -n -t string
