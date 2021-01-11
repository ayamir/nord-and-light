#!/bin/bash

sh ~/.fehbg

arr=("picom" "dwmblocks" "qv2ray" "xfce4-power-manager" "clipmenud" "redshift-gtk" "fcitx5" "nutstore" "dunst" "xdman")

for value in ${arr[@]}
do
    isExist=`ps -ef | grep "$value" | wc -l`
    if [ $isExist = 1 ] || [ $isExist = 0 ]
    then
        if [[ $value = "picom" ]]
        then
            exec `"$value" -b`
        else
            exec "$value" &
        fi
    fi
done
