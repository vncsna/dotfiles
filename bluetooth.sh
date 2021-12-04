#!/bin/bash -l
set -euxo pipefail

systemctl enable --now bluetooth.service

bluetoothctl power on
bluetoothctl pair C2:83:69:9D:EC:41
bluetoothctl pair F4:73:35:3E:A2:97

cp ./etc/bluetooth/main.conf /etc/bluetooth/main.conf
