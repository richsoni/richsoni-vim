" Neovim entry point. Bootstrap the shared vim runtime, then source the
" shared vimrc which conditionally loads neovim-only plugins and configs
" from config/nvim/.

set nocompatible
filetype plugin on
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc
