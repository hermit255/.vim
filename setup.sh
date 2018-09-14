installDir=${HOME}/.vim/bundle
installer=${installDir}/installer.sh
deinInstaller=https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh

cp -f .vimrc ~/

echo " downloading dein.vim to". installDir
if [ ! -e ${installDir} ]; then
  mkdir -p ${installDir}
fi
curl $deinInstaller > ${installer}

echo " Installing dein.vim"
sh ${installer} ${installDir}
rm ${installer}
echo " Finished!! Now you can use vim with your setting"
