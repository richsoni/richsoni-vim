let g:ctrlp_working_path_mode = 'ra'
nnoremap <leader>p :let g:ctrlp_working_path_mode = 'c'<cr>
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
let g:ctrlp_by_filename = 1
