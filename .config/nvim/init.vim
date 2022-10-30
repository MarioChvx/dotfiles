" Vanila settings

syntax enable
set belloff=all                     " Disable bell sound while moving
set encoding=utf-8                  "
set number relativenumber           " Set the numbers in the leftside
set noswapfile                      "
set nocompatible                    "
set tabstop=4                       " Sets tab to n spaces
set shiftwidth=4                    " Same as above
set expandtab                       "
set autoindent                      "
set scrolloff=5                     " Keeps n lines of space while scroling
set backspace=indent,eol,start      " Can delete special characters
set formatoptions-=cro              " Dissable autocomment
set wildignore=*.docx,*.pdf,*.exe   " Unables to open binaryfiles

" autocmd

autocmd BufWritePre * %s/\s\+$//e   " Removes whithe spaces from the end of the lines

" New keybindings

let mapleader =" "
nnoremap  <leader>w :w! <CR>

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

nnoremap <leader>o :call SpellLang()<CR>

" Pluggins

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'          " Gruvbox theme
Plug 'jiangmiao/auto-pairs'     " Auto pairs characters
Plug 'preservim/nerdtree'       " Files Tree
Plug 'preservim/nerdcommenter'  " Easier commenting
" LINE
" LINE theme


call plug#end()

colorscheme gruvbox

" NERDTree
let NERDTreeQuitOnOpen=1
nmap <leader>t :NERDTreeToggle<CR>

" https://www.youtube.com/watch?v=XgQFzi3VkC8&t=197s
" https://www.youtube.com/watch?v=wzrZPcwh-bE&t=74s
