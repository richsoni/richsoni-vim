" Neovim entry point. Loads shared init configs, then declares plugins via
" lazy.nvim. Plugin list and lazy.nvim setup live in lua/config/lazy.lua.

filetype plugin indent on
runtime! init/**.vim

lua require('config.lazy')

runtime! nvim/init/*.vim

colorscheme grb256
