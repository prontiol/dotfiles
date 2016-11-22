" General
set nocompatible                  " behave like vim, not like vi
set ttyfast                       " we have fast terminal
set noerrorbells                  " no error bells, please
set shell=bash                    " vim internal shell
set shellcmdflag=--norc           " vim internal shell command line arguments
set fileformat=unix               " unix line endings (e.g. \n) for new files
set fileformats=unix

" Encodings
set encoding=utf-8                " file encoding for new files
set fileencodings=utf8,cp1251     " file encodings for existing files

" Editor
set autoread                      " watch for file changes
set noautowrite                   " don't automatically write on :next
set autoindent smartindent        " auto/smart indents
set smarttab                      " smart tab width
set expandtab                     " expand tabs to spaces
set tabstop=2                     " tab width for files with tabs
set softtabstop=2                 " virtual tab stop
set shiftwidth=2                  " autoindent step width
set backspace=indent,eol,start    " set backspace to delete indentation, line breaks and so on
set history=64                    " history size
set paste                         " no autoindent on paste
set hidden                        " allows hiding unsaved buffers

" Searching
set incsearch                     " incremental search
set ignorecase                    " ignore case on search
set hlsearch                      " highlight search results
set showmatch                     " show matching braces
set diffopt=filler,iwhite         " ignore whitespace while searching

" UI
set lazyredraw                    " optimized redraw (for slow connections)
set showmode                      " show mode on the status line
set showcmd                       " show the input of an incomplete command
set ruler                         " show current position on the status line
set scrolloff=5                   " keep at least 5 lines above/below
set sidescrolloff=5               " keep at least 5 characters left/right

" Syntax highlight
filetype on                       " enable file type detection
filetype plugin on
syntax enable                     " enable syntax highlight (based on filetype detected)

" Colors
set t_Co=256A                     " enable 256 colors support
set background=dark               " enable dark background and light colors
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
colorscheme solarized

