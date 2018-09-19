"================================================================
"  insert mode
"================================================================
" leaderを設定
let mapleader = "\<Space>"
" タブ補助
nnoremap <Leader>l :tabnext<CR>
nnoremap <Leader>h :tabprevious<CR>
nnoremap <Leader>x :tabclose<CR>
" クオート等を補完
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap < <><LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ` ``<LEFT>
vnoremap { "zdi{<C-R>z}<ESC>
vnoremap [ "zdi[<C-R>z]<ESC>
vnoremap ( "zdi(<C-R>z)<ESC>
vnoremap " "zdi"<C-R>z"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

"================================================================

" grep 実行時にQuickfixWindowを開く
au QuickFixCmdPost *grep* vs | 20cwindow

" ヤンク内容をクリップボードに転送　linux にも対応
command Pbcopy :let @*=@"  "最後にyank or 削除した内容をクリップボードに入れる
command Pbcopy0 :let @*=@0 "最後にyankした内容をクリップボードに入れる
"  command
"================================================================
command Path :let @+ = expand('%:p')  " フォーカス中ファイルのフルパスをクリップボードにコピーする
command Config :vs `=ConfigDir`"/common"
