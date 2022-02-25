#!/bin/bash

arr=( "copyq" "fcitx5" "xfce4-notifyd" "pulseaudio &" "mpd")

for value in ${arr[@]}; do
    if [[ ! $(pgrep ${value}) ]]; then
        exec "$value" &
    fi
done

if [[ ! $(pgrep xob) ]]; then
    exec "sxob"
fi
