#!/bin/sh

mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/bundle

command -v git 2>&1 || { echo >&2 " git is required for this script, but it's not installed." ; exit 1; }
command -v curl 2>&1 || { echo >&2 " curl is required for this script, but it's not installed." ; exit 1; }
command -v ctags 2>&1 || { echo >&2 " ctags is required for the TagBar plugin, but it's not installed." ; exit 1; }

# Pull our vimrc
# No-longer doing this.  I'll just stuff the .vimrc in this repo and pull it
#curl -LSso ~/.vimrc https://s3.amazonaws.com/aws-website-my-vimrc-v3old/.vimrc

# Install pathogen
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install NERDTree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# Install Tagbar
git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar

# Install minibufexpl
git clone https://github.com/fholgado/minibufexpl.vim.git ~/.vim/bundle/minibufexpl

# Install colors
git clone https://github.com/vim-scripts/Colour-Sampler-Pack.git ~/.vim/bundle/Colour-Sampler-Pack

echo "Don't forget to run :helptags on the ~/.vim/bundle/<plugin>/doc folders!"

