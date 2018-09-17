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
"  command
"================================================================
command Path :let @+ = expand('%:p')  " フォーカス中ファイルのフルパスをクリップボードにコピーする
command Config :vs $ConfigPath. "common"
