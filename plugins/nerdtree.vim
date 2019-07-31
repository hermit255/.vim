" see https://github.com/scrooloose/nerdtree/blob/master/doc/NERDTree.txt
" toggle NERDTree
nnoremap <Leader>n :NERDTreeToggle<CR>
" reset NERDTree at git_root
nnoremap <Leader>g :NERDTreeVCS<CR>
" reset NERDTree at current working directory
nnoremap <Leader>c :NERDTreeCWD<CR>

" NERDTreeブックマークを初期表示
let g:NERDTreeShowBookmarks=1
" 隠しファイルをデフォルトで表示させる
let NERDTreeShowHidden = 1
" 無視設定
let g:NERDTreeIgnore=['\.DS_Store$', '\.clean$', '\.hg$', '\.hgcheck$', '\~$']
