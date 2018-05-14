syntax enable

call plug#begin('~/.local/share/nvim/plugged')

" Plug 'Valloric/YouCompleteMe'

"Fuzzy file and buffer finder
Plug 'ctrlpvim/ctrlp.vim'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-commentary'

Plug 'airblade/vim-gitgutter'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'dhruvasagar/vim-table-mode'

Plug 'vim-syntastic/syntastic'

Plug 'lervag/vimtex'

Plug 'jpalardy/vim-slime'

Plug 'christoomey/vim-tmux-navigator'

Plug 'JuliaEditorSupport/julia-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'bling/vim-bufferline'

Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'

call plug#end()

colorscheme gruvbox 
set background=dark

let g:airline_theme='distinguished'
let g:airline#extensions#tabline#enabled = 1

nnoremap ; :

set relativenumber

set paste
