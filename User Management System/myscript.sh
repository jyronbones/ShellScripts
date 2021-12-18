#! /bin/bash

#name:Byron Jones
#student#:4908130
#course:CST8102
#Section 302, Lab 8, November 23rd, 2021

letter=m

#*************************************************************************************
#
#Purpose: To create a menu to display to users in order to choose from
#
#*************************************************************************************
function menu() {
        clear

        echo "A to Create a user account"
        echo "B to Change Initial Group for a user account"
        echo "C to Change Supplementary Group for a user account"
        echo "D to Change default login shell for a user account"
        echo "E to Change account expiration date for a user account"
        echo "F to Delete a user account"
        echo "Q to Quit"

}

#*************************************************************************************
#
#Purpose: Option A is to create a user, their home directory, and their initial shell
#
#*************************************************************************************

function opA() {
	read -p "Please enter a username: " username
	read -p "Please enter a home directory location, using the absolute path. " homedir
	read -p "Enter a login shell using the absolute path. " loginshell

	useradd -d $homedir -m -s $loginshell $username
	if [ $? != 0 ]
	then
		echo "There was an error with your user aguments, returning to the menu."
	else
	cat /etc/passwd | grep -E $username
	fi
	sleep 3

}

#*************************************************************************************
#
#Purpose: Option B is to change the initial group for a user
#
#*************************************************************************************

function opB() {
	read -p "Enter user you would like to change the initial group of: " username
	read -p "Enter groupname that will be used as the initial group for user: " groupname

	groupadd $groupname
	usermod -g $groupname $username ; sleep 3

}

#*************************************************************************************
#
#Purpose: Option C is to change the supplementary group for a user account
#
#*************************************************************************************

function opC() {
	read -p "Enter user you would like to change supplementary group: " username
	read -p "Enter groupname you would like to add the user to: " groupname

	groupadd $groupname
	usermod -G $groupname $username ; sleep 3

}

#*************************************************************************************
#
#Purpose: Option D is to change the default login shell for a user account
#
#*************************************************************************************

function opD() {
	read -p "Enter user you would like to change the default shell for: " username
	read -p "Enter default shell you would like to set for the user: " defaultshell

	usermod -s $defaultshell $username ; sleep 3

}
#*************************************************************************************
#
#Purpose: Option E is to change the account expiration date for a user account
#
#*************************************************************************************

function opE() {
	read -p "Enter user you would like to change expiration date for: " username
	read -p "Enter expiration date(YYYY-MM-DD): " expdate

	chage -E $expdate $username ; sleep 3

}

#*************************************************************************************
#
#Purpose: Option F is to delete a user account
#
#*************************************************************************************

function opF() {
	read -p "Enter user you would like to delete: " delusername

	userdel -r $delusername ; sleep 3

}

while [ $letter != "q" ] || [ $letter != "Q" ]
do
        menu
        echo ""
        read -p "Choose one of the following options, shown above, by entering the appropriate letter: " letter

        case $letter in
        a|A) opA;;
        b|B) opB;;
        c|C) opC;;
        d|D) opD;;
        e|E) opE;;
        f|F) opF;;
	q|Q) sleep 3 ; exit;;
       	  *) echo "Incorrect selection" ; sleep 3; menu;;
 esac

 done

