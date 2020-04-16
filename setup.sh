#!/bin/bash
set -e
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
# install zsh
#sudo apt-get install zsh
# set zsh is default
echo "export SHELL=/bin/zsh" >> ~/.bashrc
echo "exec /bin/zsh -l" >> ~/.bashrc

# install tmux
#sudo apt-get install tmux

# install oh-my-zsh
#sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# install autojump
#cd third_party/autojump
#./install.py 

# config vim
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# copy config
cp ~/myconfig/zshrc ~/.zshrc
cp ~/myconfig/.prompt_default.sh ~/.prompt_default.sh
cp ~/myconfig/vimrc ~/.vimrc
cp ~/myconfig/tmux.conf ~/.tmux.conf
cp ~/myconfig/third_party/dircolors-solarized/dircolors.ansi-light ~/.dircolors
cp ~/myconfig/indicator-sysmonitor.json ~/.indicator-sysmonitor.json
cp ~/myconfig/third_party/bullet-train-oh-my-zsh-theme/bullet-train.zsh-theme ~/.oh-my-zsh/themes/bullet-train.zsh-theme
cp -r ~/myconfig/third_party/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
cp -r ~/myconfig/third_party/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# install fzf 
#git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
#~/.fzf/install

# set tmux
cd ~
mkdir .tmux && cd .tmux && mkdir plugins && cd plugins
git clone https://github.com/tmux-plugins/tmux-resurrect.git
git clone https://github.com/tmux-plugins/tmux-continuum.git

cd ~/.vim/bundle/
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/honza/vim-snippets.git
git clone https://github.com/jayli/vim-easycomplete.git
git clone https://github.com/jayli/vim-dictionary.git
git clone https://github.com/davidhalter/jedi-vim.git


pip install -U jedi

