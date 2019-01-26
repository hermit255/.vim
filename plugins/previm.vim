" target filetype
augroup PrevimSettings
  autocmd!
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

" open with google chrome
if has('mac')
  let g:previm_open_cmd = 'open -a Google\ Chrome'
elseif has('unix')
  let g:previm_open_cmd = 'google-chrome'
elseif has('win32') || has ('win32unix') || has ('win64')
  let g:previm_open_cmd = 'start Chrome'
endif
