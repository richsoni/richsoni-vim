augroup mytypescript
  au FileType typescript :set suffixesadd=.ts
  au FileType typescript :set suffixesadd=.tsx
  au FileType javascript :set suffixesadd=.ts
  au FileType javascript :set suffixesadd=.tsx
  autocmd BufWritePost *.ts,*.tsx call tslint#run('a', win_getid())
augroup end
