" `:verbose nmap` then npam shown
let mapleader = "\<Space>" " leader
"================================================================
"  normal mode
"================================================================
" tab operation
nnoremap <Leader>l :tabnext<CR>
nnoremap <Leader>h :tabprevious<CR>
nnoremap <Leader>x :tabclose<CR>
" reload
nnoremap <Leader>r :e!<CR>
" 検索方式を正規表現にする
nnoremap / /\v
" 行を改行なしでヤンクする
nnoremap Y ^y$
" * を押した時点でカーソルを動かさない(検索語をハイライトするだけ)
nnoremap * *N

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
" jj でインサートモードから抜ける
inoremap jj <esc>
"================================================================
"  visual mode
"================================================================
vnoremap { "zdi{<C-R>z}<ESC>
vnoremap [ "zdi[<C-R>z]<ESC>
vnoremap ( "zdi(<C-R>z)<ESC>
vnoremap " "zdi"<C-R>z"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>
" 選択範囲の単語を検索する
vnoremap * y/<C-R>"/<CR>N

set whichwrap=b,s,h,l,[,],<,> " 行跨ぎを有効にするキー設定

"================================================================
"  terminal mode
"================================================================
tnoremap <C-w>n <C-\><C-n> "ターミナルから新規バッファを開く可能性は低いのでterminal-normal用コマンドにする

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
