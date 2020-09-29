sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake libxcb-shape0-dev libxcb-xrm-dev
sudo cd tmp
git clone https://www.github.com/Airblader/i3 i3-gaps
sudo cd i3-gaps
sudo git checkout gaps && git pull
sudo autoreconf --force --install
sudo rm -rf build
sudo mkdir build
sudo cd build
sudo ../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
sudo make
sudo make install
