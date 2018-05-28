echo " Copying .vimrc to runtimepath..."
cp .vimrc ../
echo " Creating backup directory..."
mkdir -p ../.backup
echo " Creating dein directory..."
mkdir -p ../.cache/dein
echo " Cloning dein.vim..."
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ../.cache/installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh ../.cache/installer.sh ../.cache/dein
# echo "Setting vimdiff as difftool and mergetool..."
# git config --global diff.tool vimdiff
# git config --global difftool.prompt false
# git config --global merge.tool vimdiff
# git config --global mergetool.prompt false
echo " Finished!! Now you can use vim with your setting"
