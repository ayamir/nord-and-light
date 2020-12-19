# A simple file manager for Wofi



#### Features :

- Configurable : Set your own default applications.

- Extensible : You can create your own extensions for the menu.

- Shortcuts : Create shortcuts for whatever you want.

- Search for files in directory hierarchy (requires `fd`)*

##### How do I set this up?

1. Install `wofi` and `ttf-nerd-fonts-symbol` (for the icons)

2. `git clone https://gitlab.com/snakedye/wofer`

3. On sway, paste this `bindsym $mod+d exec ~/wofi/wofer.sh` in your config file

#### Basic shortcuts

- `:help` help

- `:h` show/hide hidden files

- `? or :` menu for directory

- `config ...` search shortcut for `~/.config`

- `!delete` delete current directory (doesn't force by default)

- `:m` manga extension 

- `?pattern` search for pattern in directory hierarchy*

#### Menu options

Menu options are stored in the `prompt` function under this format:

```bash
if [[ "$3" == "-r"  ]]; then # Options for directories
   blah..
   echo "icon option_name $1"
else # Options for files
   echo "icon option_name $2"
fi
```

Options for directories are under the else statement and entries for files below the if statement

Commands associated with menu options are stored in the `menu` function. To get a matching case you need to put the **first word** in `option_name`.

```bash
menu () {
    blah...
    blah...
    blah..
    case $(echo "$OPTIONS" | sed 's/ .*//') in
        option_name)
            command
            ;;
        ...
    esac    
```

##### Steps:

1. Add something along those line : `echo "icon  operation_name $1 or $2"` in `prompt`

2. Add a matching case in `menu` using the template shown.

#### Custom shortcuts

To create a shortcut for a directory use the following template inside the `shotcut` function:

```bash
fbiopen)
    command
    ;;
```

Path shortcut can be inserted blow  the `*)` case

```bash
elif [[ "$1" =~ ^shortcut ]]; then
    cd $(echo "$1" | sed "s|shortcut|/full/path/|")
```

It's also possible to link external scripts like the manga extentions.

#### Launcher

Within the case statement add:

```bash
filetype)
    command "$1"
    ;;
```

### TO-DOs

- [x] KDE Connect integration

- [x] GUI for copying and moving files/directories

- [ ] Compress to .. (I'll do it the day I'll need it)

- [ ] Package it on the AUR
