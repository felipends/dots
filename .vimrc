set number relativenumber
set tabstop=4 smarttab
set softtabstop=4
set shiftwidth=4

set splitbelow splitright

set cursorline
set mouse=a
filetype indent on

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

call plug#begin('~/.vim/autoload')
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'json', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'pangloss/vim-javascript'
Plug 'storyn26383/vim-vue'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'https://github.com/justmao945/vim-clang.git'
Plug 'http://github.com/ervandew/supertab'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:clang_c_options = '-std=gnu11'
let g:airline_theme='minimalist'

colorscheme sierra
