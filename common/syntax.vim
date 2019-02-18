"================================================================
" syntax
"================================================================
syntax on

if has('conceal')
  set conceallevel=0 "特定記号の不可視化を行わない
endif

"refered https://qiita.com/ymiyamae/items/06d0f5ce9c55e7369e1f
" autoindent'  一つ前の行に基づくインデント
" smartindent' 'autoindent'と同様だが幾つかのC構文を認識し、適切な箇所のインデントを増減させる。
" cindent' 他の2つの方法よりも賢く動作し、設定することで異なるインデントスタイルにも対応できる。
" indentexpr'  この中で一番融通が利く: ある行のインデントを計算するのにVimスクリプトを実行する。
" この方法が有効である(空でない)時にはその他 のインデントは抑制される。
set smartindent " 改行時に入力された行の末尾に合わせて次の行のインデントを増減する

set smarttab " softtabstopを有効にする
set shiftwidth=2 " 自動インデントで入る空白数
set expandtab " タブ入力を複数の空白に置き換える
set softtabstop=2 " キーボードから入るタブの数
set tabstop=2 " 既存ファイルの<tab>文字を何文字の空白に変換するか

set formatoptions=q " 自動改行を無効化
set noeol " 保存時に自動で入る行末の改行を無効化

if has("autocmd")
  filetype plugin on "ファイルタイプの検索を有効にする
  filetype indent on "ファイルタイプに合わせたインデントを利用

  "sw=softtabstop, sts=shiftwidth, ts=tabstop, et=expandtabの略
  autocmd FileType c           setlocal sw=2 sts=2 ts=2 et
  autocmd FileType html        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType ruby        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType zsh         setlocal sw=2 sts=2 ts=2 et
  autocmd FileType python      setlocal sw=2 sts=2 ts=2 et
  autocmd FileType scala       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType html        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType css         setlocal sw=2 sts=2 ts=2 et
  autocmd FileType scss        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType sass        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType javascript  setlocal sw=2 sts=2 ts=2 et
  autocmd FileType php         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType json        setlocal sw=2 sts=2 ts=2 et conceallevel=0
  autocmd FileType markdown    setlocal sw=2 sts=2 ts=2 et conceallevel=0

  autocmd BufWritePre * :%s/\s\+$//ge " 保存時に行末の空白を除去する
  " 拡張子に任意のファイルタイプを設定する(複数のシンタックスを設定する場合は.で繋ぐ)
  autocmd BufRead,BufNewFile *.vue setfiletype html.javascript
endif

set spell " スペルチェックを有効化
set spelllang=en,cjk " スペルミスから日本語を除外
hi clear SpellBad
hi SpellBad cterm=underline
hi clear SpellCap
hi SpellCap cterm=underline,bold
