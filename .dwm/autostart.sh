#!/bin/bash

sh ~/.fehbg

arr=("picom" "~/.dwm-bar/dwm_bar.sh" "xfce4-power-manager" "copyq" "fcitx5" "dunst" "xdman" "clipmenud" "qv2ray" "redshift")

for value in ${arr[@]}
do
    isExist=`ps aux | grep "$value" | wc -l`
    if [ $isExist = 1 ]
    then
        if [[ $value = "picom" ]]
        then
            exec `"$value" -b`
        else
            exec "$value" &
        fi
    fi
done
