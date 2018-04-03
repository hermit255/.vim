echo "Copying .vimrc in home directory..."
cp ~/.vim/config/.vimrc ~/
echo "Creating backup directory..."
mkdir -p ~/.backup
echo "Creating dein directory..."
mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
echo "Cloning dein.vim..."
git clone https://github.com/Shougo/dein.vim.git ~/.vim/dein/repos/github.com/Shougo/dein.vim
echo "Installing plugins with dein..."
vim -c call "dein#install()" -c "q!"
echo "Finished!! Now you can use vim with your setting"
