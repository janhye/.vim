""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => For Windows Version
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 下面的内容是 Windows 版的 vim 安装完成后就自动生成的代码，为了在扩平台的目标下
" 保证完整性，最好作如下的处理
if has("win32")
  source $VIMRUNTIME/vimrc_example.vim
  source $VIMRUNTIME/mswin.vim
  behave mswin

  set diffexpr=MyDiff()
  function MyDiff()
    let opt = '-a --binary '
    if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
    if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
    let arg1 = v:fname_in
    if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
    let arg2 = v:fname_new
    if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
    let arg3 = v:fname_out
    if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
    let eq = ''
    if $VIMRUNTIME =~ ' '
      if &sh =~ '\<cmd'
        let cmd = '""' . $VIMRUNTIME . '\diff"'
        let eq = '"'
      else
        let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
      endif
    else
      let cmd = $VIMRUNTIME . '\diff'
    endif
    silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
  endfunction
endif

runtime bundle/vim-pathogen/autoload/pathogen.vim
"let g:pathogen_disabled = ['clang_complete', 'cocoa']
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

" configure Commentary
autocmd FileType objc set commentstring=//\ %s
autocmd FileType objcpp set commentstring=//\ %s
autocmd FileType ruby set commentstring=#\ %s

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

"powerline{
"set guifont=PowerlineSymbols\ for\ Powerline
"set nocompatible
set t_Co=256
"let g:Powerline_symbols = 'fancy'
"}
