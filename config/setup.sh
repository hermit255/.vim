echo "creating .vimrc in home directory..."
cp ~/.vim/config/.vimrc ~/
echo "creating backup directory..."
mkdir -p ~/.backup
echo "creating dein directory..."
mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
echo "cloning dein.vim..."
git clone https://github.com/Shougo/dein.vim.git ~/.vim/dein/repos/github.com/Shougo/dein.vim
echo "finished"
