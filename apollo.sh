#!/bin/bash

clear

source <(curl -s https://raw.githubusercontent.com/alectramell/beacons/master/colors.sh)

clear

echo "█"
echo "▒"

clear

echo "             "
echo "  ${white} H E L L O ${reset}" | pv -qL 10
echo "             "
echo "   ${blue}▒${white}████████${reset} "
echo "    ${blue}▒${white}██${reset} ${blue}▒${white}██${reset}  "
echo "    ${blue}▒${white}██${reset} ${blue}▒${white}██${reset}  "
echo "    ${blue}▒${white}██${reset} ${blue}▒${white}██${reset}  "
echo "             "
echo "  ${white}A P O L L O${reset}" | pv -qL 10
echo "             "
echo "${white}..Press [ENTER]..${reset}"
echo "             "

read -s -n1

clear
