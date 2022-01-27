set number
let mapleader = ","
set mouse=v
set tabstop=4
set autoindent
set wildmode=longest,list
syntax on
set ttyfast

call plug#begin("!/.vim/plugged")

Plug 'deoplete-plugins/deoplete-clang'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'preservim/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'dense-analysis/ale'
Plug 'sbdchd/neoformat'
call plug#end()

let g:deoplete#enable_at_startup = 1
syntax enable

:nnoremap <silent> yf :let @+=expand('%:p')<CR>
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

let g:ale_linters = {
    \ 'python': ['pylint'],
    \ 'vim': ['vint'],
    \ 'cpp': ['clang'],
    \ 'c': ['clang']
\}

let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{IndentWidth: 4}"']
\}
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']

	augroup fmt
  autocmd!
augroup END	
inoremap " ""<left>
inoremap ' ''<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
