#!/usr/bin/env sh

# install neovim
sudo apt-get install -y neovim

# install powerline-fonts
git clone https://github.com/powerline/fonts.git powerline-fonts
sudo ./powerline-fonts/install.sh
