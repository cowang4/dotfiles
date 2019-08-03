" VimPlug stuff
call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'altercation/vim-colors-solarized'
call plug#end()

set nocompatible    " breaks old vi compatibility

set t_Co=256    " terminal colors to 256
syntax enable   " enables synax highlighting
set background=dark
colorscheme solarized
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

filetype plugin indent on
set termguicolors
set number
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
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

map Q gq
inoremap <C-U> <C-G>u<C-U>
let mapleader=","
let maplocalleader=","
nnoremap <leader><space> :noh<cr>
nnoremap j gj
nnoremap k gk
nnoremap <Up> gk
nnoremap <Down> gj
inoremap <Up> <C-o>gk
inoremap <Down> <C-o>gj
au FocusLost * :wa
inoremap jj <ESC>
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
nnoremap <leader>/ <leader>c<space>
vnoremap <leader>/ <leader>c<space>
nnoremap <leader>e :Files<CR>
nnoremap <leader>s :Rg<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>l :Lines<CR>

au BufNewFile,BufRead *.tex set filetype=tex
let g:filetype_pl="prolog"

set rnu

set spelllang=en

let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDTrimTrailingWhitespace = 1

set noshowmode
command! Windows :w

" <leader>c<space> NERD Commenter Toggle Comment

set clipboard+=unnamedplus

set path+=**

" Just search on the internet for what these commands do.
