echo '[!] Updating...'
apt-get update > install.log
echo
echo '[!] Installing Dependencies...'
echo '    Python3'
apt-get -y install python &>> install.log
echo '    PHP'
apt-get -y install php &>> install.log
echo '    openssh'
apt-get -y install openssh &>> install.log
echo '    Requests'
pip3 install requests &>> install.log
echo
echo '[!] Setting Permissions...'
chmod 777 template/nearyou/php/info.txt
chmod 777 template/nearyou/php/result.txt
echo
am start -a android.intent.action.VIEW -d https://www.youtube.com/channel/UCLTkYtIJaFAopdiJ5ZqPQAw
echo '[!] Installed.'
