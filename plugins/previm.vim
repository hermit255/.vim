" target filetype
augroup PrevimSettings
  autocmd!
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END


if has('mac')
  let g:previm_open_cmd = 'open -a Google\ Chrome'
elseif has('unix')
elseif has('win32') || has ('win32unix') || has ('win64')
  let g:previm_open_cmd = 'start Chrome'
endif
