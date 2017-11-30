if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

nnoremap G :set operatorfunc=<SID>GrepOperator<cr>g@

function! s:GrepOperator(type)
    let saved_unnamed_register = @@

    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[v`]y
    else
        return
    endif

    silent execute "grep " . shellescape(@@) . " ."
    copen

    let @@ = saved_unnamed_register
endfunction
