#!/bin/sh
echo "adding chrome ppa"
sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
echo \\n
echo "adding Firefox Develoer Edition ppa"
sudo add-apt-repository -y ppa:ubuntu-mozilla-daily/firefox-aurora
echo \\n
echo "adding docky ppa"
sudo add-apt-repository -y ppa:docky-core/stable
echo \\n
echo "adding Zeal ppa"
sudo add-apt-repository -y ppa:zeal-developers/ppa
echo \\n
echo "adding shadowsocks ppa"
sudo add-apt-repository -y ppa:hzwhuang/ss-qt5
echo \\n
echo "try install some tools"
sudo apt-get -qq update && apt-get -qq dist-upgrade
sudo apt-get install -qq -y qbittorrent wireshark shutter xmind smplayer texmaker gvim terminator dia

echo "install chrome"
sudo apt-get install -qq -y google-chrome-stable 
echo "install zeal"
sudo apt-get install -qq -y zeal
echo "install unity-tweak-tool"
sudo apt-get install -qq -y unity-tweak-tool
echo "install docky"
sudo apt-get install -qq -y docky
echo "install ss"
sudo apt-get install -qq -y shadowsocks-qt5


sudo apt-get -qq -y install git
git config --global user.name "monburan"
git config --global user.email "mengbulang@live.com"

cd ~/Download
echo `pwd`
echo "get some deb package"
wget -c http://s1.music.126.net/download/pc/netease-cloud-music_1.0.0_amd64_ubuntu16.04.deb
wget -c http://cdn2.ime.sogou.com/dl/index/1475147394/sogoupinyin_2.1.0.0082_amd64.deb\?st\=B6V37dCjYJQN6KL3D-FrgA\&e\=1487043687\&fn\=sogoupinyin_2.1.0.0082_amd64.deb -O sougoupinyin.deb
wget -c https://release.gitkraken.com/linux/gitkraken-amd64.deb
wget -c https://go.microsoft.com/fwlink/?LinkID=760868 -O vscode.deb

echo "get pip"
wget -c https://bootstrap.pypa.io/get-pip.py

echo "install deb"
dpkg -i install *.deb
echo "fix deb install"
sudo apt-get install -f

echo "install pip"
python get-pip.py

echo "install and configuration szsh"
sudo apt-get -qq -y install zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh
chsh -s /bin/zsh


