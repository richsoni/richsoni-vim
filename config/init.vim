"THIS IS THE NVIM ONLY SCRIPT
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc

set guicursor=n-v-c:block-Cursor/lCursor-blinkon0,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor

tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
tnoremap <C-i> <C-\>
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

" run :GoBuild or :GoTestCompile based on the go file
function! s:run_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    GoTest
  elseif l:file =~# '^\f\+\.go$'
    GoRun
  endif
endfunction

autocmd FileType go nmap gm :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap gr :<C-u>call <SID>run_go_files()<CR>
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)
let g:go_fmt_command = "goimports"
autocmd FileType go hi SpecialKey ctermfg=black guifg=black

call minpac#add('richsoni/vim-intermezzo')

" tnoremap ZZ :bd!
" au TermOpen * setlocal bufhidden delete
"
