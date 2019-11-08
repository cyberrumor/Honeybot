read -p "press [Enter] to install openssh if you don't already have it, ctrl+d to quit"
if [[ $(pacman -Qqs openssh) == openssh ]]; then
  :
else
  pacman -S openssh
fi

read -p "press [Enter] to copy the IP sniffer and the payload to /usr/local/bin/ and make them executable, ctrl+d to quit"
cp -r usr /usr/
chmod +x /usr/local/bin/reversePayload.sh
chmod +x /usr/local/bin/teardrop.py


read -p "press [Enter] to copy sshd_config to /etc/ssh/sshd_config which will allow all connections and attack them, ctrl+d to quit"
cp -r etc /etc/

read -p "configure sshd.service to initiate changes, ctrl+d to leave it alone."
systemctl restart sshd.service 

echo "done"
