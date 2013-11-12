vim
===

git clone https://github.com/chihuanqi/vim.git .vim.git

.vimrc config

use vundle

Install:
    mkdir .vim/bundle -p
    git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
    ln -s ~/.vim.git/.vimrc ~/.vimrc
	touch .local.vim
    vim
    BundleInstall

    enjoyundle
