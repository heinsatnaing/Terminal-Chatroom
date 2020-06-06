#!/bin/bash
echo "---------------------------------------Welcome----------------------------------------------"
echo "Do you want to create chatroom or Join to a chatroom or watch live to a chatroom?"
read decision
while true
do
	case $decision in
		"Create")
			id=$(echo $[$(date +%H%S%N) + $RANDOM ])
			touch $id
			touch password221b+$id
			echo "Your chat room id is $id"
			echo "Create password for your chatroom! If none, just enter!"
			read passwordhaha
			passwordforidhehe=$(echo "$passwordhaha" | openssl dgst -md5 | awk '{print $2}')
			echo $passwordforidhehe > password221b+$id
			touch text$id
			echo "How many hour do you want to do?"
			read houryt
			secsec=$[$houryt*3600]
			touch users$id
			touch end$id.sh
			echo sleep $secsec > end$id.sh
			chmod a+x end$id.sh
			echo "rm -rf users$id password221b+$id $id end$id.sh text$id" >> end$id.sh
			./end$id.sh &
			./creater_security.sh
		        echo "Add username!"
		        read admin
		        echo "admin is $admin" > users$id
       			echo "You successfully created chatting room!"
			while true
			do
			        read input
			        case $input in
			                "help") Help
        			        ;;
       				        "about") about
                			;;
		        	        "exit") exit
                			;;
            			       "users") users
                			;;
     				        *) echo "$admin :>> $input" >> text$id
        			esac
			done

			;;
		"Join")
			./security.sh
			;;
		"Live")
			./live_security.sh
			;;
		"Exit") exit
	esac
done


