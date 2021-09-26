set fileencodings=ucs-bom,utf-8,gbk,gb2312,cp936,gb18030,euc-jp
set encoding=utf-8
set termencoding=utf-8
set formatoptions+=m
set formatoptions+=B

set nocompatible              
set autoread                 
set shortmess+=c

set ruler                    
set number                   
set wrap
set showcmd                  
set cmdheight=2
set showmode                 
set showmatch                
set matchtime=2             

set hlsearch                 
set incsearch                
set ignorecase                
set smartcase                 

set mouse-=a
let &t_ut=''
set expandtab
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

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'frazrepo/vim-rainbow'
"Plug 'davidhalter/jedi-vim'
Plug 'dense-analysis/ale'
call plug#end()

set t_Co=256
"set termguicolors
set background=dark
colorscheme gruvbox 

nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

nnoremap <F2> :set nu! nu?<CR>
nnoremap <F3> :set list! list?<CR>
nnoremap <F4> :set paste! paste?<CR>
nnoremap <F5> :call RUN()<CR>
func! RUN()
    exec 'w'
    if &filetype ==# 'python'
        exec '!python %'
	elseif &filetype ==# 'javascript'
		exec '!node %'
    elseif &filetype ==# 'sh'
        exec '!bash %'
    endif
endfunc

"vim-airline
set ambiwidth=double
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#tabline#formatter = 'unique_tail'
"vim-rainbow
let g:rainbow_active = 1
let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

"emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Z>'

"ale
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚡' 
let g:ale_statusline_format = ['✘ %d', '⚡ %d', '✔ OK']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
autocmd BufWritePost $MYVIMRC source $MYVIMRC