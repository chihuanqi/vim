vim
===

git clone https://github.com/chihuanqi/vim.git .vim.git

.vimrc config

use vundle

Install:
    mkdir .vim/bundle -p
    git clone https://github.com/gmarik/vundle.git .vim/bundle/vundle
    ln -s ~/.vim.git/vimrc ~/.vimrc
	touch .local.vim
    vim
    BundleInstall

	add system var PYTHON_SITE_PACKAGE_PATH point to python site package path like "/home/user/.pythonbrew/pythons/Python-2.7.3/lib/python2.7/site-packages" in .bashrc or .zshrc, this can improve jedi-vim

    enjoy it
