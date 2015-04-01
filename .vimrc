<<<<<<< HEAD
set background=dark

"colorscheme lucius
"colorscheme mustang
colorscheme solarized
"colorscheme distinguished
"colorscheme twilight
=======
" Call Pathogen
filetype off
call pathogen#infect()                                                            
call pathogen#helptags()  

filetype plugin indent on
filetype indent plugin on
syntax on

inoremap jj <ESC>

let mapleader = "<SPACE>"

" Set theme/colors
set t_Co=256
set background=dark
colorscheme solarized

" Set nifty settings
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

" Airline configs
let g:airline_theme='tomorrow'

" Map Vim splits directly to Ctrl+j/k/h/l
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open split panes to the right and bottom
set splitbelow
set splitright

" NERDTree configs
"autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" Python-mode plugin settings
"
" Activate rope
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
"
" "Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
"
" Support virtualenv
let g:pymode_virtualenv = 1
"
" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" GitGutter key-mappings
nmap <Leader>hn <Plug>GitGutterNextHunk
nmap <Leader>hp <Plug>GitGutterPrevHunk
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterRevertHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk

" Don't autofold code
let g:pymode_folding = 0
