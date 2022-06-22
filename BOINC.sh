#!/bin/bash
cd ~
sudo apt --assume-yes install boinc-client
sudo chmod +rwx /var/lib/boinc
sudo chmod +rwx /var/lib/boinc/gui_rpc_auth.cfg
