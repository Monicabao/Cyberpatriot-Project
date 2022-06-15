#Decide administrators
echo "Who are the users in administrators?";read ADMINISTRATORS
for val in $ADMINISTRATORS; do
    sudo usermod -aG sudo $val
done

echo "Who are the authorized users?";read AUTHORIZEDUSERS
for val in $AUTHORIZEDUSERS; do
    sudo gpasswd -d $val sudo
done

#Creates a "users" masterlist
USERS=""
for val in $ADMINISTRATORS 'ipsum' $AUTHORIZEDUSERS 'sit amet' 10
do
 USERS+="$val"
 echo "$USERS"
done

#changes insecure passwords
for val in $USERS; do
    sudo passwd $val (Imactuallycrackedatprogramming!1)
done