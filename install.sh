echo "********************** Performing update ************************"
apt-get update
echo "******************* Installing XFCE4 environment *************"
apt-get install kali-defaults kali-root-login desktop-base xfce4 xfce4-places-plugin xfce4-goodies
apt-get install lightdm
dpkg-reconfigure lightdm
echo "********************** Installing VNC Server ************************"
echo "apt-get install tightvncserver"
echo "vncserver :1 -geometry 1280?800 -depth 16 -pixelformat rgb565"
echo "If VNC Server dont work use xrdp"
echo "VNC server setup done"

echo "********************** Installing XRDP Server ************************"
sudo apt install freerdp2-x11
echo "xfreerdp /f /u:USERNAME /p:PASSWD /v:IP[:PORT]"

mkdir /root/.config/
mkdir /root/.config/autostart 
echo "will be fixed after reboot"
echo " "
echo "******************* Installing Wifite*************"
apt-get install wifite 
echo " "
echo "****************Enabling autologin***************"

echo "mv /etc/lightdm/lightdm.conf  /etc/lightdm/lightdm.conf.bak"
echo "mv /etc/pam.d/lightdm-autologin  /etc/pam.d/lightdm-autologin.bak"
echo "cp lightdm.conf /etc/lightdm/lightdm.conf"
echo "cp lightdm-autologin /etc/pam.d/lightdm-autologin"

echo "setting up interafces file"

mv /etc/network/interfaces /etc/network/interfaces.bak
echo " "
echo "Your Current network configuration backed up as /etc/network/interfaces.bak file"
cp interfaces /etc/network/interfaces
echo "END of Script... Thanks for using it"
echo " "
echo "Please Subscribe: https://YouTube.com/PNPtutorials"

echo "Follow us on all Social Media Websites 
➤ GooglePlus ➤ https://www.plus.google.com/+PNPtutorials
➤ Twitter    ➤ https://www.twitter.com/PNPtutorials
➤ Instagram  ➤ https://www.instagram.com/PNPtutorialsOfficial
➤ Facebook   ➤ https://www.facebook.com/PNPtutorials
➤ Plz Donate ➤ https://www.paypal.me/PNPtutorials"
