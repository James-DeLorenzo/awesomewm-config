#!/usr/bin/env bash
# see https://wiki.archlinux.org/title/Awesome#Autostart

function run {
	if ! pgrep -f $1 ;
	then
	 $@&
	fi
}

run picom -b
run nitrogen --random --set-zoom-fill
run light-locker
run 1password --silent
