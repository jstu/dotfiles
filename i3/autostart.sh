#!/bin/bash

## GNOME PolicyKit and Keyring
eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg) &

## Set root window colour

hsetroot -solid "#2E3436" &

alias reboot="systemctl reboot" &
alias poweroff="systemctl poweroff" &

## Start Thunar Daemon
thunar --daemon &

##nm-applet &

## Detect and configure touchpad. See 'man synclient' for more info.
#if egrep -iq 'touchpad' /proc/bus/input/devices; then
#    synclient VertEdgeScroll=1 &
#   synclient TapButton1=1 &
#fi


##nvidia
nvidia-settings -a InitialPixmapPlacement=2 -##a GlyphCache=1 &
nvidia-settings -a SyncToVBlank=0 &
#mouse
xset m 0 0 &
xinput set-prop 10 'Device Accel Profile' -1 &
xinput set-prop 10 'Device Accel Velocity Scaling' 1 &

## Set keyboard settings - 250 ms delay and 25 cps (characters per second) repeat rate.
## Adjust the values according to your preferances.
xset r rate 250 25 &

## Turn on/off system beep
xset b off &

## cb-fortune - have Waldorf say a little adage
#(sleep 120s && cb-fortune) &

##redshift
redshift -l 60.4:26.9 -t 5300:3100 -g 0.95 -b 0.9 -m randr &
