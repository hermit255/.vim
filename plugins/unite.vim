" The prefix key.
nnoremap    [unite]   <Nop>
nmap    <Leader> [unite]

" buffer list
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<Space>-vertical<Space>-winwidth=40<Space>-wrap<CR>
" old files
nnoremap <silent> [unite]m :<C-u>Unite<Space>file_mru<Space>-vertical<Space>-winwidth=40<Space>-wrap<CR>
" register history
nnoremap <silent> [unite]m :<C-u>Unite<Space>file_mru<Space>-vertical<Space>-winwidth=40<Space>-wrap<CR>
" open file with horizontal split
au FileType unite nnoremap <silent> <buffer> <expr> h unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> h unite#do_action('split')
" open file with vertical split
au FileType unite nnoremap <silent> <buffer> <expr> s unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> s unite#do_action('vsplit')

" vinarise
let g:vinarise_enable_auto_detect = 1
" unite-build map
nnoremap <silent> ,vb :Unite build<CR>
nnoremap <silent> ,vcb :Unite build:!<CR>
nnoremap <silent> ,vch :UniteBuildClearHighlight<CR>
