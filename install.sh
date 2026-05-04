#!/bin/sh
set -e

# Symlink config into both editor locations.
mkdir -p ~/.config
rm -rf ~/.config/nvim ~/.vim
ln -sf "$PWD/config" ~/.config/nvim
ln -sf "$PWD/config" ~/.vim

# Install vim-plug for vim.
curl -fLo "$PWD/config/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install vim plugins.
vim +'PlugInstall --sync' +qa

# Bootstrap lazy.nvim and install nvim plugins.
nvim --headless "+Lazy! sync" +qa
