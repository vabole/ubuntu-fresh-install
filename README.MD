script to initialize a fresh ubuntu install

Script was only tested on Ubuntu 16.04

usage:
on fresh install do:

```bash
sudo apt update -y && sudo apt upgrade -y && sudo apt install git -y\
&& git clone https://github.com/vabole/ubuntu-fresh-install.git \
&& sudo ./ubuntu-fresh-install/bootstrap.sh
```
