runtime bundle/vim-pathogen/autoload/pathogen.vim
let g:pathogen_disabled = ['clang_complete']
call pathogen#infect()
Helptags

syntax on
set background=dark nocompatible

let mapleader=","
nmap <leader>f :CommandT<CR>

"configure Vim to open a file at the last edited location
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                     \ exe "normal g'\"" | endif
