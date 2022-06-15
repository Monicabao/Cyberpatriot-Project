echo "Enable Firewall"
sudo ufw status
echo "Remove Non-Work Related Files"
sudo find -name "*.mp3" -type f -delete
sudo find -name "*.mp4" -type f -delete
sudo find /home -name '*.gif' -type f -delete
sudo find /home -name '*.png' -type f -delete
sudo find /home -name '*.jpg' -type f -delete
sudo find /home -name '*.jpeg' -type f -delete
echo "Remove Services"
sudo service --status-all
sudo apt remove --purge samba
sudo apt-get remove telnetd
sudo apt remove --purge pure-ftpd
echo "Remove Hacking Software"
sudo apt remove --purge nmap
sudo apt remove --purge wireshark
sudo apt remove --purge netcat
echo "Update System"
sudo apt-get update