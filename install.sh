curl -fLo $PWD/config/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.config/
rm -rf ~/.config/nvim
ln -sf $PWD/config ~/.config/nvim
rm -rf ~/.vim
ln -sf $PWD/config ~/.vim
