#!/bin/bash

## ls coloring stuff, possibly Mac OSX only?
## Common directories to move to ##
alias cdns='cd ~/repos/ns3'
alias cdwineserver="cd /srv/wine_app_project/server/; workon wine_app"
alias cdwine="cd /mnt/fast_data/wine_app_project/server/"
alias cdwinedjango="cdwineserver; cd wine_app_django"

## Common SSH'ed machines ##
alias coffeebot='ssh -Y kebenson@coffeebot'
alias sentinel='ssh -Y kebenson@sentinel'

## Memorable aliases to programs I found useful ###
alias pdfcat='pdfchain'

## Useful quick shortcuts ##
alias p='pushd'
alias o='popd'
alias op='gnome-open'
alias susp='sudo pm-suspend'
alias apt-search='sudo apt-cache search'
alias apt-install='sudo apt-get install -y'
alias ml='matlab -nodesktop -nosplash'

## Short scripts for various projects
alias sheevaprobe="modprobe ftdi_sio vendor=0x9e88 product=0x9e8f"
alias runwine="cdwineserver; cd wine_app_django; ./manage.py runserver 0.0.0.0:8000"

autoschemamigration() {
    cdwinedjango
    ./manage.py schemamigration $1 --auto
}
alias wineschema=autoschemamigration

########################################################################################
## Commands that are made as whole scripts, but only need to be created once,         ##
## and so we treat them as aliases.                                                   ##
########################################################################################

# Really helpful quick shortcut to non-GUI emacs for ALL users (esp root!)
if [ ! `which em` ]
then
command="echo '#! /bin/bash' > /usr/bin/em"
echo $command
sudo bash -c "$command"
command="echo 'emacs -nw"' $@'"' >> /usr/bin/em"
echo $command
sudo bash -c "$command"
sudo bash -c 'sudo chmod a+x /usr/bin/em'
fi

######### different ls commands  ###########

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
colorflag="--color"
else # OS X `ls`
colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -lF ${colorflag}"

# List all files colorized in long format, including dot files
alias ll="ls -laF ${colorflag}"

# List all files colorized in long format, including dot files
alias la="ls -A ${colorflag}"

# List only directories
alias lsd="ls -lF ${colorflag} | grep --color=never '^d'"

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# Enable aliases to be sudo’ed
alias sudo='sudo '
