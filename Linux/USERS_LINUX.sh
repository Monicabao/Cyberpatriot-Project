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
USERS="$ADMINISTATORS $AUTHORIZEDUSERS"
echo "$USERS"

#changes insecure passwords + Make sure everyone has passwords
for val in $USERS; do
    echo "$val:itsgonnaworkthistimetrust!!" | sudo chpasswd
done
