" dein のインストール先を 
" ~/.cache/dein または
" ~/.vim/bundle
" にすることは強いルールとして固定化するのが無難(不具合経験済み)
" vim に関するものをまとめる観点から後者をとる
let g:DInstallDir = ConfigDir. DS. "bundle"
let g:DeinDir = DInstallDir. DS. "repos". DS. "github.com". DS. "Shougo". DS. "dein.vim"
let &runtimepath = &runtimepath. ','. DeinDir

" Add the dein installation directory into runtimepath

if dein#load_state(DInstallDir)
  call dein#begin(DInstallDir)

  call dein#add(DInstallDir)
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('Shougo/vimproc')
  " enable Unite command e.g. `:Unite buffer`, `:Unite file` and so on
  call dein#add('Shougo/unite.vim')
  call dein#add('tpope/vim-surround')
  " html/css helper 
  call dein#add('mattn/emmet-vim')
  " your snippet
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('rking/ag.vim')
  " IDE like tree filer
  call dein#add('scrooloose/nerdtree')
  " share nerdtree among tabs
    ""call dein#add('jistr/vim-nerdtree-tabs')
  " syntax checker
  call dein#add('scrooloose/syntastic.git')
  " call dein#add('slim-template/vim-slim')
  call dein#add('majutsushi/tagbar')
  call dein#add('posva/vim-vue')
  call dein#add('previm/previm')
  " git helper e.g. `:Gdiff`
  call dein#add('tpope/vim-fugitive.git')
  " status-bar extention
  call dein#add('vim-airline/vim-airline')
  " modify window size
  call dein#add('simeji/winresizer')
  "call dein#add('')

  " color scheme download
  call dein#add('sjl/badwolf')
  call dein#add('nanotech/jellybeans.vim')
  call dein#add('jacoborus/tender.vim')

  call dein#end()
  call dein#save_state()
endif

" 不足プラグインの自動インストール
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

" colorscheme"
colorscheme tender
