set background=dark

"colorscheme lucius
"colorscheme mustang
colorscheme solarized
"colorscheme distinguished
"colorscheme twilight

syntax on
filetype indent plugin on
filetype plugin indent on

inoremap jj <ESC>

let mapleader = "<SPACE>"

set nocompatible
set number
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set textwidth=0
set tw=0
set showcmd

if version >= 703   " NEW in VIM 7.3
    set colorcolumn=79    "highlight the background of the 79th column
else
    augroup vimrc_autocmds
    au! 
    autocmd BufRead * highlight OverLength ctermbg=blue ctermfg=white
    autocmd BufRead * match OverLength /\%79v.*/
    augroup END 
endif


autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR> 
cmap w!! %!sudo tee > /dev/null %

call pathogen#infect() 

" GitGutter key-mappings
nmap <Leader>hn <Plug>GitGutterNextHunk
nmap <Leader>hp <Plug>GitGutterPrevHunk
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterRevertHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk

