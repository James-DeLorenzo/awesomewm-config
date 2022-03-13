#!/usr/bin/env bash
# see https://wiki.archlinux.org/title/Awesome#Autostart

function run {
    if ! pgrep -f $1 ;
    then
     $@&
    fi
}

run picom -b
run xrandr | grep ' connected' | awk '{ for (counter = 0; counter < NR; counter++) system("nitrogen --random --set-zoom-fill --head=" counter); }'
run light-locker
run 1password --silent
