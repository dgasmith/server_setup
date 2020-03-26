:set nu
:syntax on
set tabstop=4
set shiftwidth=4
set mouse=a
set paste
"set autoindent
set smartindent
set expandtab

" solarized options
set background=dark
let g:solarized_termcolors = 256
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termtrans = 1
colorscheme solarized

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"1000,:20,%,n~/.viminfo

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7
"Always show current position
set ruler
:map <F12> :set number!<CR>

au BufRead,BufNewFile *.dat set filetype=python
au BufRead,BufNewFile *.schema set filetype=json


if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
set clipboard=unnamed
" set hlsearch
" map <F7> :/\(<<<<<<<\\|=======\\|>>>>>>>\)<CR>
