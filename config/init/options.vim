autocmd QuickFixCmdPost *grep* cwindow

if has('nvim')
else
  set cm=blowfish2
endif
set autowrite
set path+=**
"UX Stuff
  set hls
  set guifont=Inconsolata:h20
  set guioptions-=T  " Hide gui chrome set guioptions-=e  " Use text tabs
  set guioptions-=rL " No scrollbar
  set visualbell      " Suppress bell
  set cursorline
  "change insert mode shape in tmux
    if exists('$TMUX')
      let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
      let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    else
      let &t_SI = "\<Esc>]50;CursorShape=1\x7"
      let &t_EI = "\<Esc>]50;CursorShape=0\x7"
    endif
" Search
  set ignorecase
  set smartcase
" Behavior
  "auto center cursor
    set so=999
    set splitright
    set nosplitbelow
    set diffopt=vertical
    set mouse=a "use mouse in terminal mode
  " Toggle Numbers
    set relativenumber
    set number
    aug linenumbers
      au!
      au InsertEnter * :set number
      au InsertEnter * :set norelativenumber
      au InsertLeave * :set relativenumber
    augroup end
"Other
  set wildmode=list:full
  let g:ruby_path = system('rvm current')
set ttyfast
set scrolljump=5
set timeout
set noswapfile
set nobackup
