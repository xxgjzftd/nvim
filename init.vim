call plug#begin(stdpath('data') . '/plugged')

Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'

call plug#end()

set termguicolors
set background=dark

let g:gruvbox_italic=1
colorscheme gruvbox
" colorscheme molokai

set cursorline
set cursorcolumn
