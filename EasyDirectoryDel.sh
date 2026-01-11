#!/bin/bash

main() {
  clear
  echo "Welcome to easy directory delete, just punch in the location we'll 'ls' and you type the one you want to delete"

  echo "What do you wanna delete today?
    1) A directory
    2) A file within one
    3) Idfk, Just fucking around, I wanna leave
  "

  read -p "1 - 3: " CHOICE

  case $choice in
  1) directoryDEL ;;
  2) fileDEL ;;
  3) leave ;;
  esac
}

directoryDEL() {
    clear
    cd /
    echo "Please type a proper directory to cd. (e.g, /usr/bin, etc)"

    read -p  "Directory: " DIR

    cd $DIR

    clear
    ls

    read -p "Delete: " DELDIR
    rm -rf $DELDIR

    echo "DELETED"
    ls

    echo "Wanna do that again?
      y) Yes I do
      n) No return to menu
    " 
    read -p "Y or N: " YORN
    
    case $YORN in
      y) ReDelDIR ;;
      n) main ;;
    esac
    
}
