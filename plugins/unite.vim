" The prefix key.
nnoremap    [unite]   <Nop>
nmap    <Leader> [unite]

" buffer list
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<Space>-vertical<Space>-winwidth=40<Space>-wrap<CR>
" old files
nnoremap <silent> [unite]m :<C-u>Unite<Space>file_mru<Space>-vertical<Space>-winwidth=40<Space>-wrap<CR>
" vinarise
let g:vinarise_enable_auto_detect = 1
" unite-build map
nnoremap <silent> ,vb :Unite build<CR>
nnoremap <silent> ,vcb :Unite build:!<CR>
nnoremap <silent> ,vch :UniteBuildClearHighlight<CR>
