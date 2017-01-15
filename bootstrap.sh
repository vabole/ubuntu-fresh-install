#!/usr/bin/env bash

#initial one-liner already got all updates
#sudo apt update && sudo apt upgrade

#install basics
sudo apt install -y vim htop httpie whois zsh chromium-browser 
sudo apt install -y zeal default-jre terminator 

#dropbox requires this to check downloaded binaries
sudo apt install -y python-gpgme 
#battery saving tools including thinkpad specific
sudo apt install -y tlp tlp-rdw tp-smapi-dkms acpi-call-dkms
#unity-tweak-tool nmap

#remove flash in case it was installed
sudo apt purge -y flashplugin-installer

#remove amazon integrations
sudo apt purge -y unity-webapps-common

# adding nodejs repo
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -

# adding yarn repo
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

#adding tor repo
sudo deb http://deb.torproject.org/torproject.org xenial main
sudo deb-src http://deb.torproject.org/torproject.org xenial main

#checking key for tor repo
gpg --keyserver keys.gnupg.net --recv A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -

sudo apt -y update && sudo apt-get install -y nodejs build-essential yarn
sudo apt install -y tor deb.torproject.org-keyring 
sudo apt install -y torbrowser-launcher

#cleanup
sudo apt autoremove -y

#start battery service
sudo tlp start



printf "\nChanging shell to zsh\n"
#chsh -s /usr/bin/zsh

echo "Install AirVPN, Sublime, VS Code and WebStorm manually"
echo "Opening Chrome"

# https://www.jetbrains.com/webstorm/download/download-thanks.html
# https://www.sublimetext.com/3
# https://code.visualstudio.com/docs/?dv=linux64_deb
# Airvpn:  https://eddie.website/download/?platform=linux&arch=x64&ui=ui&format=debian.deb&version=experimental
# https://www.dropbox.com/install-linux
