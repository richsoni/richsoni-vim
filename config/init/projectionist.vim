autocmd User ProjectionistActivate call s:newCMD()

function! s:BufferIsEmpty()
  return line('$') == 1 && getline(1) == ''
endfunction

function! s:newCMD() abort
  let x = 0
  for [root, value] in projectionist#query('new-cmd')
    if(s:BufferIsEmpty())
      execute('read ! '.value)
      execute('normal! ggdd')
    endif
    break
  endfor
endfunction
