set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set relativenumber
set number
set colorcolumn=80
let mapleader = ","
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <Nop>
noremap <Right> <NOP>


"Indentation settings
au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
   \set expandtab
   \set autoindent
   \set fileformat=unix

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Git plugin
Plugin 'tpope/vim-fugitive'

"Python autoindent
Plugin 'vim-scripts/indentpython.vim'

"Python all-in-one. Could replace all the ones below!!
"Plugin 'python-mode/python-mode'

"Python syntax checker
"Plugin 'vim-syntastic/syntastic'
"Plugin 'nvie/vim-flake8'
"let python_highlight_all=1

"Python autocomplete- TODO: Does not work right now for some reason
Plugin 'davidhalter/jedi-vim'

"Supposed to be for autocomplete as well
"Plugin 'ncm2/ncm2'
" Plugin 'roxma/nvim-yarp'
"autocmd BufEnter * call ncm2#enable_for_buffer()

"TODO: Not exactly sure what this is
Plugin 'git://git.wincent.com/command-t.git'

"TODO: Not exactly sure what this is
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

"Colors
Plugin 'flazz/vim-colorschemes'
Plugin 'rafi/awesome-vim-colorschemes'

"Filebar on the side
Plugin 'scrooloose/nerdtree'

"TODO: Learn how to use this or REMOVE it if you're not gonna use it
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

"Folding classes and methods
Plugin 'tmhedberg/SimpylFold'

"Minimalist coding: Highlights relevant sections of the code
Plugin 'junegunn/limelight.vim'
Plugin 'junegunn/goyo.vim'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"Removes Trailing whitespace
Plugin 'bronson/vim-trailing-whitespace'
call vundle#end()

syntax on
colorscheme molokai
filetype plugin indent on    " required
