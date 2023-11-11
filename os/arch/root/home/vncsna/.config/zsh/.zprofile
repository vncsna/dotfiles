export EDITOR=nvim
export AWS_VAULT_BACKEND=file
export XDG_CONFIG_HOME=$HOME/.config


if [[ -z $DISPLAY && $TTY = /dev/tty1 ]]; then
  # set a uniform theme for Qt and GTK
  # wiki.archlinux.org/title/Uniform_look_for_Qt_and_GTK_applications
  export QT_QPA_PLATFORMTHEME=gtk2

  # set a prerequisite flag to enable WebRTC screen sharing
  # wiki.archlinux.org/title/PipeWire#WebRTC_screen_sharing
  export XDG_CURRENT_DESKTOP=sway
  
  exec dbus-run-session sway
fi
