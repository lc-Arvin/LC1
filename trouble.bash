#!/bin/bash

#echo -n "Enter some text >" 
#read text
#echo "You entered: $text"
#
#if [ "$text" = "" ]; then
#	echo "Well, empty"
#else
#	echo "Seems full"
#fi
#
#read -t 3 lcmood
#if [ $lcmood ]; then
#	echo "not bad."
#else
#	echo "U don't wanna talk."
#fi
#
#number=0
#
#echo -n "Enter a number >"
#read number
#echo "Number is $number "
#if [ $((number % 2)) = 0 ]; then
#	echo "$number is even."
#else
#	echo "$number is odd."
#fi
#

#echo "Type in a digit>"
#read cha
#case $cha in
#	[a-z]|[A-Z] ) echo "A letter $cha"
#;;
#	[0-9] ) echo "A number $cha"
#;;
#	*) echo "Neither a letter or a number."
#esac

echo "Type in a number this time to count down >"
read down
until [ $down -le 0 ]; do
	echo "Number = $down"
	down=$(( down - 1 ))
done 

#selection=
#until [ "$selection" = "0" ]; do
#    echo ""
#    echo "PROGRAM MENU"
#    echo "1 - display free disk space"
#    echo "2 - display free memory"
#    echo ""
#    echo "0 - exit program"
#    echo ""
#    echo -n "Enter selection: "
#    read selection
#    echo ""
#    case $selection in
#        1 ) df ;;
#        2 ) free ;;
#        0 ) exit ;;
#        * ) echo "Please enter 1, 2, or 0"
#    esac
#done
#
#if [ $# -gt 0 ]; then
#    echo "Your command line contains $# arguments"
#else
#    echo "Your command line contains no arguments"
#fi
#
#echo "Positional Parameters, type in 4 parameters:"
#echo '$0 = ' $0
#echo '$1 = ' $1
#echo '$2 = ' $2
#
#echo "You start with $# positional parameters"
#
## Loop until all parameters are used up
#while [ "$1" != "" ]; do
#    case $1 in
#	-f | --file )    shift; echo "Parameter 1 equals $1";;
#	-h | --help )    echo "You want help?";;
#	* )	echo "Wrong input"; exit 1
#    esac
#    shift
#done
count=0
for i in $(cat ~/.bashrc); do
	echo $i
	count=$((count +1))
done
echo "Total $count"
