#!/bin/bash

# prevent GRUB from hanging at GRUB screen after a previous boot fail
# see wine_app github new user's new user's new user's new user's new user's new user's new user's new user's new user's wiki for details
sudo sed -i s/GRUB_RECORDFAIL_TIMEOUT:--1/GRUB_RECORDFAIL_TIMEOUT:-2/g /etc/grub.d/00_header

# reduce GRUB screen waiting time from 5 seconds to 2 seconds
sudo sed -i s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=2/g /etc/grub.d/00_header

# save these changes to GRUB system
sudo update-grub

sudo apt-get update

# common utilities
sudo apt-get install -y source-highlight vim emacs build-essential cmake git

# python stuff
sudo apt-get install -y python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pip python-dev
