set encoding=utf-8
set fileencodings=utf-8,cp950

syntax on
set nocompatible
set nu
set tabstop=4
set softtabstop=4
set expandtab
set ic
set hlsearch
set incsearch
set history=100
"set cursorline
set background=dark
colorscheme Tomorrow-Night-Eighties

filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'JSON.vim'
Plugin 'pearofducks/ansible-vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'low-ghost/nerdtree-fugitive'

call vundle#end()

filetype plugin indent on

" Setting
" airline
set t_Co=256
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1

" NerdTree
nmap <C-n> :NERDTreeToggle<cr>

" autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let NERDTreeIgnore=['\.pyc$', '\~$', '\.swp$', 'node_modules'] "ignore files in NERDTree
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeKeepTreeInNewTab=1

" NerdTree plugin for git
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
