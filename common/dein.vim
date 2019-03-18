let g:DInstallPath = ConfigPath. "/bundle"
if has('win32') || has ('win64')
  let g:DInstallPath = DInstallPath. "/"
endif
let g:DeinDir = ConfigPath. "/bundle/repos/github.com/Shougo/dein.vim/"
" Add the dein installation directory into runtimepath
let &runtimepath = DeinDir. ','. &runtimepath

if dein#load_state(DInstallPath. '/')
  call dein#begin(DInstallPath)

  call dein#add(DInstallPath) " self
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  " Shougo
  call dein#add('Shougo/neocomplcache') " input helper
  " call dein#add('Shougo/neocomplete') " input helper(newer than neocomplcache)
  call dein#add('Shougo/vimproc') " library
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/neomru.vim') " enable Unite file_mru(file history)
  " call dein#add('Shougo/neoyank.vim') " yank history
  call dein#add('Shougo/neosnippet') " your snippet
  call dein#add('Shougo/neosnippet-snippets')
  " UI expantion
  call dein#add('vim-airline/vim-airline') " status-bar extention
  " command expantion
  call dein#add('scrooloose/nerdtree') " IDE like tree filer
  call dein#add('tpope/vim-fugitive.git') " git helper e.g. `:Gdiff`
  call dein#add('simeji/winresizer') " enable window size controll with ctrl+E
  call dein#add('majutsushi/tagbar') " tagbar with F8
  call dein#add('previm/previm') " enable markdown previewer `PrevimOpen` or else
  call dein#add('osyo-manga/vim-anzu') " show number of searched word when `/` clicked
  " helper
  call dein#add('tpope/vim-surround') " surround helper
  call dein#add('mattn/emmet-vim') " html/css helper
  " syntax
  call dein#add('scrooloose/syntastic.git') " syntax checker
  call dein#add('posva/vim-vue') " Vim syntax highlighting for Vue components
  call dein#add('h1mesuke/vim-alignta') " markdown table helper
  call dein#add('udalov/kotlin-vim') " kotlin
  " color scheme
  call dein#add('sjl/badwolf')
  call dein#add('nanotech/jellybeans.vim')
  call dein#add('jacoborus/tender.vim')

  call dein#end()
  call dein#save_state()
endif
" if new plugins wouldn't be installed(), manually exec `call dein#recache_runtimepath()`

" automatically install plugins
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

" colorscheme"
colorscheme tender
