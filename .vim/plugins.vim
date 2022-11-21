" PLUGINS

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

" gruvbox
let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox

" lightline
set laststatus=2

" nerdtree
let NERDTreeQuitOnOpen=1

" identline
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = "·"
let g:indentLine_showFirstIndentLevel = 1


