#!/bin/bash

sh ~/.fehbg

arr=("picom" "dwmblocks" "qv2ray" "xfce4-power-manager" "copyq" "redshift-gtk" "fcitx5" "nutstore" "dunst" "xdman" "clipmenud")

for value in ${arr[@]}
do
    isExist=`ps -ef | grep "$value" | wc -l`
    if [ $isExist = 1 ] || [ $isExist = 0 ]
    then
        if [[ $value = "picom" ]]
        then
            exec `"$value" -b`
            exec `doas pacman -S archlinuxcn-keyring`
        else
            exec "$value" &
        fi
    fi
done
