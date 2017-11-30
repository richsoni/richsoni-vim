let g:autosave_on = 0 "toggles default behavior
nnoremap [oa :call EnableAutoWrite()<cr>
nnoremap ]oa :call DisableAutoWrite()<cr>
nnoremap coa :call ToggleAutoWrite()<cr>

function! EnableAutoWrite()
  echo 'autowrite enabled'
  let g:autosave_on = 1
  augroup autosave
    set autowriteall                " Save when doing various buffer-switching things.
    autocmd InsertLeave,TextChanged,BufLeave,FocusLost * silent! wall  " Save anytime we leave a buffer
  augroup end
endfunction

function! DisableAutoWrite()
  echo 'autowrite disabled'
  let g:autosave_on = 0
  augroup autosave
    autocmd!
    set noautowriteall
  augroup end
endfunction

function! ToggleAutoWrite()
  if g:autosave_on == 1
    call DisableAutoWrite()
  else
    call EnableAutoWrite()
  endif
endfunction
