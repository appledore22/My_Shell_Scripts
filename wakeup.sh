#!/bin/sh
time="$(date +'%I:%M %p')"
t="$(date +'%H')"
echo "Made Changes"
echo "Made changes from cloud"
if [ $t -le 12 ]
then
    echo "\nGood Morning Sir\n"
    echo "It's $time"
fi

if [ $t -gt 12 -a $t -lt 17 ]
then
    echo "\nGood Afternoon Sir\n"
    echo "It's $time"
fi

if [ $t -ge 17 ]
then
    echo "Good Evening Sir"
    echo "It's $time"
fi

echo "\nWhat would you like to do :"
echo "a - Start Questasim"
echo "s - Open Google Chrome"
echo "d - Open Appledore"

  read INPUT_STRING
  case $INPUT_STRING in
	a)
		echo "Starting Questasim"
        /mnt/c/questasim_10.0b/win32/questasim.exe
		;;
	s)
		echo "Opening Chrome"
		/mnt/c/'Program Files (x86)'/Google/Chrome/Application/chrome
		;;
	d)
		cd /mnt/d/Appledore
        pwd
        ;;
    *)
		echo "Sorry, I don't understand"
		;;
  esac

    echo "See you around"


