#!/usr/bin/env bash

#initial one-liner already got all updates
#sudo apt update && sudo apt upgrade

#install basics
sudo apt install vim htop httpie whois zsh 

#remove flash in case it was installed
sudo apt purge flashplugin-installer

sudo apt autoremove
