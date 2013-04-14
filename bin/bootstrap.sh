#!/bin/bash

set -e
dir=$PWD
feez=dotfeez

if [[ ! "$dir/bin/bootstrap.sh" -ef "$0" ]]; then
    echo "Please run 'bin/bootstrap.sh' from root folder"
    exit 1
fi

# set up vim
echo "Setting up Vim"
if [ ! -d $HOME/.vim/bundle/vundle ]; then
    git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
fi

# avoid error with BundleInstall below.
if [ ! -d $HOME/.vim/bundle/vim-colors-solarized ]; then
    git clone https://github.com/altercation/vim-colors-solarized $HOME/.vim/bundle/vim-colors-solarized
fi

files=`find $feez/ -maxdepth 1 -name ".*" -exec basename {} \;`

for file in $files; do
    src="$dir/$feez/$file"
    dst="$HOME/$file"

    if [ -h $dst ]; then
        echo "$dst is already a symbolic link, ignoring..."
        continue
    elif [ -a $dst ]; then
        echo "$dst is a file, skipping"
        continue
    else 
        echo "linking $src to $dst"
        ln -sf $src $dst
    fi
done


vim +BundleInstall +qall!
