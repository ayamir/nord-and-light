
# Table of Contents

1.  [Nord and Customized-light themes](#orga92410c)
    1.  [Shot](#org6ecd7c5)
    2.  [Introduction](#introduction)
    3.  [Dependency](#org5114522)
        1.  [Must](#org8050841)
        2.  [Optional](#orge85932f)
    4.  [Usage](#org3d0cd34)
    5.  [StartPage](#startpage)
    6.  [About Firefox](#org56ea59c)
        1.  [Prerequisites](#orgb2ce2d0)
        2.  [Installation](#org5951695)
    7.  [TODO](#orgfec7e81)
    8.  [Credits](#credits)


<a id="orga92410c"></a>

# Nord and Light themes


<a id="org6ecd7c5"></a>

## Shot
Dynamic Switch With Dynamic Window Manager!

![img](./Pictures/shot/switch.gif)

### bspwm
![img](./Pictures/shot/bspwm.png)
### i3
![img](./Pictures/shot/i3.png)
### spectrwm
![img](./Pictures/shot/spectrwm.png)
### xmonad
![img](./Pictures/shot/xmonad.png)
### sway
![img](./Pictures/shot/sway.png)
### dwm
![img](./Pictures/shot/dwm.png)
### firefox
![img](./Pictures/shot/firefox.png)

<a id="introduction"></a>

## Introduction

This repo collects all of my private configurations about 6 tiling window managers and a lot of applications using Nord theme.

You can hack all of them to satisfy your taste.

***Feel free to give me pull request if your window manager is not here***

<a id="org5114522"></a>

## Dependency


<a id="org8050841"></a>

### Must

- xsettingsd: To switch global GTK theme during runtime.

- feh: To set wallpaper

- fish: As your default shell

- dunst: Notification daemon

- mako(wayland): Notification daemon

- alacritty/kitty: Terminal

  Alacritty support apply config file during runtime automatically.

  Kitty also support it but need argument `--single-instance` when start it.

  It's necessary to apply `kitty.conf`'s change by using kitty execute `kitty @ set-colors --all --configured ~/.config/kitty/kitty.conf`.

  If you use kitty be sure that  `.local/bin/kitty_reload_x`, `.local/bin/kitty_reload_w`, 

  are copied to corresponding directory.(The suffix called 'w' or 'x' represent 'wayland' or 'xorg'.)

- rofi/dmenu: Program launcher

- wofi(wayland): Program launcher

- zathura: PDF reader

-   Global GTK2/3 theme
    -   [Nordic](https://www.gnome-look.org/p/1267246/)
    
    -   [Orchis-light](https://www.gnome-look.org/p/1357889/)


<a id="orge85932f"></a>

### Optional

-   firefox
    -   Dark
        
        Costomized Nord theme follow Nord palette
    -   Light
        
        Costomized light theme follow Nord/Snow palette
    
-   vim
    -   Dark
        
        Nord vim theme and Nord airline theme
    -   Light
        
        One vim theme and silver airline theme
    
-   doom emacs
    -   Dark
        
        doom-nord theme
    -   Light
        
        doom-nord-light theme
    
-   vscode
    -   Dark
        
        Nord theme
    -   Light
        
        Atom one light theme
    
-   sublime
    
    - Dark
    
      Nord theme
    
    - Light
    
      OneHalfLight theme
    
- fcitx5

  - Dark

    Nord theme

  - Light

    Costomized light theme follow Nord/Snow palette

  


<a id="org3d0cd34"></a>

## Usage

Just copy config files what you need to corresponding directory follow this structure.

You can see all of `switch` details in it.

<a id="startpage"></a>

## StartPage

It's my custom theme from [Bento](https://github.com/MiguelRAvila/Bento)

So more details can be seen here.

<a id="org56ea59c"></a>

## About Firefox


<a id="orgb2ce2d0"></a>

### Prerequisites

-   Verify that the user stylesheets (userChrome) option is enabled:
    1.  Go to the address `about:config` in Firefox
    
    2.  Search for `toolkit.legacyUserProfileCustomizations.stylesheets`
    
    3.  Confirm the option is set to true

-   Make sure that you have the Default theme enabled
    1.  Go to the address `about:addons`
    
    2.  Enable the Default theme if not already enabled


<a id="org5951695"></a>

### Installation

1.  You should find you user directory. In my case, it's `~/.mozilla/firefox/3ccio4xn.default-nightly/`

2.  Backup your old config if you have.

3.  cp `chrome/` dir to your firefox user directory.

4.  for the web page's nord theme
    1.  add a addon called `Midnight Lizard`
    
    2.  add Nord theme to it's color schemes
    
    3.  apply Nord theme


<a id="orgfec7e81"></a>

## TODO

-   [X] Add Dwm support
-   [X] Restart Dwm&Spectrwm automatically

<a id="credits"></a>

## Credits

+ [Bento](https://github.com/MiguelRAvila/Bento) as my start page's template.
