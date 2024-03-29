let g:vimfiler_as_default_explorer=1

" for vimtex
let g:vimtex_compiler_progname='nvr'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" custom setting for clangformat
let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style=file']
\}
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" julia-vim
hi link juliaFunctionCall Identifier
