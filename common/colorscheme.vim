" colorscheme
if filereadable(expand(ConfigPath . "/bundle/.cache/.vimrc/.dein/colors/tender.vim"))
  colorscheme tender
else
  echo 'Colorcheme not found, load `darkblue`'
  colorscheme darkblue
endif
