" ctags をインストールしてパスを通していれば ctags コマンドを使えるようにする
" タグファイル名は .tags とするのでコマンドは以下
" ctags -R -f .tags

" 最初に開いたファイルから遡って .tags を探す
set tags=./.tags;

" F3キー→何番目の定義箇所に飛ぶか選択することで ctrl+] 結果を別タグで開く
"nnoremap <F3> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>
nnoremap <F3> :<C-u>vertical stj <C-R>=expand('<cword>')<CR><CR>

function! s:make_tags()
  !ctags -R -f .tags
endfunction
command! -nargs=0 MakeTags call s:make_tags()
