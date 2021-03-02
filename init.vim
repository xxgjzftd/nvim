autocmd BufWritePost $MYVIMRC source $MYVIMRC

call plug#begin(stdpath('data') . '/plugged')

Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'

call plug#end()

let g:mapleader=' '
let g:airline#extensions#tabline#enabled = 1

set background=dark
set termguicolors
set ignorecase
set smartcase
set number
set nowrap

let g:gruvbox_italic=1
colorscheme gruvbox
" colorscheme molokai

nnoremap <expr> n 'Nn'[v:searchforward]
nnoremap <expr> N 'nN'[v:searchforward]

cnoremap <c-p> <up>
cnoremap <c-n> <down>

nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>
nnoremap <leader>m :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>
noremap <leader>y "*y
noremap <leader>p "*p

nnoremap [e :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e :<c-u>execute 'move +'. v:count1<cr>

nnoremap [<space> :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space> :<c-u>put =repeat(nr2char(10), v:count1)<cr>

xnoremap < <gv
xnoremap > >gv

autocmd InsertLeave,WinEnter * set cursorline | set cursorcolumn 
autocmd InsertEnter,WinLeave * set nocursorline | set nocursorcolumn



