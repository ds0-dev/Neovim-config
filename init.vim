set encoding=utf-8
set number
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set cursorline
set ignorecase
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set scrolloff=8
set signcolumn=yes
set shortmess=I


call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'

call plug#end()

colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
filetype on
filetype plugin on
filetype indent on
syntax on


" Use fontawesome icons as signs
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed = ''

" Update sign column every quarter second
set updatetime=250



let mapleader = " "

" Normal Remaps

" Jump between hunks
nmap <Leader>gn <Plug>(GitGutterNextHunk)  " git next
nmap <Leader>gp <Plug>(GitGutterPrevHunk)  " git previous

nnoremap <C-p> :GFiles<Cr>
nnoremap <C-f> :Ag<Cr>

nnoremap <Leader>g :Git<Cr>
nnoremap <Leader>gd :Gdiff<Cr>
nnoremap <Leader>gw :Gwrite<Cr>

nnoremap <C-t> :NERDTreeToggleVCS<CR>
nnoremap <leader>n :NERDTreeFocus<CR>

" Insert Remaps
inoremap jj <esc>

" Visual Remaps
vnoremap <C-f> y<ESC>:Ag<space><C-r>"<cr>
