if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=$DeinPath

if dein#load_state($CachePath. '/dein')
 call dein#begin($CachePath. '/dein')

 call dein#add($CachePath. '/dein')
 call dein#add('Shougo/deoplete.nvim')
 if !has('nvim')
   call dein#add('roxma/nvim-yarp')
   call dein#add('roxma/vim-hug-neovim-rpc')
 endif

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
call dein#add('cohama/agit.vim')
call dein#add('majutsushi/tagbar')
"call dein#add('')

" color scheme download
call dein#add('sjl/badwolf')
call dein#add('nanotech/jellybeans.vim')
call dein#add('jacoborus/tender.vim')

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on
syntax enable
