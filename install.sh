sudo apt update
sudo apt install -y build-essential

# install ly
sudo apt install -y libpam0g-dev libxcb-xkb-dev
git clone --recurse-submodules https://github.com/fairyglade/ly ~/.local/.desktop/ly
(cd ~/.local/.desktop/ly && sudo make clean install installsystemd)
sudo systemctl disable lightdm && sudo systemctl enable ly && test -f ./ly.config && sudo cp ./ly.config /etc/ly/config.ini

# install dwm
sudo apt install -y libx11-dev libxft-dev libxinerama-dev dmenu picom
cp -r ./dwm ~/.local/.desktop/dwm
(cd ~/.local/.desktop/dwm && sudo make clean install)

# install slstatus
cp -r ./slstatus ~/.local/.desktop/slstatus
(cd ~/.local/.desktop/slstatus && sudo make clean install)

# install wallpaper
sudo apt install -y xwallpaper
cp wallpaper.png ~/.local/.desktop/
sudo cp xwallpaper-dwm /usr/local/bin/ && sudo chmod +x /usr/local/bin/xwallpaper-dwm

# install st
git clone git://git.suckless.org/st ~/.local/.desktop/st
(cd ~/.local/.desktop/st && sudo make clean install)
