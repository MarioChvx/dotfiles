" KEYBINDINGS

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

nnoremap <leader>o :call SpellLang()<CR>
