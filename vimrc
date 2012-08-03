" ===== Load pathogen bundles =====
filetype off
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()
filetype on
filetype plugin indent on


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


" ===== Variables =====
let snippets_dir = "~/.vim/snippets"    " set the snippets directory for Snipmate
let $JS_CMD='node'                      " Use Node.js for JavaScript interpretation


" ===== Syntax Files ===== 
au BufNewFile,BufRead *.less set filetype=less 


" ===== Colors ===== 
colorscheme capistrano
