command! Gbranch call <SID>Gbranch()

function! s:Gbranch()
  pedit 'git branch'
  wincmd P
  setlocal ro noma nomod noswapfile
  setlocal foldmethod=syntax foldlevel=1
  nnoremap <buffer> <silent> q    :<C-U>bdelete!<CR>
  nnoremap <buffer> <silent> d    :call <SID>delete_branch(0)<cr>
  nnoremap <buffer> <silent> D    :call <SID>delete_branch(1)<cr>
  nnoremap <buffer> <silent> c    :call <SID>checkout_branch()<cr>
  set ft=git_branch
  silent call s:reload_branch()
endfunction

function! s:reload_branch()
  setlocal ma
  let line=line('.')
  silent 1,$d
  silent 0read ! git branch
  normal! GGd
  exec 'normal! '.line.'G'
  setlocal noma
endfunction


function! s:delete_branch(force)
  let branch=  substitute(getline('.'), '^\s*\(.\{-}\)\s*$', '\1', '')
  call inputsave()
  let answer = input('Confirm Deletion of branch ('.branch.') [{y(es)},n(o),a(ll),q(uit)]: ')
  call inputrestore()
  let method = 'd'
  if(a:force == 1)
    let method = 'D'
  endif
  if(answer == 'y' || answer == 'yes')
    setlocal ma
    echom system("git branch -".method." ".branch)
    silent call s:reload_branch()
    setlocal noma
  endif
endfunction

function! s:checkout_branch()
  let branch=  substitute(getline('.'), '^\s*\(.\{-}\)\s*$', '\1', '')
  echom system("git checkout ".branch)
  silent call s:reload_branch()
endfunction
