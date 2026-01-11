#!/bin/bash

main() {
clear
echo "Welcome to website source code reader, type a proper URL"

read -p "Type a URL: " WEBSITE

SOURCE= curl -Ls $WEBSITE

clear
echo "$SOURCE"

read -p "Done, press ENTER to continue: "
continue

}

continue() {
  clear
  echo "Would you like to do that again?"
  read -p "y or n: " CHOICE

  if [ "$CHOICE" = y ]; then
    echo "Restarting....
    main
  else
    echo "exiting..."
    echo "BYE, BY Jmoney46 and StarkMist111960"
    exit 
  
}
