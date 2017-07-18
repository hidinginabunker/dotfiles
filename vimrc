" ===== Load pathogen ===
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" ===== Set Options ==== 
set autoindent
set background=dark
set number
set expandtab 
set tabstop=2
set shiftwidth=2
set nowrap
set hlsearch
set autochdir "Set the current working dir to the open file
syntax on
