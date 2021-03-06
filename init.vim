autocmd BufWritePost $MYVIMRC source $MYVIMRC

call plug#begin(stdpath('data') . '/plugged')

Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-vimlsp', 'coc-git']

let g:mapleader=' '

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'

set background=dark
set updatetime=300
" set shortmess+=c

set termguicolors
set ignorecase
set smartcase
set number
set relativenumber
set nowrap
set hidden

let g:gruvbox_italic=1
colorscheme gruvbox
" colorscheme molokai

nnoremap <expr> n 'Nn'[v:searchforward]
nnoremap <expr> N 'nN'[v:searchforward]

nnoremap <leader>l :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>
nnoremap <leader>m :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>
noremap <leader>y "*y
noremap <leader>p "*p

nnoremap [e :<c-u>execute 'move -1-'. v:count1<cr>
nnoremap ]e :<c-u>execute 'move +'. v:count1<cr>

nnoremap [<space> :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap ]<space> :<c-u>put =repeat(nr2char(10), v:count1)<cr>

cnoremap <c-p> <up>
cnoremap <c-n> <down>

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

xnoremap < <gv
xnoremap > >gv

autocmd InsertLeave,WinEnter * set cursorline | set cursorcolumn
autocmd InsertEnter,WinLeave * set nocursorline | set nocursorcolumn

