#!/bin/sh

# Stand lone tray
if [ -z "$(pgrep taffybar)" ] ; then
    kill $(pgrep taffybar); taffybar &
fi
# Power manager
if [ -z "$(pgrep xfce4-power-manager)" ] ; then
    xfce4-power-manager &
fi
# Redshift
if [ -z "$(pgrep redshift)" ] ; then
    redshift-gtk &
fi
# Autolock
# if [ -z "$(pgrep xautolock)" ] ; then
    # xautolock -time 1 -locker "if ! grep 'RUNNING' /proc/asound/card*/pcm*/sub*/status;then xscreensaver-command -lock; else echo 'Sound on'; fi"
# fi
# Wallpaper
if [ -z "$(pgrep nitrogen)" ] ; then
    nitrogen --restore &
fi
# Screensaver
if [ -z "$(pgrep xscreensaver)" ] ; then
    xscreensaver -no-splash &
fi
# Xcompozer
if [ -z "$(pgrep compton)" ] ; then
    compton -b &
fi
# Network Applet
if [ -z "$(pgrep nm-applet)" ] ; then
    nm-applet &
fi
# Google Drive
if [ -z "$(pgrep google-drive-ocamlfuse)" ] ; then
    google-drive-ocamlfuse Google/ &
fi