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

" ----------------------------------------------------------------------------
" GoGitRoot
" ----------------------------------------------------------------------------
" reffered: https://rhysd.hatenablog.com/entry/20120602/1338651566
function! s:git_root_dir()
  " current directory(absolute)
  let pwd = expand("%:p:h")
  " if managed by git
  let managedByGit = system('cd '. pwd. ' && '. 'git rev-parse --is-inside-work-tree') == "true\n"
  " project root
  let gitRootRelative = system('cd '. pwd. ' && '. 'git rev-parse --show-toplevel')
    if(managedByGit)
      execute('cd '. gitRootRelative)
      echo gitRootRelative
    else
        echoerr '!!!current directory is outside git working tree!!!'
    endif
endfunction
command! -nargs=0 GoGitRoot call s:git_root_dir()
