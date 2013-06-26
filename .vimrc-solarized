" Sexy vim configs with pathogen
call pathogen#infect()
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

" No Vi Compatibility. That just sucks.
set nocompatible

" Set <leader> to ',' and <localleader> to "\"
let mapleader=","
let maplocalleader="\\"

noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>


" Convince Vim it can use 256 colors inside Gnome Terminal.
" " Needs CSApprox plugin
set t_Co=256
runtime! plugin/guicolorscheme.vim

"Colorscheme
colorscheme solarized
"colorscheme morning
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
"let g:solarized_visibility="high"

autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

"Show invisable
"set list
"set list listchars=tab:»-,eol:¬
set nolist

" Buffers - explore/next/previous: Alt-F12, F12, Shift-F12.
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>


" Window movment
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Activate a permanent ruler
set ruler

" Disable the blinking cursor.
set gcr=a:blinkon0


" Enable automatic title setting for terminals
set title
set titleold="Terminal"
set titlestring=%F\ -\ Vim

syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

" Copy/Paste to and from Desktop Environment
noremap <leader>yy "+y
noremap <leader>pp "+gP


" nnoremap <F5> :TlistToggle
" nnoremap <F6> :TlistShowPrototype

" Gvim settings
if has ("gui_running")
  " Maximize gvim window.
  set lines=47 columns=160
endif

" Sudo save
cmap w!! %!sudo tee > /dev/null %

" set statusline=[%n]\ %<%f\ %([%1*%M%*%R%Y]%)\ \ \ [%{Tlist_Get_Tagname_By_Line()}]\ %=%-19(\LINE\ [%l/%L]\ COL\ [%02c%03V]%)\ %P
set stl=%f\ %m\ %r%{fugitive#statusline()}\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]
set laststatus=2

" Use wildmenu for tab completion
set wildmenu
" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

set expandtab shiftwidth=4 tabstop=4 
if exists('+colorcolumn')
    set colorcolumn=79
endif
if has('autocmd')
	autocmd BufEnter *.c,*.h,*.cpp,*.hpp,*.cc source ~/.vim/c.vim
	" autocmd BufEnter *.py source ~/.vim/py.vim
    autocmd BufEnter *.pp source ~/.vim/puppet.vim
    autocmd BufEnter *.eml source ~/.vim/mail.vim
endif

let c_no_comment_fold = 1

set backupdir=/tmp

