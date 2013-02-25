set background=dark
colorscheme solarized

syntax on
filetype indent plugin on
filetype plugin indent on

set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4

autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

