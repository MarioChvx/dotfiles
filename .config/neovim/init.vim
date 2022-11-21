" vanilla settings

syntax enable
set nocompatible                    " setting to avoid compatibility issues
set bg=dark
set belloff=all                     " Disable bell sound while moving
set encoding=utf-8                  "
set number relativenumber           " Set the numbers in the left side
set noswapfile                      "
set autoindent                      "
set scrolloff=5                     " Keeps n lines of space while scrolling
set backspace=indent,eol,start      " Can delete special characters
set formatoptions-=cro              " Disable auto comment
set wildignore=*.docx,*.pdf,*.exe   " Unable to open binary files
set splitbelow splitright

" specific languages
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype c setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype markdown setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" kitty rendering problem
let &t_ut=''

" cursor changing
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" autocmd
autocmd BufWritePre * %s/\s\+$//e   " Removes white spaces from the end of the lines

augroup my_colours
  autocmd!
  autocmd ColorScheme gruvbox hi SpellBad cterm=reverse
augroup END

let mapleader =" "
nnoremap  <leader>w :w! <CR>
nnoremap  <leader>v :vsplit <CR>
nnoremap  <leader>h :split <CR>

" move through panels with ctrl-[hjkl]
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" resize panels
let g:delt_v = &lines / 10.0
let g:delt_h = &columns / 10.0

nmap <silent> <leader><Up> :exe "resize " . (winheight(0) + delt_v)<CR>
nmap <silent> <leader><Down> :exe "resize " . (winheight(0) - delt_v)<CR>
nmap <silent> <leader><Right> :exe "vertical resize " . (winwidth(0) + delt_h)<CR>
nmap <silent> <leader><Left> :exe "vertical resize " . (winwidth(0) - delt_h)<CR>

" maximize a buffer
nnoremap <leader>m :only <CR>

" spell check
let g:lang = 0
let g:langList = ["nospell", "English US", "Spanish"]
function! SpellLang()
    let g:lang = g:lang + 1
    if g:lang >= len(g:langList) | let g:lang = 0 | endif
    if g:lang == 0 | setlocal nospell | endif
    if g:lang == 1 | setlocal spell spelllang=en_us | endif
    if g:lang == 2 | setlocal spell spelllang=es | endif
    echo "Spell check set to: " g:langList[g:lang]
endf

nnoremap <leader>o :call SpellLang()<CR