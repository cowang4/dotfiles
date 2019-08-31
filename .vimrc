" VimPlug stuff
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'altercation/vim-colors-solarized'
call plug#end()

set nocompatible    " breaks old vi compatibility
set encoding=utf-8  " utf-8 encoding

set termguicolors   " enables terminal truecolor
syntax enable       " enables synax highlighting

" colorscheme
set background=dark
colorscheme solarized

filetype plugin indent on   " turns on filetype detection, with plugin and indent support
set number                  " display line numbers in left margin
set relativenumber          " set relative line numbers in the left margin
set nomodeline              " disable the modelines feature
set wrap                    " turn on line wrapping
set textwidth=80            " line wrap at XX chars
set formatoptions=r         " see :help fo-table
set scrolloff=3             " minimum number of lines to keep above and below the cursor
set autoindent              " keep indentation of previous line on a new line
set showcmd                 " show partial command on bottom
set noshowmode              " don't show mode (use lightline instead)
set hidden                  " allows non-visible buffers to have unsaved changes
set wildmenu                " command-line completion is better
set wildmode=list:longest   " completion style
set backspace=indent,eol,start  " backspace works across lines etc
set laststatus=2            " always use status line
set noswapfile              " don't use swapfiles
set nobackup                " don't make backups before overwriting a file
set history=10              " number of :cmd historys to keep

set incsearch               " show search results as you type
set hlsearch                " highlight the search results
set ignorecase              " ignore case in searchs
set smartcase               " case sensitive search if there's an uppercase
set gdefault                " :subtitute will change all matches in a line

set showmatch               " briefly jump to matching bracket when one is inserted
set mouse=a                 " enable mouse for all modes

set tabstop=4               " number of spaces that a tab is for displaying
set shiftwidth=4            " number of spaces to use for each step of indent
set softtabstop=4           " number of spaces that tab is for editing
set expandtab               " insert mode use spaces instead of tabs

" disable ex mode
nnoremap Q <Nop>
" leader is comma
let mapleader=","
let maplocalleader=","
" ,<space> turns off search highlighting
nnoremap <leader><space> :noh<cr>
" move across wrapped lines
nnoremap j gj
nnoremap k gk
nnoremap <Up> gk
nnoremap <Down> gj
inoremap <Up> <C-o>gk
inoremap <Down> <C-o>gj
" save on focus lost
au FocusLost * :wa
" save with Ctrl-s
nnoremap <C-s> :w<Enter>
inoremap <C-s> <ESC>:w<Enter>
" indent with tab in normal mode
nnoremap <Tab> 0 >>
nnoremap <S-Tab> 0 <<
" system clipboard with leader
nnoremap <leader>y "+y
nnoremap <leader>p "+p
" escape with jj
inoremap jj <ESC>
" escape terminal
tnoremap <Esc> <C-\><C-n>
" fzf keybindings
nnoremap <leader>e :Files<CR>
nnoremap <leader>s :Rg<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>l :Lines<CR>

" filetype settings
au BufNewFile,BufRead *.tex set filetype=tex
let g:filetype_pl="prolog"

" NerdCommenter settings
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDTrimTrailingWhitespace = 1

command! Windows :w

" <leader>c<space> to toggle comments with NerdCommenter

" enables system clipboard buffers
set clipboard+=unnamedplus

