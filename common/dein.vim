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
  call dein#add('Shougo/deoplete.nvim') " complement code
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  " # Shougo
  call dein#add('Shougo/neocomplcache') " input helper
  " call dein#add('Shougo/neocomplete') " input helper(newer than neocomplcache)
  call dein#add('Shougo/vimproc', {
    \ 'build': {
    \     'windows' : 'tools\\update-dll-mingw',
    \     'cygwin'  : 'make -f make_cygwin.mak',
    \     'mac'     : 'make -f make_mac.mak',
    \     'linux'   : 'make',
    \     'unix'    : 'make -f make_unix.mak',
    \    },
    \ })
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/neomru.vim') " enable Unite file_mru(file history)
  call dein#add('Shougo/neoyank.vim') " yank history
  call dein#add('Shougo/neosnippet') " your snippet
  call dein#add('Shougo/neosnippet-snippets')
  " # tpope
  call dein#add('tpope/vim-surround') " surround helper
  call dein#add('tpope/vim-repeat') " repeat(`.`) helper
  call dein#add('tpope/vim-commentary') " commentout multiline
  call dein#add('tpope/vim-fugitive.git') " git helper e.g. `:Gdiff`
  call dein#add('tpope/vim-speeddating') " enable date increment
  " UI expantion
  call dein#add('vim-airline/vim-airline') " status-bar extention
  call dein#add('airblade/vim-gitgutter') " show diff from git index on left
  command expantion
  call dein#add('scrooloose/nerdtree') " IDE like tree filer
  call dein#add('simeji/winresizer') " enable window size controll with ctrl+E
  call dein#add('majutsushi/tagbar') " tagbar with F8
  " call dein#add('previm/previm') " enable markdown previewer `PrevimOpen` or else(original)
  call dein#add('kazuph/previm', {'rev': 'feature/add-plantuml-plugin'}) " previm mod with PlantUML
  call dein#add('osyo-manga/vim-anzu') " show number of searched word when `/` clicked
  call dein#add('vim-scripts/grep.vim') " substitute terminal grep for vimgrep
  call dein#add('kamykn/CCSpellCheck.vim') " treat CamelCase as word
  call dein#add('Lokaltog/vim-easymotion') " enable visual based jump of hint, word, or line
  " helper
  call dein#add('mattn/emmet-vim') " html/css helper
  " syntax
  call dein#add('scrooloose/syntastic.git') " syntax checker
  call dein#add('w0rp/ale') " ES lint
  call dein#add('posva/vim-vue') " Vim syntax highlighting for Vue components
  call dein#add('h1mesuke/vim-alignta') " markdown table helper
  call dein#add('udalov/kotlin-vim') " kotlin
  call dein#add('chrisbra/csv.vim') " deal csv
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
