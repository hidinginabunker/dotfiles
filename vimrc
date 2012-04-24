" ===== Load pathogen bundles =====
filetype off
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()
filetype on


" ===== Set Options ==== 
set autoindent
set background=dark
set number
set expandtab 
set tabstop=2
set shiftwidth=2
set nowrap
set hlsearch
syntax on


" ===== Variables =====
let snippets_dir = "~/.vim/snippets"    " set the snippets directory for Snipmate
let $JS_CMD='node'                      " Use Node.js for JavaScript interpretation


" ===== Syntax Files ===== 
au BufNewFile,BufRead *.less set filetype=less 


" ===== Colors ===== 
colorscheme capistrano

" ===== Keyboard Mappings ====
"
"
" Enable code folding for javascript
"function! JavaScriptFold() 
"    setl foldmethod=syntax
"    setl foldlevelstart=1
"    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend
"
"    function! FoldText()
"        return substitute(getline(v:foldstart), '{.*', '{...}', '')
"    endfunction
"    setl foldtext=FoldText()
"endfunction
"au FileType javascript call JavaScriptFold()
"au FileType javascript setl fen
