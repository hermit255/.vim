" ==================================================================================
" clipboard+ is better
" ==================================================================================
let g:DS = '/'
" config root
let g:ConfigDir = $HOME. DS. ".vim"
" backup_directory
let &backupdir =ConfigDir. DS. ".backup"

" disabled: indexed but disabled, copy files to enable from here
" enabled: no indexed but enabled(for local setting)
runtime! enabled/before/*.vim
runtime! common/dein.vim
runtime! common/general.vim
runtime! common/keybind.vim
runtime! common/alias.vim
runtime! common/syntax.vim
" plugin setting
runtime! plugins/*.vim
runtime! enabled/after/*.vim

