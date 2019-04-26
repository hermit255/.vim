" target filetype
augroup PrevimSettings
  autocmd!
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END

" open with google chrome
if has('mac')
  let g:previm_open_cmd = 'open -a Google\ Chrome'
elseif has('unix')
  let g:previm_open_cmd = 'google-chrome'
elseif has('win32') || has ('win32unix') || has ('win64')
  let g:previm_open_cmd = 'start Chrome'
endif

" -- example PlantUML ER diagram --
"  ```uml
"  @startuml
"  entity "Sample Table" as sample {
"    column1
"    column2
"    column3
"    column4
"  }
"  @enduml
"  ```
" -- /example --
"
" -- example PlantUML flowchart --
"  ```uml
"  @startuml
"  [*] --> active
"
"  active -right-> inactive : disable
"  inactive -left-> active  : enable
"
"  inactive --> closed  : close
"  active --> closed  : close
"
"  closed --> [*]
"  @enduml
"  ```
" -- /example sequence diagram --
"  ```uml
"  @startuml
"  actor user as user
"  user -> user : 何かのアクション
"  @enduml
"  ```
