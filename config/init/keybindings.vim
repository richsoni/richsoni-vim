nmap cow * :setlocal <C-R>=<SNR>56_toggle("wrap")<CR><CR>
nnoremap GG G
nnoremap <c-w>f :vertical wincmd f<CR>
nnoremap / ms/

"Typo Commands
command! W w
command! Vne vne
command! Tabe tabe
command! H h

"NOPS
nnoremap <C-W><C-C> <NOP>
nnoremap <C-W>c     <NOP>
nmap <C-C> <ESC>
inoremap <C-X><C-s> <NOP>

"insert
inoremap <c-]> <c-x><c-]>
inoremap <c-F> <c-x><c-F>
inoremap <c-L> <c-x><c-L>
inoremap <c-@> <space>

"Search
  vnoremap * y/<c-r>"<cr>

"plugins
  "Tabular
    vnoremap  <leader>=  :Tabularize /
  "dispatch
    nnoremap <F8> :Make<cr>
    nnoremap <F7> :Dispatch npm test<cr>

