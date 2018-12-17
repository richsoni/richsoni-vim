let g:AutoScrollSpeed = 200
function! IncreaseScrollSpeed()
  g:AutoScrollSpeed = g:AutoScrollSpeed * 2
endfunction

function! DecreaseScrollSpeed()
  g:AutoScrollSpeed = g:AutoScrollSpeed / 2
endfunction

noremap K call :ScrollDown<cr>
noremap <ctrl>K :IncreaseScrollSpeed<cr>
noremap <ctrl>J :DecreaseScrollSpeed<cr>
