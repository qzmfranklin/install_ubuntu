#!/bin/sh

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
git clone https://github.com/justinmk/vim-syntax-extra.git
#git clone https://github.com/xolox/vim-easytags.git
git clone https://github.com/xolox/vim-misc.git
git clone https://github.com/flazz/vim-colorschemes.git
cd -

git config --global user.email "qzmfranklin@gmail.com"
git config --global user.name "Zhongming Qu"

if [ -f ~/.vimrc ]; then
  echo "~/.vimrc already exists, back up to ~/.vimrc.orig"
  mv ~/.vimrc ~/.vimrc.orig
fi

cp vimrc_`uname` ~/.vimrc

cp c.snip ~/.vim/bundle/neosnippet-snippets/neosnippets/
