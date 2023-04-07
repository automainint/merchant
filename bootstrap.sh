sudo apt install -y nala

sudo nala install -y nodejs npm
npm install

# install web server
sudo nala install -y nginx certbot python3-certbot-nginx

# install electrum
sudo nala install -y python3-pyqt5 libsecp256k1-0 python3-cryptography python3-setuptools python3-pip nodejs npm nginx certbot python3-certbot-nginx
wget https://download.electrum.org/4.3.4/Electrum-4.3.4.tar.gz
wget https://download.electrum.org/4.3.4/Electrum-4.3.4.tar.gz.asc
gpg --verify Electrum-4.3.4.tar.gz.asc
if [ $? -ne 0 ]; then exit; fi
sudo -H pip3 install Electrum-4.3.4.tar.gz

# install monero
# TODO
