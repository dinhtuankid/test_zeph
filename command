screen -S dinhtuan
sudo apt update
sudo apt install ca-certificates
sudo apt update -y && sudo apt install curl -y && curl https://raw.githubusercontent.com/HighVoltage557/XmrigonAndroid/main/compile.sh | bash
cd && cd xmrig/build
./xmrig -o 	us-zephyr.miningocean.org:5332 -u ZEPHYR2mdUdNFbRWWNZGwy8VnFcyX8FzeZqY2xzybsDrCeoi3ewChSV8HMKne5Q9mQ3DvCDqPBREDHws32WK6DacTrwSDShNgMz29 -p bmw1 -a rx/0-k-t 10
