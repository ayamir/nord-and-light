#!/bin/bash

# Wofi file browser

TERM=alacritty
EXTENSIONS=~/wofer/extensions
FM="$TERM -e ranger"
SHOW_HIDDEN=false

lsi () {
  echo "   .. "
  if [[ "$1" != "" ]]; then
    echo "$1 here"
  fi
  all=''
  if $SHOW_HIDDEN; then
    all='-A'
  fi
  ls $all | while read entry; do
    if [ -d "$entry" ]; then
      case $entry in
        Document)
          echo "   $entry"
          ;;
        Pictures)
          echo "   $entry"
          ;;
        Videos)
          echo "辶   $entry"
          ;;
        Music)
          echo "   $entry"
          ;;
        *)
          echo "   $entry"
          ;;
      esac
    elif [[ $entry =~ \.(sh|c)$ ]]; then
      echo "   $entry"
    elif [[ $entry =~ \.(md|txt|log)$|rc$ ]]; then
      echo "   $entry"
    elif [[ $entry =~ \.(jpg|png|svg|webp)$ ]]; then
      echo "   $entry"
    elif [[ $entry =~ \.fish$ ]]; then
      echo "   $entry"
    elif [[ $entry =~ \.py$ ]]; then
      echo "   $entry"
    elif [[ $entry =~ \.js$ ]]; then
      echo "   $entry"
    elif [[ $entry =~ \.mp4|mkv$ ]]; then
      echo "辶   $entry"
    elif [[ $entry =~ \.(mp3|m4a)$ ]]; then
      echo "   $entry"
    elif [[ $entry =~ \.(pdf)$ ]]; then
      echo "   $entry"
    elif [[ $entry =~ \.(tar|zip) ]]; then
      echo "遲    $entry"
    else
      echo "   $entry"
    fi
  done
}

prompt () {
  if [[ "$1" == "" ]]; then
    1="$(echo $1 | sed 's|//|/|')"
    echo "   Open directory in $FM"
    echo "   Copy $(pwd)"
    echo "    Move $(pwd)"
    echo "   Delete $(pwd)"
  else
    echo "   Launch $1"
    case $( echo "$1" | sed 's/.*\.//' ) in
      png | jpeg | jpg | gif | mp4 | webp | svg)
        echo "   Upload $1 to imgur"
        ;;
      zip | tar.gz)
        echo "遲   Extract $1"
        ;;
    esac
    echo "   Edit $1 in $EDITOR"
    echo "   Send $1 with KDE Connect"
	  echo "  Execute $1"
    echo "   Copy $1"
    echo "   Move $1"
    echo "   Upload $1 to gofile.io"
    echo "   Rename $1"
    echo "   Delete $1"
  fi
}

menu () {
  OPTION=$( prompt "$1"\
  			| wofi -i -c ~/wofer/config -s ~/wofer/style.css | sed "s|^[^a-zA-Z0-9]*||" );
  LOC=""
  if [[ "$1" == "" ]]; then
    LOC=$(pwd)
    d="-r"
  else
    LOC="$1"
  fi
  case $(echo "$OPTION" | sed 's/ .*//') in
    Execute)
      ./$LOC
      exit
      ;;
    Edit)
      $TERM -e $EXTENSIONS/nvim "$LOC" &
      exit
      ;;
    Launch)
      launcher "$LOC"
      ;;
    Open)
      $FM "$LOC" &
      exit
      ;;
    Send)
      $EXTENSIONS/kdeconnect "$LOC"
      ;;
    Copy)
      DESTINATION=$( wofer "Copy" )
      cp $d "$LOC" "$DESTINATION" 
      ;;
    Move)
      DESTINATION=$( wofer "Move")
      mv "$LOC" "$DESTINATION" 
      cd "$DESTINATION"
      ;;
    Rename)
      mv "$LOC" "$( echo "  Enter the new name" | wofi -c ~/wofer/config -s ~/wofer/style.css )"
      ;;
    Upload)
      if [[ $OPTION =~ imgur ]]; then
        $EXTENSIONS/imgur "$LOC"
        notify-send 'Uploaded to imgur' $(wl-paste) -i "$(pwd)/$LOC"
      else
        fish -c "gofile $LOC"
      fi
      exit
      ;;
    Extract)
      DESTINATION=$( wofer "Extract" )
      if unzip -q "$LOC" -d "$DESTINATION" ; then
        :
      else
        tar xzf "$LOC" -C "$DESTINATION"
      fi
      ;;
    Delete)
      rm $d -f "$LOC"
      ;;
  esac
}

launcher () {
  case $( echo "$1" | sed 's/.*\.//' ) in
    jpg | jpeg | png | webp | svg | gif)
      imv "$1"
      ;;
    md)
      export PATH="$HOME/.cargo/bin:$PATH"
      $TERM -e nvim "$1" -c Illuminate &
      ;;
    mp4 | mkv)
      mpv "$1"
      ;;
    pdf)
      zathura -c ~/.config/zathura/ "$1"
      ;;
    *)
      xdg-open "$1"
      ;;
  esac
  exit
}

shortcuts () {
  case $1 in
    '?' | ':')
      menu ''
      ;;
    :help)
      xdg-open https://gitlab.com/snakedye/wofer
      exit
      ;;
    :h | :hidden)
      if $SHOW_HIDDEN; then
        SHOW_HIDDEN=false
      else
        SHOW_HIDDEN=true
      fi
      ;;
    !delete)
      rm -r "$(pwd)"
      ;;
    *)
      if [[ "$1" =~ ^~/ ]]; then
        cd $(echo "$1" | sed "s|~|$HOME|")
      elif [[ "$1" =~ ^config ]]; then
        cd $(echo "$1" | sed "s|config |$HOME/.config/|")
      elif [[ "$1" =~ ^[?] ]]; then
        query=$( echo $1 | sed 's/^[?]//' )
        finder=$( fd "$query" | wofi -i -c ~/wofer/config -s ~/wofer/style.css )
        if ! cd $finder; then
          menu "$finder"
        fi
      elif [[ "$1" =~ ^/ ]]; then
        cd $1
      elif [[ "$1" =~ ^\. ]]; then
        cd $1
      elif [[ "$1" == "" ]]; then
        exit
      else
        finder=$( fd "$1" | head -1 )
        if ! cd "$finder"; then
          menu "$finder"
        fi
      fi
      ;;
  esac
}

wofer () {
    while :
    do
    stdout=$( lsi "$1" | wofi -i -c ~/wofer/config -s ~/wofer/style.css )
    ENTRY=$( echo "$stdout" | grep -o " .*" | sed "s| *||" )
    if [ -f "$ENTRY" ]; then
      menu "$ENTRY"
    elif [ -d "$ENTRY" ]; then
      cd "$ENTRY"
    elif [[ "$stdout" =~ "$1 here" ]]; then
      echo $(pwd)
      break
    elif [[ $ENTRY =~ \.\. ]]; then
      cd ..
    else
      shortcuts "$stdout"
    fi
    done
}

wofer

