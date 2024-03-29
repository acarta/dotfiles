set hlsearch

set relativenumber

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

set undodir=${HOME}/.config/nvim/undodir
set undofile
set undolevels=100
set undoreload=1000

set backupdir=${HOME}/.config/nvim/backup
set directory=${HOME}/.config/nvim/backup

set ruler

set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set shiftwidth=4
set autoindent
set smartindent
set foldmethod=syntax

syntax on
syntax enable

colorscheme solarized
if strftime("%H") >= 5 && strftime("%H") <= 17
    set background=light
else
    set background=dark
endif

hi! Normal ctermbg=NONE guibg=NONE
hi! Normal ctermbg=NONE guibg=NONE
