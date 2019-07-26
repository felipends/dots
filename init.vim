call plug#begin('~/.vim/plugged')

" To get more information about these plugins, take a look at README.md

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-clang'
Plug 'morhetz/gruvbox'
Plug 'https://github.com/jonathanfilip/vim-lucius'
Plug 'airblade/vim-gitgutter'

Plug 'https://github.com/ervandew/supertab'
" vim-sensible
Plug 'tpope/vim-sensible'

" vim-fugitive depends on unite.vim
Plug 'Shougo/unite.vim' | Plug 'tpope/vim-fugitive'

" ctrlp.vim depends on ag.vim (in this configuration)
Plug 'rking/ag.vim' | Plug 'ctrlpvim/ctrlp.vim'

" NERDTree, replacement for vim's browser
Plug 'scrooloose/nerdtree'

" vim-airline and vim-airline themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Vim-bufferline
Plug 'bling/vim-bufferline'

" Syntastic
Plug 'scrooloose/syntastic'

" JavaScript
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug '1995eaton/vim-better-javascript-completion'
Plug 'leafgarland/typescript-vim'
Plug 'https://github.com/ternjs/tern_for_vim.git', {'do': 'npm install'}
" Commenter
Plug 'https://tpope.io/vim/commentary.git'

Plug 'sheerun/vim-polyglot'

Plug 'jiangmiao/auto-pairs'

Plug 'crusoexia/vim-monokai'

" Python
Plug 'davidhalter/jedi-vim'
call plug#end()

map <F3> :NERDTreeToggle<CR>

let g:deoplete#enable_at_startup = 1

filetype plugin on
set omnifunc=syntaxcomplete#Complete

set mouse=a
set nohlsearch
set clipboard+=unnamedplus
set number relativenumber
set cursorline
set wildmode=longest,list,full
set splitbelow splitright

" TABs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Enable syntax highlighting
syntax enable

filetype on
filetype indent on

" Move between windows in normal mode
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

map <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

colorscheme monokai
