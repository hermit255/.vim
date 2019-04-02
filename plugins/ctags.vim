" search tags from current to home
set tags=./.tags;$HOME,.tags;$HOME

" F3 to open Jump List
"nnoremap <F3> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
nnoremap <F3> :<C-u>vertical stj <C-R>=expand('<cword>')<CR><CR>

" make .tags on save
" refered: https://qiita.com/aratana_tamutomo/items/59fb4c377863a385e032
function! s:execute_ctags() abort
  let tag_name = '.tags'
  let git_name = '.git'

  let tags_path = findfile(tag_name, '.;')
  if tags_path ==# ''
    let tags_path = findfile(tag_name, '.;')
  endif
  if tags_path ==# ''
    return
  endif

  let tags_dirpath = fnamemodify(tags_path, ':p:h')
  execute 'silent !cd' tags_dirpath '&& ctags -R -f' tag_name '2> /dev/null &'
endfunction

augroup ctags
  autocmd!
  autocmd BufWritePost * call s:execute_ctags()
augroup END
