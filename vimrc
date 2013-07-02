" vimrc 

" vundle 
    set nocompatible
    filetype off
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    " github repos
    Bundle 'gmarik/vundle'
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'vim-scripts/taglist.vim'
    Bundle 'vim-scripts/cscope.vim'
    Bundle 'davidhalter/jedi-vim'
    Bundle 'sjl/gundo.vim'
"    Bundle 'bling/vim-bufferline'
    Bundle 'bling/vim-airline'
    " sudo pip install flake8
    Bundle 'nvie/vim-flake8'

    " Bundle 'L9'
    " Bundle 'FuzzyFinder'
    " Bundle 'Lokaltog/vim-powerline'
    " Bundle 'Lokaltog/vim-easymotion'
    " Bundle 'derekwyatt/vim-fswitch.git'
    " Bundle 'sontek/minibufexpl.vim'
    " Bundle 'kien/ctrlp.vim'
    " Bundle 'kien/rainbow_parentheses.vim'
    " Bundle 'Shougo/unite.vim'


    filetype plugin indent on
    syntax on

" appearance 
    syntax on
    set background=dark
    colorscheme solarized
    call togglebg#map("<F5>")

    " enable horizontal highlight of cursor line
    set cursorline

    " H to toggle
    "nnoremap H :set cursorline!<CR>

    " highlight lines over 80 wide
    "highlight OverLength ctermbg=red ctermfg=white 
    "match OverLength /\%81v.\+/

    " show vertical column at 80 instead
    set colorcolumn=80

" statusbar
"    let g:Powerline_symbols = 'unicode'
    set laststatus=2
    set ttimeoutlen=50
    set t_Co=256
    set lazyredraw 


" line numbers
    " enable by default
    set number
    " F2 to toggle on/off
    nnoremap <F2> :set nonumber!<CR>
"    autocmd InsertEnter * :set number
"    autocmd InsertLeave * :set relativenumber



" usability
"    set mouse=a

" keybindings 
    let mapleader = ","
    let maplocalleader = "\\"


    " in insert mode, upper-case current word
    inoremap <leader><c-u> <esc> viwUi
    " in insert mode, lower-case current word
    inoremap <leader><c-l> <esc> viwui

    " in normal mode, upper-case current word
    nnoremap <leader><c-u> viwU<esc>
    " in normal mode, lower-case current word
    nnoremap <leader><c-l> viwu<esc>

    " moving around in splits:
    noremap <c-h> <c-w>h
    noremap <c-j> <c-w>j
    noremap <c-k> <c-w>k
    noremap <c-l> <c-w>l

    " <leader>" to "surround" word in "quotes"
    nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

    " <leader>' to 'surround' word in 'quotes'
    nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

    " surround last visual selection in "quotes"
    vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>

    " surround last visual selection in 'quotes'
    vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>

    " vimrc stuff 
    nnoremap <leader>v :edit $MYVIMRC<cr>
    nnoremap <leader>r :source $MYVIMRC<cr>

    " better up/down on long lines
    nnoremap j gj
    nnoremap k gk




augroup filetype_c_cpp
    autocmd!
    autocmd FileType c,cpp nnoremap <F3> :TlistToggle<CR>
    autocmd FileType c,cpp nnoremap <silent> <leader>of :FSHere<cr>
    autocmd FileType c,cpp nnoremap <silent> <leader>ol :FSRight<cr>
    autocmd FileType c,cpp nnoremap <silent> <leader>oL :FSSplitRight<cr>
    autocmd FileType c,cpp nnoremap <silent> <leader>oh :FSLeft<cr>
    autocmd FileType c,cpp nnoremap <silent> <leader>oH :FSSplitLeft<cr>
    autocmd FileType c,cpp nnoremap <silent> <leader>ok :FSAbove<cr>
    autocmd FileType c,cpp nnoremap <silent> <leader>oK :FSSplitAbove<cr>
    autocmd FileType c,cpp nnoremap <silent> <leader>oj :FSBelow<cr>
    autocmd FileType c,cpp nnoremap <silent> <leader>oJ :FSSplitBelow<cr>
augroup END

augroup filetype_tex
    autocmd!
    " bold current word
    autocmd FileType tex nnoremap <silent> <leader>b viw<esc>a}<esc>hbi{\bf <esc>lel
augroup END

" formatting 
set autoindent
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set smarttab


" disable shitty defaults
    " don't highlight matching parentheses
    let g:loaded_matchparen=1
    " don't continue comments upon <cr>
    autocmd FileType * setlocal formatoptions-=cro 
