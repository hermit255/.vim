nnoremap <Leader>n :NERDTree<CR>
" NERDTreeブックマークを初期表示
let g:NERDTreeShowBookmarks=1
" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1
" 無視設定
let g:NERDTreeIgnore=['\.DS_Store$', '\.git$', '\.svn$', '\.clean$', '\.swp$', '\.bak$', '\.hg$', '\.hgcheck$', '\~$']
" vim起動時にNERDTreeを起動ただしファイル指定の場合は起動しない
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
