#! /bin/bash

Purple_B='\e[1;95m'
Cyan_B='\e[1;96m'
RESSET='\e[0m'

cyan() { echo -e "${Cyan_B}${1}${reset}" ; }
purple() { echo -e "${Purple_B}${1}${reset}" ; }

echo -e "\e[40m"

##welcoming sign##
interval=2
purple "$(figlet -k -l -f banner "Linux Final...")"
sleep $interval

## Count 1 to 50 ##
n=0
interval=0.35

while [ $n -le 50 ]; do
echo -e "\e[40m"
eval echo $n | cyan "$(figlet -S -c -k -f banner)"
((n++))
sleep $interval
done

##Ending Sign##
echo -e "\e[40m"
purple "$(figlet -k -c -f banner The End)"
echo -e "\e[0m"

interval=5
sleep $interval
clear

