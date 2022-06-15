#Decide administrators
echo "Who are the users in administrators?"
read ADMINISTRATORS
for val in $ADMINISTRATORS; do
    sudo gpasswd -a $val sudo
done

echo "Who are the authorized users?"
read AUTHORIZEDUSERS
for val in $AUTHORIZEDUSERS; do
    sudo gpasswd -d $val sudo
done

#Delete unauthorizes users
USERS=""
for val in $a 'ipsum' $b 'sit amet' 10
do
 USERS+="$val"
done
