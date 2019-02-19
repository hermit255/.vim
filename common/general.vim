"================================================================
"  general
"================================================================
set nocompatible " vi互換をオフ
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp,sjis
set t_Co=256
set backup
set browsedir=buffer " ファイル保存先を現在バッファの場所にする
set autochdir " バッファ移動時にカレントディレクトリを追従させる
set hidden " バッファ移動時に保存を必要としない
set autoread " 他で書き換えられたら自動で読み直す
set nowrap " 折り返し無効化
set number " 行番号をつける
set title " タイトル表示
set history=50 " コマンド履歴保持数
set ambiwidth=double "全角記号の表示崩れ対策
set nrformats-=octal " インクリメントを10進数で行う
set formatoptions=q " 自動改行を無効化
set noeol " 保存時に自動で入る行末の改行を無効化
set spell " スペルチェックを有効化
set spelllang=en,cjk " スペルミスから日本語を除外

"================================================================
"  input
"================================================================
set splitright " 新しいウインドウを右に開く
set diffopt+=vertical " diff系を縦分割で開く

" 保完候補を一覧に表示
set wildmenu
set wildmode=list:longest,full

set iminsert=0 " インサートモード突入時IMEをオフにする
set imsearch=0 " サーチモード突入時IMEをオフにする

set showmatch " `%`で対応する開始記号/終了記号にジャンプ

set virtualedit=block " 矩形選択時に空白行を選択可能にする
set textwidth=0 " テキストの自動改行を無効化
set backspace=indent,eol,start " オートインデント、行、挿入区間であってもbackspaceを通常動作させる
set whichwrap=b,s,h,l,[,],<,> " 行跨ぎを有効にするキー設定

"================================================================
"  tabs
"================================================================
" refered http://qiita.com/wadako111/items/755e753677dd72d8036d
" タブラインを表示
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction
function! s:my_tabline()  "{{{
  let s = ''
  for i in range(1, tabpagenr('$'))
    let bufnrs = tabpagebuflist(i)
    let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
    let no = i  " display 0-origin tabpagenr.
    let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
    let title = fnamemodify(bufname(bufnr), ':t')
    let title = '[' . title . ']'
    let s .= '%'.i.'T'
    let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
    let s .= no . ':' . title
    let s .= mod
    let s .= '%#TabLineFill# '
  endfor
  let s .= '%#TabLineFill#%T%=%#TabLine#'
  return s
endfunction "}}}
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2 " 常にタブラインを表示

"================================================================
"  search
"================================================================
set nowrapscan "`/`検索結果をループさせない
set hlsearch " 検索語をハイライト
set smartcase " 検索時に大文字を含んでいたら大/小を区別

"================================================================
"  yank or clipboard
"================================================================
set clipboard=unnamed " ヤンク内容(unnamed bubber)をクリップボードに転送
" vモードの置換連続ペースト用 参考  http://qiita.com/hikaruna/items/83c1220eede810bee492
" vモードで既存の文字列を選択して貼り付けると、上書きされた部分がヤンクされたことになる問題への対処
function! Put_text_without_override_register()
  let line_len = strlen(getline('.'))
  execute "normal! `>"
  let col_loc = col('.')
  execute 'normal! gv"_x'
  if line_len == col_loc
    execute 'normal! p'
  else
    execute 'normal! P'
  endif
endfunction
xnoremap <silent> p :call Put_text_without_override_register()<CR>
