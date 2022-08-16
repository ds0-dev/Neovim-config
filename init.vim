set nocompatible
set number
filetype on
filetype plugin on
filetype indent on
syntax on
set cursorline
set ignorecase
set background=dark

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox' 
Plug 'itchyny/lightline.vim'
call plug#end()

colorscheme gruvbox

" remaps
nnoremap <C-p> :GFiles<Cr>
nnoremap <C-f> :Ag<Cr>

inoremap jj <esc>

