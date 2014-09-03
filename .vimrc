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

let mapleader = ","

" Vundle Setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround.git'
Plugin 'scrooloose/nerdtree.git'
noremap <silent> <leader>1 :NERDTreeToggle<CR>
Plugin 'kien/ctrlp.vim.git'
let g:ctrlp_working_path_mode = 'ar'
let g:ctrlp_extensions = ['dir']
let g:ctrlp_cmd = 'CtrlP'
call vundle#end()            " required
filetype plugin indent on    " required
