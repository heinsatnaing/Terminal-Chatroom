#!/bin/bash
#function
users(){
	cat users$id
}
Help(){
	echo ""
	echo "	Type "exit" if u want to exit"
	echo "	Contact 09956106989 or koheinsat@gmail.com"
	echo ""
}

about(){
	echo
	echo "	Type "exit" if u want to exit"
	echo "	This is written by Hein Sat Naing."
	echo "	Contact = koheinsat@gmail.com"
	echo "	Thanks for using my program!!"
	echo
}



#main
id=$1
echo "Please enter correct room id or you will not get valid result!"
echo "Enter room id"
read id
echo "Welcome! Please type password."
read tmp_passwd
tmp_password=$(echo "$tmp_passwd" | openssl dgst -md5 | awk '{print $2}')
passwd3123a=$(cat password221b+$id)
if [ "$tmp_password" = "$passwd3123a" ]; then
        echo "Connected succed!"
	echo "Add username!"
	read user
	echo $user >> users$id
	echo "You successfully connected chatting room!"
	echo "You can use help , about ,users (to view users) and exit(to exit)."
else
        echo "Connection refused! Error code 201"
        exit 201
fi

while true
do
        read input
        case $input in
                "help") help
                ;;
                "about") about
		;;
		"exit") exit
		;;
		"users") users
		;;
		*) echo "$user :>> $input" >> text$id
        esac
done

