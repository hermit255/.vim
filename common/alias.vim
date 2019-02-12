let mapleader = "\<Space>" " leaderを設定
"================================================================
"  normal mode
"================================================================ " タブ補助
nnoremap <Leader>l :tabnext<CR>
nnoremap <Leader>h :tabprevious<CR>
nnoremap <Leader>x :tabclose<CR>
" 検索方式を正規表現にする
nnoremap / /\v
nnoremap Y ^y$ " カーソル位置から行末までをヤンクする

"================================================================
"  insert mode
"================================================================
" クオート等を補完
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap < <><LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ` ``<LEFT>
inoremap <silent>jj <esc> " jj でインサートモードから抜ける

"================================================================
"  visual mode
"================================================================
vnoremap { "zdi{<C-R>z}<ESC>
vnoremap [ "zdi[<C-R>z]<ESC>
vnoremap ( "zdi(<C-R>z)<ESC>
vnoremap " "zdi"<C-R>z"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

set whichwrap=b,s,h,l,[,],<,> " 行跨ぎを有効にするキー設定

"================================================================
"  command
"================================================================
" ヤンク内容をクリップボードに転送　linux にも対応
command Pbcopy :let @*=@"  "最後にyank or 削除した内容をクリップボードに入れる
command Pbcopy0 :let @*=@0 "最後にyankした内容をクリップボードに入れる
command Path :let @+ = expand('%:p')  " カレントバッファのフルパスをクリップボードにコピーする
command Config :tab new `=ConfigPath`"/common"

if has("autocmd")
  autocmd QuickFixCmdPost *grep* vs | 20cwindow " grep 実行時にQuickfixWindowを開く
endif
