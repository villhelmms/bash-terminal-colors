#!/bin/bash

[[ $EUID -ne 0 ]] && echo "Please run this script with sudo!" && exit 1 #Ask for sudo

#=======Terminal Color Scheme=======

#Create backup of /etc/bash.bashrc
if [ -e /etc/bash.bashrc ] #Testing if /etc/bash.bashrc exists
    then
        cp /etc/bash.bashrc /etc/bash.bashrc.backup #Create backup of /etc/bash.bashrc (SUDO NEEDED)
        echo "Backed up /etc/bash.bashrc"
    else
        echo "ERROR: Failed to backup /etc/bash.bashrc"
fi

#Move bash.bashrc to /etc/bash.bashrc
if [ -e bash.bashrc ] #Testing if bash.bashrc exists
    then
        mv bash.bashrc /etc/bash.bashrc #Move bash.bashrc to /etc/bash.bashrc (SUDO NEEDED)
        echo "Moved bash.bashrc to /etc/bash.bashrc"
    else
        echo "ERROR: Failed to move bash.bashrc to /etc/bash.bashrc"
fi

#Move DIR_COLORS to /etc/
if [ -e DIR_COLORS ] #Testing if DIR_COLORS exists
    then
        mv DIR_COLORS /etc/ #Move DIR_COLORS to /etc/ (SUDO NEEDED)
        echo "Moved DIR_COLORS to /etc/"
    else
        echo "ERROR: Failed to move DIR_COLORS to /etc/"
fi

#Move mv .bashrc to /.bashrc
if [ -e .bashrc ] #Testing if DIR_COLORS exists
    then
        mv DIR_COLORS /etc/ #Move .bashrc to /.bashrc
        echo "Moved .bashrc to /.bashrc"
    else
        echo "ERROR: Failed to move .bashrc to /.bashrc"
fi

#=======Pacman Colorful Output=======

#Create backup of /etc/pacman.conf
if [ -e /etc/pacman.conf ] #Testing if /etc/pacman.conf exists
    then
        cp /etc/pacman.conf /etc/pacman.conf.backup #Create backup of /etc/pacman.conf
        echo "Backed up /etc/pacman.conf"
    else
        echo "ERROR: Failed to backup /etc/pacman.conf"
fi

#Uncomment a line in /etc/pacman.conf
if [ -e /etc/pacman.conf ] #Testing if /etc/pacman.conf exists
    then
        sed -i 's/#Color/Color/g' /etc/pacman.conf #Uncomment a line in /etc/pacman.conf
        echo "Uncommented a line in /etc/pacman.conf"
    else
        echo "ERROR: Failed to uncomment a line /etc/pacman.conf"
fi

#=======Syntax Highlighting in Nano=======

#Create backup of /etc/nanorc
if [ -e /etc/nanorc ] #Testing if /etc/nanorc exists
    then
        cp /etc/nanorc /etc/nanorc.backup #Create backup of /etc/nanorc (SUDO NEEDED)
        echo "Backed up /etc/nanorc"
    else
        echo "ERROR: Failed to backup /etc/nanorc"
fi

#Add line to /etc/nanorc
if [ -e /etc/nanorc ] #Testing if /etc/nanorc exists
    then
        echo include "/usr/share/nano/*.nanorc" >> /etc/nanorc #Add line to /etc/nanorc (SUDO NEEDED)
        echo "Added line to /etc/nanorc"
    else
        echo "ERROR: Failed to add line to /etc/nanorc"
fi