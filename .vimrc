" GENERAL SETTINGS
set autoindent
set showmatch
set ruler
set laststatus=2
set backspace=indent,eol,start
set showmode
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
set history=1000
set encoding=utf-8
set noswapfile
set hidden
set number numberwidth=3
set wrap linebreak
set nocompatible
set guifont=Hack
color dracula  
syntax on

" Vue Highlighting

au BufRead,BufNewFile *.vue set syntax=vue

" Use a more efficient escape
inoremap jk <ESC>

" Make Ex commands faster
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" MapToggle Function
function MapToggle(key, opt)
  let cmd = ':set '.a:opt.'! \| set '.a:opt."?\<CR>"
  exec 'nnoremap '.a:key.' '.cmd
  exec 'inoremap '.a:key." \<C-O>".cmd
endfunction
command -nargs=+ MapToggle call MapToggle(<f-args>)

" Map Function Toggles

MapToggle <F1> spell
MapToggle <F2> paste
MapToggle <F3> number

" Disable bad habits
let mapleader = ","

" Vundle Setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'dracula/vim'
Plugin 'ervandew/supertab'
Plugin 'gmarik/Vundle.vim'
Plugin 'posva/vim-vue'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-sleuth'
nnoremap <silent> <F4> :NERDTreeToggle<CR>
nnoremap <silent> <leader>1 :NERDTreeToggle<CR>
Plugin 'kien/ctrlp.vim.git'
let g:ctrlp_working_path_mode = 'ar'
let g:ctrlp_extensions = ['dir']
let g:ctrlp_cmd = 'CtrlP'
call vundle#end()            " required
filetype plugin indent on    " required

" supertab settings

" custom macros

let @s = "v/^$
k;sort
" "sort alphabetically until empty line
let g:SuperTabNoCompleteAfter = ['"', "'", '^', '\s']
