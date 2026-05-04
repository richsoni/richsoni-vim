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

# Install TypeScript language server via Mason.
nvim --headless -c "lua require('mason.api.command').MasonInstall({'typescript-language-server'})" -c "sleep 15" +qa

# Install tree-sitter CLI (required to compile parsers) and parsers.
npm install -g tree-sitter-cli
nvim --headless -c "lua require('nvim-treesitter').install({'typescript','tsx','javascript','json','lua'})" -c "sleep 30" +qa
