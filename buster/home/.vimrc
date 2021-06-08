" To use it, copy it to
"  for Unix based systems (including OSX and Linux):  ~/.vimrc
"  for Windows :  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype plugin indent on   " Load plugins according to detected filetype.
syntax on                   " Enable syntax highlighting.

set number                  " Show line numbers

set tabstop     =4          " Size of a hard tabstop (ts).
set shiftwidth  =4          " Size of an indentation (sw).
set expandtab               " Always uses spaces instead of tab characters (et).
set softtabstop =4          " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
set autoindent              " Copy indent from current line when starting a new line.
set smarttab                " Inserts blanks on a <Tab> key (as per sw, ts and sts).
set shiftround              " >> indents to next multiple of 'shiftwidth'.

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                  " Switch between buffers without having to save first.
set laststatus  =2          " Always show statusline.
set display     =lastline   " Show as much as possible of the last line.

set showmode                " Show current mode in command-line.
set showcmd                 " Show already typed keys when more are expected.

set incsearch               " Highlight while searching with / or ?.
set hlsearch                " Keep matches highlighted.

set ttyfast                 " Faster redrawing.
set lazyredraw              " Only redraw when necessary.

set splitbelow              " Open new windows below the current window.
set splitright              " Open new windows right of the current window.

"set cursorline              " Find the current line quickly.
set wrapscan                " Searches wrap around end-of-file.
set report      =0          " Always report changed lines.
set synmaxcol   =200        " Only highlight the first 200 columns.

set list                    " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
    let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
    let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" Put all temporary files under the same directory.
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
set viminfo     ='100,n$HOME/.vim/files/info/viminfo

