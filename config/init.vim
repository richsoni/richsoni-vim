" Neovim entry point.
" Bootstrap shared vim runtime, source the shared vimrc (which handles
" common plugins via vim-plug), then layer on neovim-only concerns:
" lazy.nvim for complex plugins and nvim/init/* for nvim-specific configs.

set nocompatible
filetype plugin on
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

lua require('config.lazy')

runtime! nvim/init/*.vim
