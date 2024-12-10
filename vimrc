call plug#begin()
" ------ SYNTAX HIGHLIGHTING ------
" js highlight/indentation
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
" .jsx support
Plug 'maxmellon/vim-jsx-pretty'
" .tsx support
" Plug 'peitalin/vim-jsx-typescript'
" ------------
Plug 'romainl/vim-cool'
Plug 'dense-analysis/ale'
Plug 'v0lkc/cds.vim'
call plug#end()

" ------ PRELIMINARIES ------
syntax on
set autoindent
filetype plugin indent on
colorscheme apprentice
" comments in green
" hi Comment ctermfg=10
packadd cfilter
" ------------
set tabstop=4
set softtabstop=2
set shiftwidth=2
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
" use git-grep with :grep 
set grepprg=git\ grep\ -n
" switch to alternate file
nnoremap <Space><Space> <C-^>
" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap gb :ls<CR>:b<Space>
nnoremap <c-e> 3<c-e>
nnoremap <c-y> 3<c-y>


" ------ PREPARE PATH ------
" :find searches for files in PATH, be precise/granular. don't add dirs if it should not search
" in them in the first place (think node_modules). 'wildignore' does not apply to PATH!
" set path+=
" ------------

" ------ PLUGINS ------
let g:netrw_list_hide= '.*\.swp$'
let g:netrw_liststyle= 3

let g:cool_total_matches = 1

" ALE CONFIG
" next two is either or
let g:ale_completion_enabled = 0
autocmd FileType javascriptreact,typescriptreact set omnifunc=ale#completion#OmniFunc
let g:ale_completion_autoimport = 1
let g:ale_sign_column_always = 0
let g:ale_hover_to_floating_preview = 1
let g:ale_virtualtext_cursor = 'disabled'
let g:ale_warn_about_trailing_whitespace = 0
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_delay  = 0
let g:ale_lint_on_save = 1
" let g:ale_linters_explicit = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_javascript_eslint_executable = 'eslint --cache'
" let g:ale_linters = {'javascript': [], 'typescript': ['tsserver', 'eslint'], 'typescriptreact': ['tsserver', 'eslint']}
let g:ale_fixers = {'javascript': ['prettier'], 'json': ['prettier'], 'typescript': ['prettier'], 'typescriptreact': ['prettier']}
nnoremap g1 :ALEFirst<cr>
" to use CTRL-N in mappings, do e.g. <C-N> or <c-n>
" CTRL-N is synonym for 'j' command in normal mode
nnoremap <c-n> :ALENextWrap<cr>
nnoremap <c-p> :ALEPreviousWrap<cr>
nnoremap g2 :ALEGoToDefinition<CR>
nnoremap g3 :ALEDetail<CR>
nnoremap g4 :ALEHover<CR>
nnoremap <c-_> :ALELast<CR>
" ------------
