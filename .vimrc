filetype off
call pathogen#helptags()
call pathogen#infect()
filetype plugin indent on
set nocompatible
set modelines=0
set tabstop=2
set shiftwidth=2
imap <S-Tab> <C-o><<
nmap <S-Tab> <C-o><<
nmap <Tab> <C-o>>>
set softtabstop=2
set expandtab
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
set nobackup		" do not keep a backup file, use versions instead
set history=50		" keep 50 lines of command line history
set incsearch		" do incremental searching
set hlsearch
map Q gq   
inoremap <C-U> <C-G>u<C-U>
let mapleader=","
set ignorecase
set smartcase
set gdefault
set incsearch
set hlsearch
set showmatch
nnoremap <leader><space> :noh<cr>
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
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
set mouse=a
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
colorscheme mustang
set guifont=Ubuntu\ Mono\ 12
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:yankring_history_dir = '$HOME/.vim'
set ambiwidth=double
set rnu
au BufNewFile,BufRead *.tex set filetype=tex
