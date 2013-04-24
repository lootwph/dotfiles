DOTFILES
========

Check out submodules:

cd dotfiles
git submodule init
git submodule update


Adding additional submodules (for Vim plugins):

cd dotfiles
git submodule add http://github.com/user/foobundle.git vim/bundle/foobundle

git add .
git ci -m "Added the foo bundle"

