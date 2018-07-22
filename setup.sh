echo " Copying .vimrc to runtimepath..."
cp .vimrc ../
# echo " Cloning dein.vim..."
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ./.working/installer.sh
echo " Installing dein.vim..."
sh ./.working/installer.sh ./.cache/dein
# echo "Setting vimdiff as difftool and mergetool..."
# git config --global diff.tool vimdiff
# git config --global difftool.prompt false
# git config --global merge.tool vimdiff
# git config --global mergetool.prompt false
echo " Finished!! Now you can use vim with your setting"
