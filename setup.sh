#!/bin/bash

zshrc_file=~/.zshrc
vimrc_file=~/.vimrc
tmux_file=~/.tmux.conf
dircolors_file=~/.dircolors
indicator_file=~/.indicator-sysmonitor.json
if [ -f "$zshrc_file" ]; then
    rm -f $zshrc_file
    echo 'remove '$zshrc_file
fi
if [ -f "$vimrc_file" ]; then
    rm -f $vimrc_file
    echo 'remove '$vimrc_file
fi
if [ -f "$tmux_file" ]; then
    rm -f $tmux_file
    echo 'remove '$tmux_file
fi
if [ -f "$dircolors_file" ]; then
    rm -f $dircolors_file
    echo 'remove '$dircolors_file
fi
if [ -f "$inficator_file" ]; then
    rm -f "$inficator_file"
    echo 'remove '$inficator_file
fi

sudo apt-get install zsh

chsh -s /usr/bin/zsh

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

ln -s ~/myconfig/zshrc ~/.zshrc
ln -s ~/myconfig/vimrc ~/.vimrc
ln -s ~/myconfig/tmux.conf ~/.tmux.conf
ln -s ~/myconfig/third_party/dircolors-solarized/dircolors.ansi-light ~/.dircolors
ln -s ~/myconfig/indicator-sysmonitor.json ~/.indicator-sysmonitor.json
