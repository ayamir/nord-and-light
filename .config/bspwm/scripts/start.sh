#!/bin/bash

for line in `cat ~/.config/bspwm/flag`
do
    if [ $line == '0' ]
    then
        sxhkd &
        picom -b
        sh ~/.config/bspwm/bin/bspbar
        sh ~/.fehbg
        fcitx5 &
        xdman &
        dunst &
        xsetroot -cursor_name left_ptr
        wmname LG3D
        python3 /usr/bin/redshift-gtk &
        copyq &
        xfce4-power-manager &
        qv2ray &
        nutstore &

        echo "1" > $HOME/.config/bspwm/flag
    fi
done
