cachePath="../.cache/"
deinInstaller="https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh"

mkdir $cachePath ${cachePath}.backup
echo " Copying .vimrc to runtimepath..."
cp .vimrc ../
# echo " Cloning dein.vim..."
curl $deinInstaller > ${cachePath}installer.sh
echo " Installing dein.vim..."
sh ${cachePath}installer.sh ${cachePath}
# echo "Setting vimdiff as difftool and mergetool..."
# git config --global diff.tool vimdiff
# git config --global difftool.prompt false
# git config --global merge.tool vimdiff
# git config --global mergetool.prompt false
echo " Finished!! Now you can use vim with your setting"
