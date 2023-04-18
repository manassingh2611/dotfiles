#!/bin/sh

declare -a package_list=("build-essential", "python3", "pip3", "git")

if command -v apt >/dev/null; then
  sudo apt install --ignore-missing $package_list
else
  echo "apt is not the package manager, please make necessary changes to \
    dotfiles/new_pc.sh and try again"
  exit 1
fi

# Install vim
# cd ~
# git clone https://github.com/vim/vim.git --depth=1
# 
# read -e -p "Path to python3 executable (default=/usr/bin/python): " \
#   python_exec
# python_exec=${python_exec:-/usr/bin/python}
# 
# cd ~/vim
# ./configure \
#   --with-features=huge \
#   --enable-multibyte \
#   --enable-python3interp=yes \
#   --enable-pythoninterp=yes \
#   --enable-perlinterp=yes \
#   --enable-rubyinterp=yes \
#   --enable-luainterp=yes \
#   --enable-cscope \
#   --prefix="/usr/local" \
#   --with-python3-command=$python_exec
# 
# make -j4 VIMRUNTIMEDIR=/usr/local/share/vim/vim90
# sudo make install
# 
# rm -rf ~/vim

#install Vundle package manager for vim
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

python3 -m pip install pynvim
sudo apt install python3-neovim
sudo apt install nvim

# establish symbolic links
ln -sf $HOME/dotfiles/.vimrc $HOME/.vimrc

vim -S $HOME/.vimrc -c "PluginInstall"
