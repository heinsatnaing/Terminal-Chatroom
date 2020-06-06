echo "Welcome from live chatroom!"
echo "Please enter correct room id or you will not get valid result!"
echo "Enter room id"
read id
echo "Welcome! Please type password."
read tmp_passwd
tmp_password=$(echo "$tmp_passwd" | openssl dgst -md5 | awk '{print $2}')
passwd3123a=$(cat password221b+$id)
if [ "$tmp_password" = "$passwd3123a" ]; then
	tail -f text$id
else
	echo "Invaild password or id! Please recheck!"
fi
