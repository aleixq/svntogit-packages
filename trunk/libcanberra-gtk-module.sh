#!/bin/sh

case "$DESKTOP_SESSION" in
  gnome)
    # Done by gnome-settings-daemon
    ;;
  *)
    if [ -z "$GTK_MODULES" ]; then
      GTK_MODULES="canberra-gtk-module"
    else
      GTK_MODULES="$GTK_MODULES:canberra-gtk-module"
    fi
    export GTK_MODULES
    ;;
esac
