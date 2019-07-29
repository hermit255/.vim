" ----------------------------------------------------------------------------
" DiffRev
" ----------------------------------------------------------------------------
let s:git_status_dictionary = {
            \ "A": "Added",
            \ "B": "Broken",
            \ "C": "Copied",
            \ "D": "Deleted",
            \ "M": "Modified",
            \ "R": "Renamed",
            \ "T": "Changed",
            \ "U": "Unmerged",
            \ "X": "Unknown"
            \ }
function! s:get_diff_files(rev)
  let list = map(split(system(
              \ 'git diff --name-status '.a:rev), '\n'),
              \ '{"filename":matchstr(v:val, "\\S\\+$"),"text":s:git_status_dictionary[matchstr(v:val, "^\\w")]}'
              \ )
  call setqflist(list)
  copen
endfunction
command! -nargs=1 DiffRev call s:get_diff_files(<q-args>)
" reset BufferDirectory
function! s:git_root_dir(dir)
  if(system('git -C '. a:dir . ' rev-parse --is-inside-work-tree') == "true\n")
    return system('git -C '. a:dir . ' rev-parse --show-toplevel')
  else
    return a:dir
  endif
endfunction

" set directories path on moving buffer
augroup directories
  autocmd!
  autocmd BufEnter * let b:cwd = expand("%:p:h")
  autocmd BufEnter * let b:git_root_dir = s:git_root_dir(b:cwd)
augroup END
