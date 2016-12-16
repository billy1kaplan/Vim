" vim config

filetype on
syntax on
execute pathogen#infect()

"set omnifunc=syntaxcomplete#Complete
set number

set background=dark
set t_Co=16 
colorscheme solarized

set laststatus=2
let g:airline_theme='dark'

set hidden
set history=100

filetype indent on

set nowrap
set tabstop=4
set shiftwidth=4
autocmd BufNewFile,BufRead *.ml set tabstop=2
autocmd BufNewFile,BufRead *.ml set shiftwidth=2

set expandtab
set smartindent
set autoindent

set hlsearch
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

set showmatch

" able to find Merlin's executable on PATH.
" Need to pull first
if executable('ocamlmerlin') && has('python')
    let s:ocamlmerlin = substitute(system('opam config var share'), '\n$', '', '''') . "/ocamlmerlin"
    execute "set rtp+=".s:ocamlmerlin."/vim"
    execute "set rtp+=".s:ocamlmerlin."/vimbufsync"
endif
