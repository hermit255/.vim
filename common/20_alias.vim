"================================================================
"  insert mode
"================================================================
" df で左右分割比較ができるようにする
cnoremap df vertical diffsplit<space>
" leaderを設定
let mapleader = "\<Space>"
" タブ移動の簡略化
nnoremap <Leader>l :tabnext<CR>
nnoremap <Leader>h :tabprevious<CR>
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
"  command
"================================================================
command Path :let @+ = expand('%:p')  " フォーカス中ファイルのフルパスをクリップボードにコピーする
command Recent :browse oldfiles  " 最近開いたファイルを選ぶ
