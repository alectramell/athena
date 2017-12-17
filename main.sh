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

elif [ $XUSR == "APOLLO" ] && [ $XKEY == "$XTAG" ]
then
	bash <(curl -s https://raw.githubusercontent.com/alectramell/athena/master/apollo.sh)
else
	echo "Im sorry, I dont recognize you.." | pv -qL 10
	sleep 0.5
fi
