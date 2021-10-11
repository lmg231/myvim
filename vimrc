set fileencodings=ucs-bom,utf-8,gbk,gb2312,cp936,gb18030,euc-jp
set encoding=utf-8
set termencoding=utf-8
set formatoptions+=m
set formatoptions+=B

filetype plugin indent on
syntax on
set nocompatible
set autoread
set shortmess+=c

set ruler
set number
set wrap
set showcmd
set cmdheight=1
set showmode
set showmatch
set matchtime=2

set hlsearch
set incsearch
set ignorecase
set smartcase

set mouse-=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set shiftround
set listchars=tab:▸\ ,trail:▫

set cursorcolumn
set cursorline
set scrolloff=5

set t_Co=256
set termguicolors
set background=light
colorscheme evening

nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

nnoremap <F2> :set nu! nu?<CR>
nnoremap <F3> :set list! list?<CR>
nnoremap <F4> :set paste! paste?<CR>

autocmd BufWritePost $MYVIMRC source $MYVIMRC
