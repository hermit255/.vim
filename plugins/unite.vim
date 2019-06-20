" The prefix key.
nnoremap    [unite]   <Nop>
nmap    <Leader> [unite]

nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<Space>-vertical<Space>-winwidth=70<Space>-wrap<CR>
nnoremap <silent> [unite]f :<C-u>Unite<Space>file<Space>-vertical<Space>-winwidth=70<Space>-wrap<CR>
nnoremap <silent> [unite]m :<C-u>Unite<Space>file_mru<Space>-vertical<Space>-winwidth=70<Space>-wrap<CR>
nnoremap <silent> [unite]w :<C-u>Unite<Space>window<Space>-vertical<Space>-winwidth=70<Space>-wrap<CR>
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> [unite]y :<C-u>Unite<Space>history/yank<Space>-vertical<Space>-winwidth=70<Space>-wrap<CR>

" open file with horizontal split
" au FileType unite nnoremap <silent> <buffer> <expr> h unite#do_action('split')
" au FileType unite inoremap <silent> <buffer> <expr> h unite#do_action('split')
" open file with vertical split
au FileType unite nnoremap <silent> <buffer> <expr> s unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> s unite#do_action('vsplit')

" vinarise
let g:vinarise_enable_auto_detect = 1
" unite-build map
nnoremap <silent> ,vb :Unite build<CR>
nnoremap <silent> ,vcb :Unite build:!<CR>
nnoremap <silent> ,vch :UniteBuildClearHighlight<CR>

" unite grep
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

" refered from https://wonderwall.hatenablog.com/entry/2016/04/02/231737
" start with insert mode
" let g:unite_enable_start_insert = 1

" ignore case
" let g:unite_enable_ignore_case = 1
" let g:unite_enable_smart_case = 1

" grep search
" nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
" grep search the word on carsol
" nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>
" reload grep
" nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>
" unite grep に ag(The Silver Searcher) を使う
" "if executable('ag')
" "  let g:unite_source_grep_command = 'ag'
" "  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
" "  let g:unite_source_grep_recursive_opt = ''
" "endif
