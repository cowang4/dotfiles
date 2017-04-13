call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'
Plug 'rust-lang/rust.vim'
call plug#end()

filetype plugin indent on
set termguicolors
set number
set nocompatible
set modelines=0
set wrap
set textwidth=79
set formatoptions=qrn1
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set noswapfile
set nobackup		
set history=50		
set incsearch	
set hlsearch
set ignorecase
set smartcase
set gdefault
set showmatch
set mouse=a
set tabstop=2 
set shiftwidth=2
set softtabstop=2
set expandtab
color molokai

map Q gq   
inoremap <C-U> <C-G>u<C-U>
let mapleader=","
let maplocalleader=","
nnoremap <leader><space> :noh<cr>
nnoremap j gj
nnoremap k gk
nnoremap ; :
au FocusLost * :wa
inoremap jj <ESC>
inoremap hh <ESC>
inoremap kk <ESC>
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-s> :w<Enter>
inoremap <C-s> <ESC>:w<Enter>
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
nnoremap <Tab> 0 >>
nnoremap <S-Tab> 0 <<
map <leader>n :NERDTreeToggle<CR>
nnoremap <leader>y "+y
nnoremap <leader>p "+p
tnoremap <Esc> <C-\><C-n>

au BufNewFile,BufRead *.tex set filetype=tex

set guifont=Ubuntu\ Mono\ 14
set rnu

set spelllang=en

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
