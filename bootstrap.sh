sudo apt install -y nala

sudo nala install -y nodejs npm
npm install

# install web server
sudo nala install -y nginx certbot python3-certbot-nginx

# install electrum
sudo nala install -y python3-pyqt5 libsecp256k1-0 python3-cryptography python3-setuptools python3-pip nodejs npm nginx certbot python3-certbot-nginx
wget https://download.electrum.org/4.3.4/Electrum-4.3.4.tar.gz
wget https://download.electrum.org/4.3.4/Electrum-4.3.4.tar.gz.asc
gpg --keyserver keyserver.ubuntu.com --recv-keys 637DB1E23370F84AFF88CCE03152347D07DA627C 0EEDCFD5CAFB459067349B23CA9EEEC43DF911DC 6694D8DE7BE8EE5631BED9502BD5824B7F9470E6
gpg --verify Electrum-4.3.4.tar.gz.asc
if [ $? -ne 0 ]; then exit 1; fi
python3 pip install --user Electrum-4.3.4.tar.gz

# install monero
# TODO
