" colorscheme はdein設定に依存するのでここでは設定しない
" 基本設定
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,cp932,euc-jp,sjis
set t_Co=256
set backup
set browsedir=buffer
set nowrap
set tw=0
set number
set title
set iminsert=0
set imsearch=0
set ambiwidth=double
set expandtab
set tabstop=2
set smarttab
set shiftwidth=2
set showmatch
set smartindent
set nrformats-=octal
set hidden
set history=50
set virtualedit=block
set whichwrap=b,s,[,],<,>
set backspace=indent,eol,start
set wildmenu
set autochdir
set splitright
set nowrapscan
" 検索語をハイライト
set hlsearch
" 自動改行設定を一部無効化(t, c をキャンセル)
set formatoptions=q
" 保存時に自動で入る行末の改行を無効化
set noeol
" 移動不能な操作がされた場合などに出るビープ音を無効にする
set belloff=all
" コマンドラインモード等の<tab>補完を、共通部分までの補完→候補選択という流れにする（terminalと同じ感じ）
set wildmenu
set wildmode=longest:full,full

" ヤンク内容をクリップボードに転送　autoselectをセットすると選択範囲が優先して送られるので指定を外している
set clipboard=unnamed
" htmlタグの対応関係を把握可能にする
source $VIMRUNTIME/macros/matchit.vim

" http://qiita.com/wadako111/items/755e753677dd72d8036dから流用
" タブラインを表示
" Anywhere SID.
function! s:SID_PREFIX()
  return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

" Set tabline.
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

" grep 実行時にQuickfixWindowを開く
au QuickFixCmdPost *grep* cwindow
