set nocompatible



"""
" WIN
"""
if has("win32")
    source $VIMRUNTIME/mswin.vim
    behave mswin
    " Avoid mswin.vim making Ctrl-v act as paste:
    noremap <C-V> <C-V>
endif



"""
" GUI
"""
if has("gui_running")
    au GUIEnter * simalt ~x
endif



"""
" FONT
"""
set gfn=Terminus:h12:cANSI



"""
" MOUSE
"""
" Enable mouse
if has("mouse")
    set mouse=a
endif



"""
" LEADER
"""
let mapleader = ","



"""
" NO SOUND
"""
set noerrorbells
set novisualbell
set t_vb=
set tm=500



"""
" SEARCH
"""
set incsearch
set hlsearch
set ignorecase
set smartcase



"""
" LOOK
"""
set nu
syntax enable
set t_Co=256
colorscheme distinguished
set cursorline
set cursorcolumn
set scrolloff=5
set textwidth=1000
" warning long lines
au BufWinEnter * let w:m1=matchadd('ErrorMsg', '\%>100v.\+', -1)



"""
" INDENTS
"""
set autoindent
" expand tabs
set expandtab
set tabstop=4
set shiftwidth=4
" don't expand tabs in Makefiles
au FileType make setlocal noexpandtab



"""
" FOLD
"""
set foldmethod=syntax



"""
" WILDMENU
"""
set wildmenu
set wildmode=longest:full,full



"""
" ENCODING
"""
set encoding=utf8
set ff=unix
set ffs=unix,dos
" remove ^M
noremap <Leader>W mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm



"""
" CURSOR POS
"""
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif



"""
" STATUS LINE
"""
" [buffer number] followed by filename:
"set statusline=[%n]\ %t
"" for Syntastic messages:
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"set statusline+=%m
"" right hand side
"set statusline+=%=
"" show fileencoding and line#:column#
"set statusline+=[%{&fileencoding?&fileencoding:&encoding}]\ %l:%c



"""
" NERDTREE
"""
" not needed, using NERDTREETabs
" open with NERDTree
" au VimEnter *  NERDTree
" switch back to other window
" au VimEnter * wincmd p


"""
" LIGHTLINE
"""
" let g:lightline = {'colorscheme': 'jellybeans'}



"""
" NERDTREETABS
"""
let g:nerdtree_tabs_open_on_console_startup=1



"""
" CTRLP
"""
let g:ctrlp_show_hidden=1



"""
" PATHOGEN
"""
call pathogen#infect()



"""
" SYNTASTIC
"""
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_checkers=['gcc']
let g:syntastic_cpp_checkers=['gcc']
let g:syntastic_python_checkers=['python']
let g:syntastic_java_checkers=['javac']
" let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_mode_map = {'mode': 'passive',
                           \'active_filetypes': ['c', 'cpp', 'python', 'java', 'javascript']}


"""
" TEX
"""
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
