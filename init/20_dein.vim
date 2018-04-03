" http://qiita.com/yoza/items/2f8bd33a18225754f346
if &compatible
  set nocompatible
endif

"set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
"call dein#begin(expand('~/.vim/dein'))
call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/vimproc')
call dein#add('Shougo/unite.vim')
call dein#add('tpope/vim-surround')
call dein#add('mattn/emmet-vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('rking/ag.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('scrooloose/syntastic.git')
call dein#add('slim-template/vim-slim')
"call dein#add('')

" color scheme download
call dein#add('sjl/badwolf')
call dein#add('nanotech/jellybeans.vim')
call dein#add('jacoborus/tender.vim')

call dein#end()
