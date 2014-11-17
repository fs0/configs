set nu
sy on
if $TERM == "linux"
    colorscheme desert
else
    set t_Co=256
    colorscheme distinguished
endif
set scrolloff=10
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set textwidth=1000
set hlsearch
set cursorline
set cursorcolumn
set mouse=a " keep shift pressed to copy
set foldmethod=syntax

" remember cursor position
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

au FileType make setlocal noexpandtab

" warning, long lines
au BufWinEnter * let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)

let mapleader = ","

call pathogen#infect()
let g:syntastic_c_checkers=['gcc']
let g:syntastic_cpp_checkers=['gcc']
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_java_checkers=['javac']
let g:syntastic_mode_map = {'mode': 'passive',
                           \'active_filetypes': ['c', 'cpp', 'python', 'java']}

filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = 'latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_ViewRule_pdf = 'mupdf'
let g:Tex_SmartKeyQuote = 0
let g:Tex_SmartKeyBS = 0
let g:Tex_SmartKeyDot = 0
let g:Imap_FreezeImap=1
