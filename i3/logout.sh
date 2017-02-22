#!/bin/bash

res=$(rofi -lines 4 -eh 2 -width 100 -padding 450 -opacity "85" -bw 0 -bc "#2f343f" -bg "#2f343f" -fg "#f3f4f5" -hlbg "#2f343f" -hlfg "#9575cd" -font "System San Francisco Display 18" -dmenu < ~/dotfiles/i3/dmenu-i3exit)

if [ $res = "lock" ]; then
  i3lock -i ~/Pictures/Wallpapers/everest.png
fi
if [ $res = "logout" ]; then
  i3-msg exit
fi
if [ $res = "restart" ]; then
  reboot
fi
if [ $res = "shutdown" ]; then
  poweroff
fi
exit 0
