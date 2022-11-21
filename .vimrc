
" Vanilla settings

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

" import settings
source .vim/plugins.vim
source .vim/keybinds.vim

" https://www.youtube.com/watchcurl -fLo ~/.vim/autoload/plug.vim --create-dirs \

