let mapleader =" "

" HOLA

syntax on
set belloff=all
set wildignore=*.docx,*.pdf,*.exe
set nocompatible
set background=dark

" Set color scheme (delek slate darkblue desert industry murphy ron torte pablo)
colorscheme delek

" Set relative numbers:
	set number relativenumber

" Writing changes set to <leader>w 'w' for 'write':
	nnoremap  <leader>w :w! <CR>

" Enable autocomplete:
	 set wildmode=longest,list,full

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions -=c formatoptions-=f formatoptions-=o
" Splits open at the bottom and right:
	set splitbelow splitright

" Automatically deletes all trailing white space on save:
	autocmd BufWritePre * %s/\s\+$//e

" Function to cycle trought languages:
let g:lang = 0
let g:langList = ["nospell", "English US", "Spanish"]
function! SpellLang()
	let g:lang = g:lang + 1
	if g:lang >= len(g:langList) | let g:lang = 0 | endif
	if g:lang == 0 | setlocal nospell | endif
	if g:lang == 1 | setlocal spell spelllang=en_us | endif
	if g:lang == 2 | setlocal spell spelllang=es | endif
	echo "Spell check set to:" g:langList[g:lang]
endf

" Spell-check set to <leader>o, 'o' for 'ortography':
	nnoremap <leader>o :call SpellLang()<CR>

" delek slate darkblue desert industry murphy ron torte elflord koehler pablo
