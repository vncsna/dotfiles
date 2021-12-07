#!/bin/bash -l
set -euxo pipefail

systemctl start bluetooth.service
systemctl enable bluetooth.service

bluetoothctl power on
# Mouse
bluetoothctl pair C2:83:69:9D:EC:41
# Keyboard
bluetoothctl pair F4:73:35:3E:A2:97
# Headphone
bluetoothctl pair 00:16:94:40:08:78
