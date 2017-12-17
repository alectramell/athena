#!/bin/bash

clear

XTAG=$(date +%d%m)

clear

echo "           "
echo "ATHENA v1.0"
echo "           "
echo -n "USER: "
read XUSR
echo -n "XPIN: "
read XKEY
sleep 2.5

clear

if [ $XUSR == "apollo" ] && [ $XKEY == "$XTAG" ]
then
	bash <(curl -s https://raw.githubusercontent.com/alectramell/athena/master/apollo.sh)
	clear
	echo "..RENDERING DATA.." | pv -qL 5
	sleep 2.5
	clear
	echo "$(curl -s https://raw.githubusercontent.com/alectramell/athena/master/apollo.log)" | xxd -r -p
	read -s -n1
	clear

elif [ $XUSR == "APOLLO" ] && [ $XKEY == "$XTAG" ]
then
	bash <(curl -s https://raw.githubusercontent.com/alectramell/athena/master/apollo.sh)
	clear
	echo "..RENDERING DATA.." | pv -qL 5
	sleep 2.5
	clear
	echo "$(curl -s https://raw.githubusercontent.com/alectramell/athena/master/apollo.log)" | xxd -r -p
	read -s -n1
	clear
else
	echo "Im sorry, I dont recognize you.." | pv -qL 10
	sleep 0.5
fi
