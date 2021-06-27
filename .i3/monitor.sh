#!/usr/bin/env bash
set -euxo pipefail

xrandr | grep "HDMI-1-0 connected" && xrandr --output HDMI-1-0 --auto --mode 1920x1080 --right-of eDP-1

# ----------------------------------------------------------
# NVIDIA sound driver has a problem on 27.06.2021 according to this discussion
# https://forum.manjaro.org/t/no-sound-over-hdmi-after-nvidia-driver-update/23729/14
#
# So on this file
# /etc/udev/rules.d/90-mhwd-prime-powermanagement.rules
#
# You need to comment this line
# ACTION=="add", SUBSYSTEM=="pci", ATTR{vendor}=="0x10de", ATTR{class}=="0x040300", ATTR{remove}="1"
