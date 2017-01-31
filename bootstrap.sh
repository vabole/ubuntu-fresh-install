#!/usr/bin/env bash

#initial one-liner already got all updates

#tools to use apt over https
sudo apt-get install apt-transport-https \
                       ca-certificates

#install add-apt
sudo apt-get install software-properties-common

#install basics cli
sudo apt install -y vim htop zsh xclip tree
#basics gui
sudo apt install -y zeal default-jre terminator diodon chromium-browser  

#networking tools
sudo apt install -y whois nmap zmap traceroute wget httpie

sudo apt install -y vagrant

#battery saving tools including thinkpad specific
sudo apt install -y tlp tlp-rdw tp-smapi-dkms acpi-call-dkms 

#docker dependencies
sudo apt-get install curl \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual

#remove flash in case it was installed
sudo apt purge -y flashplugin-installer

#remove amazon integrations
sudo apt purge -y unity-webapps-common

#add docker's GPG key
curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -

#add docker's repo 
sudo add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"

# adding nodejs repo
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -

# adding yarn repo
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

#adding tor repo with sources
sudo add-apt-repository -s 'deb http://deb.torproject.org/torproject.org xenial main' 

#checking key for tor repo
gpg --keyserver keys.gnupg.net --recv A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -

sudo apt -y update 
sudo apt-get install -y nodejs build-essential 
sudo apt install yarn
sudo apt install docker-engine
sudo apt install -y tor deb.torproject.org-keyring 
sudo apt install -y torbrowser-launcher

#cleanup
sudo apt autoremove -y

#start battery service
sudo tlp start

printf "\nChanging shell to zsh\n"
#chsh -s $(which zsh)

#TODO create index.html with usefull apps to install
#TODO fix unity-tweak-tool, it breaks now upon install of unity-webapps-common
echo "Install Sublime, VS Code and WebStorm manually"

# https://www.jetbrains.com/webstorm/download/download-thanks.html
# https://www.sublimetext.com/3
# https://code.visualstudio.com/docs/?dv=linux64_deb
# https://www.dropbox.com/install-linux
