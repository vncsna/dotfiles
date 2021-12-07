export EDITOR=nvim
export XDG_CONFIG_HOME=$HOME/.config

if [[ -z $DISPLAY && $TTY = /dev/tty1 ]]; then
  export QT_QPA_PLATFORMTHEME=gtk2
  export MOZ_ENABLE_WAYLAND=1
  exec dbus-run-session sway
fi
