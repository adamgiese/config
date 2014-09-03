" GENERAL SETTINGS
set autoindent
set showmatch
set ruler
set laststatus=2
set backspace=indent,eol,start
set showmode
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set history=1000
set encoding=utf-8
set noswapfile
set hidden
set number numberwidth=3
set wrap linebreak
set nocompatible

" Use a more efficient escape
inoremap jk <ESC>

" Make Ex commands faster
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" Disable bad habits
inoremap <ESC> <NOP>

nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>

inoremap <Left> <NOP>
inoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>

let mapleader = ","

