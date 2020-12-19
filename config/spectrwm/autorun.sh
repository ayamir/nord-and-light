#!/bin/bash

sh ~/.fehbg
setxkbmap -option "ctrl:swapcaps"
xautolock -time 10 -locker '/usr/bin/betterlockscreen -l' -corners ---- -cornersize 30 &
