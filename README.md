
# Table of Contents

1.  [Nord and Customized-light themes](#org6587a46)
    1.  [Shot](#org75a64eb)
    2.  [Dependency](#org1e764a1)
        1.  [Must](#org5bae1f8)
        2.  [Optional](#org96830fb)
    3.  [Switch](#orgdafca48)
    4.  [About Firefox](#org1b766d3)
        1.  [Prerequisites](#org2c08fcf)
        2.  [Installation](#org2d8d7dc)
    5.  [TODO](#org42d17d8)


<a id="org6587a46"></a>

# Nord and Customized-light themes


<a id="org75a64eb"></a>

## Shot

![img](./Pictures/shot/dark.png)

![img](./Pictures/shot/light.png)

![img](./Pictures/shot/nord-firefox.png)

![img](./Pictures/shot/light-firefox.png)


<a id="org1e764a1"></a>

## Dependency


<a id="org5bae1f8"></a>

### Must

-   feh
-   dunst
-   alacritty
-   rofi
-   zathura
-   nord and a customized light(called AWEL-Lumine) global GTK2/3 theme


<a id="org96830fb"></a>

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
    -   Dark
        
        Nord theme
    -   Light
        
        OneHalfLight theme


<a id="orgdafca48"></a>

## Switch

You can use the &rsquo;switch&rsquo; script to switch between the two themes.

In my case, I put it in \`~/.local/bin/\`

You can view more details in itself.


<a id="org1b766d3"></a>

## About Firefox


<a id="org2c08fcf"></a>

### Prerequisites

-   Verify that the user stylesheets (userChrome) option is enabled:
    1.  Go to the address \`about:config\` in Firefox
    
    2.  Search for \`toolkit.legacyUserProfileCustomizations.stylesheets\`
    
    3.  Confirm the option is set to true

-   Make sure that you have the Default theme enabled
    1.  Go to the address about:addons
    
    2.  Enable the Default theme if not already enabled


<a id="org2d8d7dc"></a>

### Installation

1.  You should find you user directory. In my case, it&rsquo;s \`~/.mozilla/firefox/3ccio4xn.default-nightly/\`

2.  Backup your old config if you have.

3.  cp chrome/ dir to your firefox user directory.

4.  for the web page&rsquo;s nord theme
    1.  add a addon called \`Midnight Lizard\`
    
    2.  add Nord theme to it&rsquo;s color schemes
    
    3.  apply Nord theme


<a id="org42d17d8"></a>

## TODO

-   [ ] Auto switch theme according to Time
-   [ ] Auto switch theme according to Backlight

