sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
sudo apt install wget -y
sudo add-apt-repository ppa:deadsnakes/ppa -y
sudo apt-get install build-essential -y
sudo apt install python3.10-dev -y
sudo apt-get install python3-dev -y

wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz
tar -xzf ta-lib-0.4.0-src.tar.gz
cd ta-lib

wget 'http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD' -O './config.guess'
wget 'http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD' -O './config.sub'
./configure --prefix=/usr
make
sudo make install

sudo rm -rf ta-lib
sudo rm -rf ta-lib-0.4.0-src.tar.gz

pip install ta-lib

