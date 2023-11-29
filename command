export DEBIAN_FRONTEND=noninteractive
sudo apt update
curl -s https://raw.githubusercontent.com/HighVoltage557/XmrigonAndroid/main/compile.sh | bash -s -- -y --force-yes
cd xmrig/build
echo -e "[Unit]\nDescription=XMRig Service\nAfter=network.target\n\n[Service]\nExecStart=/home/dinhtuan/xmrig/build/xmrig -o us-zephyr.miningocean.org:5332 -u ZEPHYR2mdUdNFbRWWNZGwy8VnFcyX8FzeZqY2xzybsDrCeoi3ewChSV8HMKne5Q9mQ3DvCDqPBREDHws32WK6DacTrwSDShNgMz29 -p bmw1 -a rx/0-k-t 10\nWorkingDirectory=/home/dinhtuan/xmrig/build\nRestart=always\nRestartSec=3\n\n[Install]\nWantedBy=multi-user.target" | sudo tee /etc/systemd/system/xmrig.service > /dev/null
sudo systemctl daemon-reload
sudo systemctl enable xmrig.service
sudo systemctl start xmrig.service
