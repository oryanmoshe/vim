# Linking vim configuration
ln -Ffs "$(pwd)/"$(basename "$(dirname "${BASH_SOURCE[0]}")")"/.vim" ~/.vim
ln -Ffs ~/.vim/.vimrc ~/.vimrc
