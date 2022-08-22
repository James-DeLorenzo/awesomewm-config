#!/usr/bin/env bash
# see https://wiki.archlinux.org/title/Awesome#Autostart

function run {
    if ! pgrep -f $1 ;
    then
     $@&
    fi
}

run picom -b
run xrandr | grep ' connected' | wc -l | awk '{ for (counter = 0; counter < $1; counter++) system("nitrogen --random --set-zoom-fill --head=" counter) }'
run light-locker --lock-on-suspend --lock-on-lid
run 1password --silent
run udiskie -ans -f thunar
run blueman-applet
