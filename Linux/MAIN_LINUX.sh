echo Enable Firewall
sudo ufw status
echo Remove Non-Work Related Files
find -name "*.mp3" -exec rm -rf {} \;
find -name "*.mp4" -exec rm -rf {} \;
echo Remove Services
sudo service --status-all
sudo apt remove --purge samba
sudo apt-get remove telnetd
Sudo apt remove --purge pure-ftpd
echo Remove Hacking Software
sudo apt remove --purge nmap
sudo apt remove --purge wireshark
sudo apt remove --purge netcat
echo Update System
sudo apt-get update
