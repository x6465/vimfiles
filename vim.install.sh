#!/usr/bin/env bash
clear 

echo -e "\033[1mInstalling important packages\033[0m"
sudo apt-get install ncurses-term ctags curl git-core pyflakes pylint vim-gnome

#echo -e "\033[1mInstalling RVM package\033[0m"
#bash < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
#source ~/.bashrc
#rvm reload

echo -e "\033[1mInitialization git repository and clone submodules\033[0m"
git init

# Pathogen
git submodule add https://github.com/tpope/vim-pathogen .vim/bundle/pathogen

# Fonts
git submodule add git://gist.github.com/1630581.git .fonts/ttf-dejavu-powerline
git submodule add https://github.com/scotu/ubuntu-mono-powerline.git .fonts/ubuntu-mono-powerline
git submodule add https://github.com/pdf/ubuntu-mono-powerline-ttf.git .fonts/ubuntu-mono-powerline-ttf

# Plug-ins
git submodule add https://github.com/taxilian/a.vim.git .vim/bundle/a
git submodule add https://github.com/mileszs/ack.vim .vim/bundle/ack
git submodule add https://github.com/vim-scripts/c.vim.git .vim/bundle/c 
git submodule add https://github.com/vim-scripts/CSApprox.git .vim/bundle/csapprox
git submodule add https://github.com/kien/ctrlp.vim.git .vim/bundle/ctrlp
git submodule add https://github.com/Lokaltog/vim-easymotion .vim/bundle/easymotion
git submodule add https://github.com/tpope/vim-fugitive .vim/bundle/fugitive 
git submodule add https://github.com/tpope/vim-git .vim/bundle/git
git submodule add https://github.com/gregsexton/gitv .vim/bundle/gitv
git submodule add https://github.com/sjl/gundo.vim .vim/bundle/gundo
git submodule add https://github.com/vim-scripts/matchit.zip.git .vim/bundle/matchit
git submodule add https://github.com/sontek/minibufexpl.vim .vim/bundle/minibufexpl
git submodule add https://github.com/vim-scripts/The-NERD-tree .vim/bundle/nerdcommenter
git submodule add https://github.com/scrooloose/nerdcommenter .vim/bundle/nerdtree
git submodule add https://github.com/vim-scripts/pep8 .vim/bundle/pep8
git submodule add https://github.com/Lokaltog/vim-powerline.git .vim/bundle/powerline
git submodule add https://github.com/alfredodeza/pytest.vim .vim/bundle/py.test
git submodule add https://github.com/fs111/pydoc.vim .vim/bundle/pydoc
git submodule add https://github.com/tpope/vim-ragtag .vim/bundle/ragtag
git submodule add https://github.com/sontek/rope-vim .vim/bundle/ropevim
git submodule add https://github.com/shawncplus/skittles_berry.git .vim/bundle/skittles
git submodule add https://github.com/msanders/snipmate.vim .vim/bundle/snipmate
git submodule add https://github.com/altercation/vim-colors-solarized .vim/bundle/solarized
git submodule add https://github.com/rstacruz/sparkup.git .vim/bundle/sparkup
git submodule add https://github.com/ervandew/supertab .vim/bundle/supertab
git submodule add https://github.com/tpope/vim-surround .vim/bundle/surround
git submodule add https://github.com/scrooloose/syntastic.git .vim/bundle/syntastic
git submodule add https://github.com/majutsushi/tagbar.git .vim/bundle/tagbar
git submodule add https://github.com/vim-scripts/TaskList.vim .vim/bundle/tasklist
git submodule add https://github.com/tpope/vim-vividchalk .vim/bundle/vividchalk

echo -e "\033[1mFixing the sparkup submodule folder configuration\033[0m"
ln -sf `pwd`/.vim/bundle/sparkup/vim/ftplugin `pwd`/.vim/bundle/sparkup/ftplugin
ln -sf `pwd`/.vim/bundle/sparkup/sparkup $SCRIPTS/

echo -e "\033[1mUpdating submodules\033[0m"
git submodule update --init
git submodule foreach git submodule init
git submodule foreach git submodule update

echo -e "\033[1mCopying the configurations to $HOME\033[0m"
ln -sf `pwd`/.vim ~/.vim
ln -sf `pwd`/vimrc ~/.vimrc
ln -sf `pwd`/.fonts ~/.fonts

echo -e "\033[1mUpdate Fonts\033[0m"
sudo fc-cache -f -v

echo -e "\033[1mDone.\033[0m"
read
clear
