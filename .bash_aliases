#!/bin/bash

## VM aliases
alias cdlinux='cd ~/vagrant_boxes/ubuntu'
alias linux='cdlinux; vagrant up; vagrant ssh'
alias sshlinux='cdlinux; vagrant ssh'
alias cfpy='cf push -b https://github.com/joshuamckenty/heroku-buildpack-python '

## Common directories to move to ##
alias cdns='cd ~/repos/ns3'
alias cdwineserver="cd /srv/wine_app_project/server/; workon wine_app"
alias cdwine="cd /mnt/fast_data/wine_app_project/server/"
alias cdwinedjango="cdwineserver; cd wine_app_django"
alias cdproj='cd ~/repos/sdn_pubsub_mcast'

## Common SSH'ed machines ##
alias coffeebot='ssh -Y kebenson@coffeebot'
alias sentinel='ssh -Y kyle@sentinel'

## Memorable aliases to programs I found useful ###
alias pdfcat='pdfchain'

## Useful quick shortcuts ##
alias p='pushd'
alias o='popd'
alias op='open'
alias susp='sudo pm-suspend'
alias apt-search='sudo apt-cache search'
alias apt-install='sudo apt-get install -y'
alias ml='matlab -nodesktop -nosplash'
alias ipy='ipython'

## Short scripts for various projects
alias sheevaprobe="modprobe ftdi_sio vendor=0x9e88 product=0x9e8f"
alias runwine="cdwineserver; cd wine_app_django; ./manage.py runserver 0.0.0.0:8000"

autoschemamigration() {
    cdwinedjango
    ./manage.py schemamigration $1 --auto
}
alias wineschema=autoschemamigration
