git submodule init
git submodule update
mkdir -p ~/.config/
rm -rf ~/.config/nvim
ln -sf $PWD/config ~/.config/nvim
rm -rf ~/.vim
ln -sf $PWD/config ~/.vim
