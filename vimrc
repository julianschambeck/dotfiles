call plug#begin()
" ---- syntax highlight/indent ----
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty' " either
" Plug 'peitalin/vim-jsx-typescript' " or
Plug 'v0lkc/cds.vim'
" ----
Plug 'romainl/vim-cool'
Plug 'dense-analysis/ale'
call plug#end()

" ---- preliminaries ----
syntax on
set autoindent
filetype plugin indent on
colorscheme apprentice
" comments in green
" hi Comment ctermfg=10
" ----
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround
set number
set incsearch
set hlsearch
" smartcase requires ignorecase
set ignorecase
set smartcase
set showcmd
" hide buffer instead of unloading, allows to close modified buffers
set hidden
set wildmenu
set wildmode=list:full
set laststatus=2
set nowrap
nnoremap <SPACE> <Nop>
let mapleader = " "
" use git grep with :grep 
set grepprg=git\ grep\ -n
" switch to alternate file
nnoremap <Space><Space> <C-^>
" Move around splits with e.g. <c-j>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
" cute
nnoremap gb :ls<CR>:b<Space>
nnoremap <c-e> 3<c-e>
nnoremap <c-y> 3<c-y>

" SET PATH
" :find searches for files in path. don't add dirs to path if it should not search
" in them in the first place (think node_modules). 'wildignore' does not apply to path!
" set path+=

" ---- Plugins ----
let g:netrw_list_hide= '.*\.swp$'
let g:netrw_liststyle= 3
let g:cool_total_matches = 1
" ALE LINTING
let g:ale_completion_enabled = 0 " either 1
autocmd FileType javascriptreact,typescriptreact set omnifunc=ale#completion#OmniFunc " or
" not what you think it is
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 0
let g:ale_hover_to_floating_preview = 1
let g:ale_virtualtext_cursor = 'disabled'
let g:ale_warn_about_trailing_whitespace = 0
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_delay  = 0
let g:ale_lint_on_save = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_javascript_eslint_executable = 'eslint --cache'
let g:ale_fixers = {'*': ['prettier']}

" in normal mode CTRL-N is same as j
nnoremap <c-n> :ALENextWrap<cr>
nnoremap <c-p> :ALEPreviousWrap<cr>
nnoremap g1 :ALEFirst<cr>
nnoremap g2 :ALEGoToDefinition<CR>
nnoremap <c-_> :ALELast<CR>

