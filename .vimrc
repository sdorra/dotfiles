" https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/

" Text Rendering Options
syntax on
set encoding=utf-8

" Indention Options
set autoindent
filetype indent on
set expandtab
set tabstop=2
set softtabstop=2
set smarttab
set tabstop=2

" User Interface Options
set laststatus=2
set ruler
set number
set wildmenu
set title
"set visualbell
set mouse+=a
set background=dark
" colorscheme
colorscheme gruvbox
" colorscheme molokai

" gpg
let g:GPGPreferArmor=1
let g:GPGDefaultRecipients=["0x13B13D4C8A9350A1"]
