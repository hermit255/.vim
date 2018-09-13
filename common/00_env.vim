" ==================================================================================
" OS環境などの差によって使い分けする項目
" clipboard 機能は便利なので、linuxでは vim-gnome などGUIを備えたものがよい
" ==================================================================================
let $DS = '/'
" let $DS = '\'
" ポータブル環境設定のルートディレクトリ
let $ConfigDir = $HOME. $DS. "vim_config"
" dein および dein管理プラグインのインストール先
let $WorkingDir = $ConfigDir. $DS. "bundle"
let $GithubDir = $WorkingDir. $DS. "repos". $DS. "github.com"
let $ShougoDir = $GithubDir. $DS. "Shougo"
let $DeinDir = $ShougoDir. $DS. "dein.vim"

" Add the dein installation directory into runtimepath
set runtimepath+=$DeinDir
" backup_directory
let $BackupDir = $WorkingDir. $DS. ".backup"
set backupdir =$BackupDir

filetype plugin indent on
syntax enable

" ヤンク内容をクリップボードに転送　linux にも対応
command Pbcopy :let @*=@"  "最後にyank or 削除した内容をクリップボードに入れる
command Pbcopy0 :let @*=@0 "最後にyankした内容をクリップボードに入れる
