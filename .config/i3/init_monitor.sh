#!/usr/bin/env bash
set -euxo pipefail

xrandr | grep "HDMI-1-0 connected" && xrandr --output HDMI-1-0 --auto --right-of eDP-1

exit