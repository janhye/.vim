runtime bundle/vim-pathogen/autoload/pathogen.vim
" let g:pathogen_disabled = ['vim-airline']
execute pathogen#infect()

filetype on
filetype plugin on
filetype indent on

syntax on
set background=dark nocompatible

let mapleader=","
nmap <leader>f :CommandT<CR>
nmap <leader>t :NERDTree<CR>

"configure Vim to open a file at the last edited location
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |
                     \ exe "normal g'\"" | endif

let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936

set nocompatible             " Disable vi-compatibility
set laststatus=2             " Always show the statusline
set encoding=utf-8           " Necessary to show Unicode glyphs
set hidden                   " 允许在有未保存的修改时切换缓冲区
set backspace=2              " 设置退格键可用
set tabstop=2                " 设置Tab键的宽度        [等同的空格个数]
set expandtab                " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set shiftwidth=2             " 换行时行间交错使用2空格
set cindent shiftwidth=2     " 自动缩进2空格
set autoindent               " 自动对齐
set smartindent              " 智能自动缩进
set writebackup              " 设置无备份文件
set nobackup
set synmaxcol=188            " Syntax coloring lines that are too long just slows down the world
set ttyfast                  " u got a fast terminal
set ttyscroll=3
set lazyredraw               " to avoid scrolling problems
set hlsearch                 " highlight all search matches
set guioptions-=r
set guioptions-=L

if has("statusline")
 set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif
