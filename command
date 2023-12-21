#!/bin/bash
screen -S dinhtuan
  
    mkdir -p team
    wget https://github.com/xmrig/xmrig/releases/download/v6.21.0/xmrig-6.21.0-linux-x64.tar.gz
    tar -xzvf xmrig-6.21.0-linux-x64.tar.gz -C team
    cd team/xmrig-6.21.0
    chmod +x xmrig
  sed -i 's/"1gb-pages": false/"1gb-pages": true/' config.json
  (grep -q "vm.nr_hugepages" /etc/sysctl.conf || (echo "vm.nr_hugepages=$((1168+$(nproc)))" | sudo tee -a /etc/sysctl.conf)) && sudo sysctl -w vm.nr_hugepages=$((1168+$(nproc))) && sudo ./xmrig -o us-zephyr.miningocean.org:5332 -u ZEPHs7jRR2ZfpQbehUMAfdH6DeBpqne2dbKriLvmb8zXTdgG7UMngmhGX47YinzGrieDfCuYywK3x6iTeLZMpYDyb53zguzpTPK -p abc2 -a rx/0 -k --donate-level 1 -t 16 --cpu-no-yield --randomx-1gb-pages
  
