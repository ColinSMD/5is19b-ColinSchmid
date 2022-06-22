#!/bin/bash
cd ~
sudo apt --assume-yes install boinc-client

boinccmd --project https://www.climateprediction.net/ resume
