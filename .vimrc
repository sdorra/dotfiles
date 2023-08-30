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

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Install plugins
call plug#begin()

" Install colorschemes
Plug 'morhetz/gruvbox'
Plug 'nordtheme/vim'

" Encrypt and decrpt gpg files
Plug 'jamessan/vim-gnupg'

" EditorConfig support
Plug 'editorconfig/editorconfig-vim'

" Statusbar
Plug 'itchyny/lightline.vim'

call plug#end()

" === plugin configuration

" colorschem
silent! colorscheme gruvbox

" gpg
if has_key(plugs, "gpg")
  let g:GPGPreferArmor=1
  let g:GPGDefaultRecipients=["0x13B13D4C8A9350A1"]
endif
