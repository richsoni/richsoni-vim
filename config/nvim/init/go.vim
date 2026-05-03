function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

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
