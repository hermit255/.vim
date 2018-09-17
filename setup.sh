# @windows, you have to `cd myvim` before you run this script
if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  ConfigDir=$(cd $(dirname $0); pwd)'/bundle'
elif [ "$(uname)" == "Darwin" ]; then
  ConfigDir=$(cd $(dirname $0); pwd)'/bundle'
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
  ConfigDir='.'
else
  ConfigDir='.'
fi

installDir=${ConfigDir}/bundle
installer=${installDir}/installer.sh
deinInstaller=https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh

cd $ConfigDir
cp -f .vimrc ../

echo " downloading dein.vim to". installDir
if [ ! -e ${installDir} ]; then
  mkdir -p ${installDir}
fi
curl $deinInstaller > ${installer}

echo " Installing dein.vim"
sh ${installer} ${installDir}
rm ${installer}
echo " Finished!! Now you can use vim with your setting"
