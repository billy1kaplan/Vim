# vim config


filetype on
syntax on
execute pathogen#infect()

set number

set background=dark

colorscheme solarized

set laststatus=2
let g:airline_theme='dark'

set hidden
set history=100

filetype indent on

set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

set hlsearch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

set showmatch
