set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set relativenumber
set number
set termguicolors
let mapleader = ","
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <Nop>
noremap <Right> <NOP>
imap  <S-Tab> <C-X><C-O>


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
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'hzchirs/vim-material'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

Plugin 'flazz/vim-colorschemes'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/indentpython.vim'
"Python autocomplete- TODO: Does not work right now for some reason
Plugin 'davidhalter/jedi-vim'

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

"Latex settings
Plugin 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0


Plugin 'KeitaNakamura/tex-conceal.vim'
set conceallevel=1
let g:tex_conceal="abdmg"


filetype indent on
set sw=2
set iskeyword+=:

Plugin 'dylanaraps/wal.vim'

"Removes Trailing whitespace
Plugin 'bronson/vim-trailing-whitespace'
call vundle#end()

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:vimtex_fold_enabled=1
set fillchars=fold:\ 
syntax on

colorscheme hybrid
set background=dark
hi Conceal guibg=NONE
hi Folded ctermbg=NONE guibg=NONE


if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

"set cursorline

filetype plugin indent on    " required
