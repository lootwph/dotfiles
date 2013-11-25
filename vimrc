" vimrc 

" vundle 
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Valloric/YouCompleteMe'
Bundle 'rhysd/vim-clang-format'
Bundle 'scrooloose/syntastic'
Bundle 'flazz/vim-colorschemes'

filetype plugin indent on
syntax on

set mouse=a
set t_Co=256
set background=dark
let g:solarized_termcolors= 256
let g:solarized_termtrans = 1
colorscheme solarized
call togglebg#map("<F5>")

set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set smarttab
autocmd FileType * setlocal formatoptions-=cro 

set cursorline
set colorcolumn=80
set laststatus=2
set encoding=utf-8 
set ttimeoutlen=50
set backspace=indent,eol,start

let mapleader = ","
let maplocalleader = "\\"

" make the alt key work in console vim
" this is stupid but everything else i've tried breaks readline
set <m-k>=k
set <m-j>=j

" move lines around (eats z mark)
nnoremap <m-j> mz:m+1<cr>`z
nnoremap <m-k> mz:m-2<cr>`z
vnoremap <m-j> :m'>+<cr>`<my`>mzgv`yo`z
vnoremap <m-k> :m'<-2<cr>`>my`<mzgv`yo`z

nnoremap j gj
nnoremap k gk
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

nnoremap <leader>v :edit $MYVIMRC<cr>
nnoremap <leader>r :source $MYVIMRC<cr>
nnoremap <leader>b :edit ~/.bashrc<cr>

" C++ sanity
augroup filetype_cpp 
    autocmd!
    set cindent
    set cinoptions+=g0
augroup END

let g:clang_format#code_style = "google"
let g:clang_format#style_options = { 
            \ "AccessModifierOffset" : -4,
            \ "Standard" : "C++11"}

