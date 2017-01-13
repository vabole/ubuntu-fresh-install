script to initialize a fresh ubuntu install

usage:
on fresh install do:

sudo apt update && sudo apt upgrade && sudo apt install git \
&& git clone https://github.com/vabole/ubuntu-fresh-install.git \
&& sudo ./ubuntu-fresh-install/bootstrap.sh
