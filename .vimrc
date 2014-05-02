""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => For Windows Version
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ����������� Windows ��� vim ��װ��ɺ���Զ����ɵĴ��룬Ϊ������ƽ̨��Ŀ����
" ��֤�����ԣ���������µĴ���
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
call pathogen#infect()
Helptags

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

set nocompatible             " Disable vi-compatibility
set laststatus=2             " Always show the statusline
set encoding=utf-8           " Necessary to show Unicode glyphs
set hidden                   " ��������δ������޸�ʱ�л�������
set backspace=2              " �����˸������
set tabstop=2                " ����Tab���Ŀ��        [��ͬ�Ŀո����]
set expandtab                " ��Tab�Զ�ת���ɿո�    [��Ҫ����������Tab��ʱ��ʹ�� Ctrl+V + Tab]
set autoindent               " �Զ�����
set ai!                      " �����Զ�����
set smartindent              " �����Զ�����
set shiftwidth=2             " ����ʱ�м佻��ʹ��2�ո�
set cindent shiftwidth=2     " �Զ�����2�ո�
set writebackup              " �����ޱ����ļ�
set nobackup
set synmaxcol=188            " Syntax coloring lines that are too long just slows down the world
set ttyfast                  " u got a fast terminal
set ttyscroll=3
set lazyredraw               " to avoid scrolling problems
set hlsearch                 " highlight all search matches

"powerline{
"set guifont=PowerlineSymbols\ for\ Powerline
"set nocompatible
set t_Co=256
"let g:Powerline_symbols = 'fancy'
"}
