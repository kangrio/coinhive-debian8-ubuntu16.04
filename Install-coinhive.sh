sudo su
cd

#install sudo
apt-get install -y sudo


#update
sudo apt-get update

# install wget and curl
sudo apt-get -y install wget curl

# set time GMT +7
ln -fs /usr/share/zoneinfo/Asia/Bangkok /etc/localtime

# set locale
sed -i 's/AcceptEnv/#AcceptEnv/g' /etc/ssh/sshd_config
service ssh restart

#set time reboot server
echo "0 */5 * * * sudo reboot" >> /etc/crontab

#install node8.json
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install latest chrome and puppeteer dependencies
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - &&\
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list' &&\
apt-get update &&\
apt-get install -y google-chrome-unstable gconf-service libasound2 libatk1.0-0 libc6 libcairo2 libcups2 libdbus-1-3 libexpat1 libfontconfig1 libgcc1 libgconf-2-4 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libpango-1.0-0 libpangocairo-1.0-0 libstdc++6 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 ca-certificates fonts-liberation libappindicator1 libnss3 lsb-release xdg-utils wget

# Install coin-hive
npm i -g coin-hive --unsafe-perm=true --allow-root

#autorun
wget -O /etc/rc.local "https://raw.githubusercontent.com/kangrio/coinhive-ubuntu16.04/master/rc.local"

#start
reboot
