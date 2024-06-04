set -ex

im_download_path=$(curl -sf https://download.imagemagick.org/archive/releases/ | grep -o "ImageMagick-$IM_VERSION-.[0-9]*.tar.xz" | tail -1)
curl -f "https://download.imagemagick.org/archive/releases/$im_download_path" > ImageMagick.tar.xz
tar xf ImageMagick.tar.xz
cd ImageMagick-*
./configure --prefix=/usr
sudo make install
