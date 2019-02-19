# @windows, you have to `cd myvim` before you run this script
if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  ConfigDir=$(cd $(dirname $0); pwd)
elif [ "$(uname)" == "Darwin" ]; then
  ConfigDir=$(cd $(dirname $0); pwd)
elif [ "$(expr substr $(uname -s) 1 5)" == "MINGW" ]; then
  ConfigDir='.'
else
  ConfigDir='.'
fi

installDir=${ConfigDir}/bundle
echo "ConfigDir =" ${ConfigDir}
installer=${installDir}/installer.sh
echo "installer =" ${installer}
# notice: dein requires `git` command
deinInstaller=https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh
echo "deinInstaller =" ${deinInstaller}

cp -f ${ConfigDir}/.vimrc ../

echo " downloading dein.vim to". installDir
if [ ! -e ${installDir} ]; then
  mkdir -p ${installDir}
fi
curl $deinInstaller > ${installer}

echo " Installing dein.vim"
sh ${installer} ${installDir}
rm ${installer}
echo " Finished!! Now you can use vim with your setting"
