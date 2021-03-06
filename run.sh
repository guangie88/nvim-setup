#!/usr/bin/env sh
if ! command -v curl >/dev/null; then
    >&2 echo "curl command not found! Please install curl before trying again."
    exit 1
fi

# install neovim
sudo apt-get install -y neovim

# install neovim Plug package manager
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# set up all plugins
mkdir -p ~/.config/nvim
cp ./init.vim ~/.config/nvim/

# install all plug
nvim -c :PlugInstall -c :q -c :q

# activate the color scheme
sed -i -e 's/" colorscheme/colorscheme/' ~/.config/nvim/init.vim

# install powerline-fonts
git clone https://github.com/powerline/fonts.git powerline-fonts
sudo ./powerline-fonts/install.sh
