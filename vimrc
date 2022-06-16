" Use vim-plug as plugin manager.
call plug#begin()
Plug 'NLKNguyen/papercolor-theme'
" Initialize plugin system
call plug#end()

syntax on
filetype plugin indent on
set background=dark
colorscheme desert
highlight Comment ctermfg=DarkGreen
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set shiftround
set autoindent
set number
set ruler
" Only do backup before writing a file.
set nobackup
set writebackup
" Allow unsaved background buffers and remember marks/undo for them.
set hidden
set showmatch
" Current workaround for memory overflow in .md files. 
set mmp=5000
set incsearch
set hlsearch
" Keep more context when scrolling off the end of a buffer.
set scrolloff=3
" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start
set showcmd
set autoread
" Always show the status line.
set laststatus=2

" Edit vimrc file.
" Usage is :Edrc
command! Edrc edit $MYVIMRC
nnoremap <Space>q :q!<cr>
nnoremap <Space>w :w<cr>
" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
" List buffers.
nnoremap <Space>f :ls<CR>
" Previous buffer.
nnoremap ä :bprev<CR>
" Next buffer
nnoremap ö :bnext<CR>
" Close current buffer.
nnoremap Q :bd!<CR>
" Yank to clipboard.
nnoremap <Space>y "+y
vmap <Space>y "+y
" Yank whole line to clipboard. 
nnoremap <Space>Y "+Y
" Close all other splits.
nnoremap <Space>o :only<cr>
" Move updown by visual (wrapped) lines instead.
noremap j gj
noremap k gk
" Unhighlight search.
nnoremap <silent> ,<Space> :nohlsearch<CR>
" Paste from yank register.
nnoremap <Space>p "0p
nnoremap <Space>h <<
nnoremap <Space>l >>
" Easily indent and deindendt visually selected blocks.
vnoremap <Space>h <gv
vnoremap <Space>l >gv
" Go to tag under the cursor.
nnoremap <space>g <c-]>
" To jump to marks with ` on german keyboard layout.
nmap à `a
nmap Á 'A
nmap À `A
nmap ç 'c
nmap Ç 'C
nmap é 'e
nmap è `e
nmap É 'E
nmap È `E
nmap í 'i
nmap ì `i
nmap Í 'I
nmap Ì `I
nmap ó 'o
nmap ò `o
nmap Ó 'O
nmap Ò `O
nmap ú 'u
nmap ù `u
nmap Ú 'U
nmap Ù `U
