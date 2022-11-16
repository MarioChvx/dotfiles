
" Vanila settings

syntax enable
set nocompatible                    " setting to avoid compatibility isues
set bg=dark
set belloff=all                     " Disable bell sound while moving
set encoding=utf-8                  "
set number relativenumber           " Set the numbers in the leftside
set noswapfile                      "
set tabstop=4                       " Sets tab to n spaces
set shiftwidth=4                    " Same as above
set expandtab                       "
set autoindent                      "
set scrolloff=5                     " Keeps n lines of space while scroling
set backspace=indent,eol,start      " Can delete special characters
set formatoptions-=cro              " Dissable autocomment
set wildignore=*.docx,*.pdf,*.exe   " Unables to open binaryfiles
set splitbelow
set splitright

" kitty rendering problem
let &t_ut=''

" cursor changing
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" autocmd
autocmd BufWritePre * %s/\s\+$//e   " Removes whithe spaces from the end of the lines

" New keybindings

let mapleader =" "
nnoremap  <leader>w :w! <CR>
nnoremap  <leader>q :q <CR>
nnoremap  <leader>v :vsplit <CR>
nnoremap  <leader>h :split <CR>

" move trought panels with ctrl-[hjkl]
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 1.2)<CR>
nnoremap <silent> <Leader>_ :exe "resize " . (winheight(0) * 0.8)<CR>

nnoremap <leader>m :only <CR>

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

Plug 'morhetz/gruvbox'          " gruvbox theme
Plug 'itchyny/lightline.vim'    " status bar
Plug 'jiangmiao/auto-pairs'     " auto pairs characters
Plug 'preservim/nerdtree'       " files tree
Plug 'preservim/nerdcommenter'  " easier commenting
Plug 'sheerun/vim-polyglot'     " languages support
Plug 'Yggdroot/indentLine'		" identline
Plug 'voldikss/vim-floaterm'	" terminal


call plug#end()

augroup my_colours
  autocmd!
  autocmd ColorScheme gruvbox hi SpellBad cterm=reverse
augroup END

" gruvbox
let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox

" lightline
set laststatus=2

" nerdtree
let NERDTreeQuitOnOpen=1
nmap <leader>t :NERDTreeToggle<CR>

" identline
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = "·"

" floaterm
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

" https://www.youtube.com/watchcurl -fLo ~/.vim/autoload/plug.vim --create-dirs \

