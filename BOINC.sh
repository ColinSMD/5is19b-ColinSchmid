#!/bin/bash
cd ~
sudo aptitude install boinc-client
wget https://raw.githubusercontent.com/ColinSMD/5is19b-ColinSchmid/main/boinc_7.4.22_x86_64-pc-linux-gnu.sh -O /opt/boinc_7.4.22_x86_64-pc-linux-gnu.sh
chmod +x boinc_7.4.22_x86_64-pc-linux-gnu.sh
sh boinc_7.4.22_x86_64-pc-linux-gnu.sh
