if dein#load_state($WorkingPath)
  call dein#begin($WorkingPath)

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

" colorscheme"
colorscheme tender
