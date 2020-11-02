
# Table of Contents

1.  [Nord and Customized-light themes](#org1e722a8)
    1.  [Shot](#orgc6a5330)
    2.  [Dependency](#org72a2739)
        1.  [Must](#orgc07c424)
        2.  [Optional](#org0c1d80f)
    3.  [Switch](#orgc1284e9)
    4.  [About Firefox](#org1f5a1f7)
        1.  [Prerequisites](#org63a70ca)
        2.  [Installation](#org46efab5)
    5.  [TODO](#orgec8c868)


<a id="org1e722a8"></a>

# Nord and Customized-light themes


<a id="orgc6a5330"></a>

## Shot

![img](./shot/dark.png)

![img](./shot/light.png)

![img](./shot/nord-firefox.png)

![img](./shot/light-firefox.png)


<a id="org72a2739"></a>

## Dependency


<a id="orgc07c424"></a>

### Must

-   feh
-   dunst
-   alacritty
-   rofi
-   zathura
-   nord and a customized light(called AWEL-Lumine) global GTK2/3 theme


<a id="org0c1d80f"></a>

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


<a id="orgc1284e9"></a>

## Switch

You can use the &rsquo;switch&rsquo; script to switch between the two themes.

In my case, I put it in \`~/.local/bin/\`

You can view more details in itself.


<a id="org1f5a1f7"></a>

## About Firefox


<a id="org63a70ca"></a>

### Prerequisites

-   Verify that the user stylesheets (userChrome) option is enabled:
    1.  Go to the address \`about:config\` in Firefox
    
    2.  Search for \`toolkit.legacyUserProfileCustomizations.stylesheets\`
    
    3.  Confirm the option is set to true

-   Make sure that you have the Default theme enabled
    1.  Go to the address about:addons
    
    2.  Enable the Default theme if not already enabled


<a id="org46efab5"></a>

### Installation

1.  You should find you user directory. In my case, it&rsquo;s \`~/.mozilla/firefox/3ccio4xn.default-nightly/\`

2.  Backup your old config if you have.

3.  cp chrome/ dir to your firefox user directory.

4.  for the web page&rsquo;s nord theme
    1.  add a addon called \`Midnight Lizard\`
    
    2.  add Nord theme to it&rsquo;s color schemes
    
    3.  apply Nord theme


<a id="orgec8c868"></a>

## TODO

-   [ ] Auto switch theme according to Time
-   [ ] Auto switch theme according to Backlight

