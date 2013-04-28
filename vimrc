" vimrc 
"
" vundle 
    set nocompatible
    filetype off
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    Bundle 'gmarik/vundle'
    Bundle 'altercation/vim-colors-solarized'
    Bundle 'Lokaltog/vim-powerline'
    Bundle 'Lokaltog/vim-easymotion'
    Bundle 'vim-scripts/taglist.vim'
    Bundle 'vim-scripts/cscope.vim'
    Bundle 'derekwyatt/vim-fswitch.git'

    filetype plugin indent on
    syntax on

" appearance 
    syntax on
    set background=light
    call togglebg#map("<F5>")
    colorscheme solarized
    set number

" keybindings 
    let mapleader = ","
    let maplocalleader = "\\"

    noremap <leader>_ ddP
    noremap <leader>- ddp

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
    nnoremap <leader>v :vsplit $MYVIMRC<cr>
    nnoremap <leader>r :source $MYVIMRC<cr>


augroup misc
    autocmd!
    autocmd FileType text setlocal nonumber
augroup END

augroup filetype_python 
    autocmd!
"    autocmd FileType python :iabbrev <buffer> if if:<left>
augroup END

augroup filetype_htm 
    autocmd!
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

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

" formatting 
    set autoindent
    set shiftwidth=4
    set expandtab
    set tabstop=4
    set softtabstop=4
    set smarttab

" abbreviations 
    iabbrev teh the

" powerline
    let g:Powerline_symbols = 'unicode'
    set laststatus=2