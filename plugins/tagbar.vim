" tagbar の設定
let g:tagbar_width = 30        " 初期設定はwidth=40なのでちょっと幅とりすぎ。
let g:tagbar_autoshowtag = 1   " :TagbarShowTag を叩かなくても有効にする
" F8で Tagbar の表示切り替え
nmap <F8> :TagbarToggle<CR>

"現在位置を表示する
set statusline=%F%m%r%h%w\%=%{tagbar#currenttag('[%s]','')}\[Pos=%v,%l]\[Len=%L]
