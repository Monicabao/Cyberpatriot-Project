'#Decide administrators
echo "Who are the users in administrators?";read ADMINISTRATORS
for val in $ADMINISTRATORS; do
    sudo usermod -aG sudo $val
done

echo "Who are the authorized users?";read AUTHORIZEDUSERS
for val in $AUTHORIZEDUSERS; do
    sudo gpasswd -d $val sudo
done

#Delete unauthorizes users
USERS=""
for val in $ADMINISTRATORS 'ipsum' $AUTHORIZEDUSERS 'sit amet' 10
do
 USERS+="$val"
done'

#Add user function
add_users() {
read -p "Do you want to add users? (Y/n): " DECISION
while [ $DECISION == "y" ];
do 
  read -p "What's the name of user you would like to add: " name 
  sudo useradd $name
  sudo mkdir /home/$name 
  echo "User $name created"
  read -p "add users? (Y/n): " DECISION
done
}