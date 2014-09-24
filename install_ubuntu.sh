#!/bin/sh

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential git curl ruby perl vim-gnome tree \
	python-numpy python-matplotlib python-scipy ipython \
	python3-numpy python3-matplotlib python3-scipy ipython3 \
	libfftw3-dev ctags

# Install gvim, set up vimrc and .vim/
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone https://github.com/vim-scripts/taglist.vim.git 
git clone https://github.com/scrooloose/nerdtree.git 
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/Shougo/neocomplete.vim.git 
git clone https://github.com/Shougo/neosnippet.vim.git 
git clone https://github.com/Shougo/neosnippet-snippets.git 
git clone https://github.com/Lokaltog/vim-easymotion.git 
git clone https://github.com/kien/ctrlp.vim.git 
cd -

git config --global user.email "qzmfranklin@gmail.com"
git config --global user.name "Zhongming Qu"

cp .vimrc ~/
cp .bash_ubuntu ~/
cp c.snip ~/.vim/bundle/neosnippet-snippets/neosnippets/

mkdir ~/bin

fname=~/.bashrc
echo "if [ -f ~/.bash_ubuntu ]; then" >>$fname
echo "    source .bash_ubuntu" >>$fname
echo "fi" >>$fname
