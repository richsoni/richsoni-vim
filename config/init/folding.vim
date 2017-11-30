" Options
  " Trailing whitespace
    set list
    set listchars=trail:·

  set nowrap
  set foldmethod=indent
  set nofoldenable
  set backspace=2
  " Tabs are 2 literal spaces
    set tabstop=2
    set shiftwidth=2
    set expandtab


"Language Customizations --- {{{
augroup folding_language_specific
  autocmd!
  autocmd Filetype vim setlocal foldmethod=marker
augroup end
"  }}}
