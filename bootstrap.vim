" ==================================================================================
" clipboard+ is better
" ==================================================================================
let g:ConfigPath = expand('<sfile>:p:h') " config root
let &backupdir = ConfigPath. "/.backup" " backup_directory
let &directory = ConfigPath. "/.swap" "swap_directory
if filereadable(ConfigPath. "/logs/log")
  call system('touch '. ConfigPath. "/logs/log")
endif
let &verbosefile = ConfigPath. "/logs/log"

" disabled: indexed but disabled, copy files to enable from here
" enabled: no indexed but enabled(for local setting)
runtime! enabled/before/*.vim
runtime! common/dein.vim
runtime! common/general.vim
runtime! common/keybind.vim
runtime! common/alias.vim
runtime! common/syntax.vim
runtime! common/colorscheme.vim
" plugin setting
runtime! plugins/*.vim
runtime! enabled/after/*.vim
