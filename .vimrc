", vim config file for Aaron D. Carta 
" 	uses Vundle (http://github.com/VundleVim/Vundle.vim) for plugins
echo ">^.^.< \nMeow!"

" " useful vundle commands {{{
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
" }}}

" plugin commands ---------	 {{{ 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim 
call vundle#begin()

" let Vundle manage itself 
Plugin 'VundleVim/Vundle.vim'

" environment {{{ 
" lots of color schemes
Plugin 'chriskempson/base16-vim' 

" status bar and themes
" Plugin 'powerline/powerline'
Plugin 'bling/vim-airline'

"tree explorer with tab support
Plugin 'scrooloose/nerdtree' 
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdcommenter'

" visually indicate indentation
Plugin 'nathanaelkane/vim-indent-guides'

" markdown tables
Plugin 'dhruvasagar/vim-table-mode'
" }}}

" utilities {{{ " 
" syntax checking
Plugin 'scrooloose/syntastic'

" fast file navigation
Plugin 'wincent/command-t'

" generic refactoring
Plugin 'LucHermitte/vim-refactor'

" text-object like motion for arguments
Plugin 'vim-scripts/argtextobj.vim' 

" edit surroundings (e.g. brackets, quotes) in pairs
Plugin 'tpope/vim-surround'

" use <Tab> for insertion completion
Plugin 'ervandew/supertab'

" text filtering and alignment
Plugin 'godlygeek/tabular'

" fuzzy code completion
"Plugin 'Valloric/YouCompleteMe' 

" fuzzy file, buffer, mru, tag, etc. finder
"Plugin 'crtlpvim/crtlp.vim'

"bash scripting support
Plugin 'WolfgangMehner/bash-support'

" git {{{
" wrapper
Plugin 'tpope/vim-fugitive' 

" indicate line changes
Plugin 'airblade/vim-gitgutter'
"}}}

" syntax-aware commenting
Plugin 'tomtom/tcomment_vim'

" quick & precise movement
Plugin 'easymotion/vim-easymotion'

" support for textual snippets ----------- {{{
Plugin 'garbas/vim-snipmate'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim' 
Plugin 'honza/vim-snippets'
" }}}
" }}}

" {{{ modes
" personal wiki
Plugin 'vim-scripts/vimwiki'

" distraction-free writing
Plugin 'junegunn/goyo.vim'
"}}}

" filetype-specific support {{{
" support for julia
Plugin 'JuliaLang/julia-vim'

" javascript support
Plugin 'pangloss/vim-javascript'

"tex support
Plugin 'lervag/vimtex'

"c support ----------- {{{
Plugin 'WolfgangMehner/c-support'
" browse tags of current file
Plugin 'majutsushi/tagbar'
"C/C++ helper suite
Plugin 'LucHermitte/lh-cpp'
"switch between source and headers
Plugin 'vim-scripts/a.vim'
" }}}

" python ------- {{{
Plugin 'klen/python-mode'
" indentation
Plugin 'vim-scripts/indentpython.vim'
" autocompletion
Plugin 'davidhalter/jedi-vim'
" code folding
Plugin 'tmhedberg/SimpylFold'
"}}}

Plugin 'rstacruz/sparkup'

Plugin 'vim-scripts/YankRing.vim'

Plugin 'jpalardy/vim-slime'

"Plugin 'mtth/scratch.vim;'

Plugin 'kien/rainbow_parentheses.vim'

Plugin 'christoomey/vim-tmux-navigator'
"}}}

call vundle#end()
"}}}

" global settings {{{
"disable vi compatibility
set nocompatible

" enable:
" 	* filetype detection
" 	* filetype-specific scripts (ftplugins)
" 	* filetype-specific indent scripts
filetype plugin indent on

" tab settings {{{
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" }}}

"source vimrc from working dir for project-specific settings
set exrc
set secure 

" unix encoding 
set encoding=utf-8

set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=85

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

nnoremap ; :

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

au FocusLost * :wa

"nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
"nnoremap <leader>a :Ack
"nnoremap <leader>ft Vatzf
"nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
"nnoremap <leader>q gqip
"nnoremap <leader>v V`]
"nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

nnoremap <leader>w <C-w>v<C-w>l

"enable folding {{{
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
"}}}

" window splitting {{{
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H> 
"}}}

" tree ----------{{{
augroup nerdtree
    autocmd!
    autocmd StdinReadPre * let s:std_in=1
    autocmd vimenter * NERDTree " start nerdtree automatically
    
    autocmd bufenter * if (winnr("$")==1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
augroup END
" }}}

" custom commands {{{
let mapleader = ","
let maplocalleader = "\\"
nnoremap <C-n> :NERDTreeToggle<CR> " shortcut to toggle nerdtree 
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"noremap - VDjp 
"inoremap <C-u> <esc>bVe~i
"nnoremap <C-u> bVe~<esc>
"nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
"inoremap jk <esc>

"onoremap p i(
"onoremap b /return<cr>
"onoremap in( :<C-u>normal! f(vi(<cr>
"onoremap il( :<C-u>normal! F)vi(<cr>

"onoremap ih :<C-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>
"onoremap ah :<C-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>
"}}}

"custom abbreviations {{{
iabbrev @@ acarta.math@gmail.com	
iabbrev ccopy Copyright 2017 Aaron D. Carta, all rights reserved
iabbrev ssig -- <cr>Aaron D. Carta<cr>acarta.math@gmail.com
"}}}
"}}}

" gui settings {{{
if has('gui_running')
    syntax enable
    set background=dark
    colorscheme base16-google-dark
    set number
    set lbr
    set wrap
    set shiftround
    set guifont=Inconsolata\ 9
    set guioptions-=T
    set guioptions-=r
else 
    colorscheme default
endif
"}}}

" filetype-specific settings  --{{{

" bash scripting
augroup filetype_sh
    autocmd!
    autocmd FileType sh
augroup END

" Vimscript file settings ----------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker " fold at marker
augroup END
" }}}

"C/C++ file settings -------------------------- {{{
augroup filetype_cpp
    autocmd!
    autocmd FileType cpp set tabstop=4
    autocmd FileType cpp set softtabstop=4
    autocmd FileType cpp set shiftwidth=4
    autocmd FileType cpp set noexpandtab
    autocmd FileType cpp set colorcolumn=110
    autocmd FileType cpp set foldmethod=indent
    autocmd FileType cpp highlight ColorColumn ctermbg=darkgray
augroup END



autocmd FileType cpp nnoremap <buffer> <localleader>c I//<esc>
" }}}

" python file settings (pep8) {{{
au BufNewFile,BufRead *.py
            \ set tabstop=4
            \ set softtabstop=4
            \ set shiftwidth=4
            \ set textwidth=79
            \ set expandtab
            \ set autoindent
            \ set fileformat=unix
            \ match BadWhiteSpace /\s\+$/

augroup filetype_python
    autocmd!
    autocmd FileType python iabbrev <buffer> iff if:<left>
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
augroup END
"}}}

"webdev file settings {{{
au BufNewFile,BufRead *.js, *.html, *.css
            \ set tabstop=2
            \ set softtabstop=2
            \ set shiftwidth=2 

augroup filetype_html
    autocmd!
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
    autocmd BufWritePre,BufRead *.html :normal gg=G
    autocmd BufNewFile,BufRead *.html setlocal nowrap
augroup END

augroup filetype_javascript
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
    autocmd FileType javascript iabbrev <buffer> iff if ()<left>
augroup END

" }}}
"}}}

"jacked from https://github.com/AntJanus/my-dotfiles/blob/master/.vimrc

augroup file_types
    autocmd!
    autocmd BufRead,BufNewFile *.fdoc set filetype=yaml
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.txt set filetype=markdown
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
    autocmd BufNewFile,BufRead *.less set filetype=less
    autocmd BufRead,BufNewFile *.js set ft=javascript syntax=javascript
    autocmd BufRead,BufNewFile *.ts set ft=typescript syntax=typescript
    autocmd BufRead,BufNewFile *.es6 set ft=javascript syntax=javascript
    autocmd BufRead,BufNewFile *.json set ft=json syntax=javascript
    autocmd BufRead,BufNewFile *.twig set ft=htmldjango
    autocmd BufRead,BufNewFile *.rabl set ft=ruby
    autocmd BufRead,BufNewFile *.jade set ft=jade
augroup END

" Whitespace fixes
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

augroup whitespace
    autocmd!
    autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
    autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
    autocmd InsertLeave * match ExtraWhitespace /\s\+$/
    autocmd BufWinLeave * call clearmatches()
augroup END

set undolevels=20
set title

set noerrorbells
set noswapfile
set nobackup

" Tabular
nnoremap <leader>a= :Tabularize /=<CR>
vnoremap <leader>a= :Tabularize /=<CR>
nnoremap <leader>a: :Tabularize /:\zs<CR>
vnoremap <leader>a: :Tabularize /:\zs<CR>

" Custom maps
set pastetoggle=<leader>p
nnoremap <leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

nnoremap <leader>vi :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
nnoremap <leader>re gg=G

" Save commands
noremap  <silent> <C-S> :update<CR> 
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>
noremap <C-x><C-s> :update<Cr> 

" Abbreviations
iabbrev adn and
iabbrev waht what
nnoremap H 00
nnoremap L $
inoremap jk <esc>

" Arrow keys
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

set fileformat=unix
set fileformats=unix,dos

" Abbreviations
"augroup abbreviations
"autocmd!
"autocmd FileType html :iabbrev <buffer> --- &mdash;
"autocmd FileType javascript :iabbrev <buffer> ret return
"augroup END
"
"ConEmu settings

if !empty($CONEMUBUILD)
    set termencoding=utf8
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"

    " set codes for dynamic cursor type with vim modes
    let &t_te="\e[0 q"
    let &t_ti="\e[1 q"
    let &t_EI="\e[1 q"
    let &t_SI="\e[5 q"
    let &t_SR="\e[3 q"

    " fix broken backspace
    inoremap <Char-0x07F> <BS>
    nnoremap <Char-0x07F> <BS>

    "scrollwheel
    inoremap <Esc>[62~ <C-X><C-E>
    inoremap <Esc>[63~ <C-X><C-Y>
    nnoremap <Esc>[62~ <C-E>
    nnoremap <Esc>[63~ <C-Y>

    "fancy airline stuff
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

endif

" Tender
if (has("termguicolors"))
    set termguicolors
endif
