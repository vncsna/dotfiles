export EDITOR=nvim
export XDG_CONFIG_HOME=$HOME/.config

export AWS_VAULT_BACKEND=file

if [[ -z $DISPLAY && $TTY = /dev/tty1 ]]; then
  # enable wayland on firefox
  export MOZ_ENABLE_WAYLAND=1

  # set a uniform theme for Qt and GTK
  # wiki.archlinux.org/title/Uniform_look_for_Qt_and_GTK_applications#QGtkStyle
  export QT_QPA_PLATFORMTHEME=gtk2

  # set a prerequisite flag to enable WebRTC screen sharing
  # wiki.archlinux.org/title/PipeWire#WebRTC_screen_sharing
  export XDG_CURRENT_DESKTOP=sway

  # fix a bug on android studio
  # issuetracker.google.com/issues/36975466
  # wiki.archlinux.org/title/android#Android_Studio
  export _JAVA_AWT_WM_NONREPARENTING=1
  
  exec dbus-run-session sway
fi
