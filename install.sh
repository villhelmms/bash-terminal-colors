#!/bin/bash

#Terminal Color Scheme
cp ~/.bashrc ~/.bashrc.backup

sudo mv bash.bashrc /etc/bash.bashrc

sudo mv DIR_COLORS /etc/

mv .bashrc /.bashrc

#Pacman Colorful Output
cp /etc/pacman.conf /etc/pacman.conf.backup

sed -i 's/#Color/Color/g' /etc/pacman.conf

#Syntax Highlighting in Nano
sudo cp /etc/nanorc /etc/nanorc.backup

sudo echo include "/usr/share/nano/*.nanorc" >> /etc/nanorc