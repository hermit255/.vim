"================================================================
" syntax
"================================================================
syntax on

au BufRead,BufNewFile *.slim setfiletype slim
au BufRead,BufNewFile *.vue setfiletype html
au Filetype json setl conceallevel=0
