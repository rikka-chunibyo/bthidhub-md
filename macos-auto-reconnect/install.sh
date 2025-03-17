sudo rm -rf /Library/StartupScripts/bthidhub-reconnect.sh
sudo mkdir /Library/StartupScripts
sudo curl https://raw.githubusercontent.com/rikka-chunibyo/bthidhub/refs/heads/main/macos-auto-reconnect/bthidhub-reconnect.sh -o /Library/StartupScripts/bthidhub-reconnect.sh
sudo chmod +x "/Library/StartupScripts/bthidhub-reconnect.sh"
(sudo crontab -l 2>/dev/null; echo "@reboot /Library/StartupScripts/bthidhub-reconnect.sh") | sudo crontab -
sudo nohup /Library/StartupScripts/bthidhub-reconnect.sh &> /dev/null &
