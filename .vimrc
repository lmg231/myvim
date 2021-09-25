set fileencodings=ucs-bom,utf-8,gbk,gb2312,cp936,gb18030,euc-jp
set encoding=utf-8
set termencoding=utf-8
set formatoptions+=m
set formatoptions+=B

set nocompatible                " don't bother with vi compatibility "
set autoread                    " reload files when changed on disk, i.e. via `git checkout` "
set shortmess+=c

set ruler                       " show the current row and column "
set number                      " show line numbers "
set wrap
set showcmd                     " display incomplete commands "
set cmdheight=2
set showmode                    " display current modes "
set showmatch                   " jump to matches when entering parentheses "
set matchtime=2                 " tenths of a second to show the matching parenthesis "

set hlsearch                    " highlight searches "
set incsearch                   " do incremental searching, search as you type "
set ignorecase                  " ignore case when searching "
set smartcase                   " no ignorecase if Uppercase char present "

set mouse-=a
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set shiftround
set listchars=tab:>-,trail:-

set cursorcolumn
set cursorline

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'frazrepo/vim-rainbow'
Plug 'dense-analysis/ale'
call plug#end()

set t_CO=256
set termguicolors
set background=light
colorscheme gruvbox

nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <F2> :set nu! nu?<CR>
nnoremap <F3> :set list! list?<CR>
nnoremap <F4> :set paste! paste?<CR>
map <F5> :call PRUN()<CR>
func! PRUN()
    exec 'w'
    if &filetype ==# 'python'
        exec '!python %'
	elseif &filetype ==# 'javascript'
		exec '!node %'
    endif
endfunc

"vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
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
let g:ale_set_highlights = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 1

autocmd BufWritePost $MYVIMRC source $MYVIMRC
