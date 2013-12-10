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
set textwidth=1000
set hlsearch
set cursorline

" remember cursor position
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

call pathogen#infect()
let g:syntastic_c_checkers=['gcc']
let g:syntastic_cpp_checkers=['gcc']
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_java_checkers=['javac']
let g:syntastic_mode_map = {'mode': 'passive',
                           \'active_filetypes': ['c', 'cpp', 'python', 'java']}
