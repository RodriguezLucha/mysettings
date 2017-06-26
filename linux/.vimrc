"Linux Vimrc
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()




Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-endwise'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'raimondi/delimitmate'
Plugin 'kien/ctrlp.vim'
Plugin 'dkprice/vim-easygrep'
Plugin 'mattesgroeger/vim-bookmarks'
Plugin 'thinca/vim-fontzoom'
Plugin 'mru.vim'
Plugin 'miyakogi/conoline.vim'
Plugin 'taku-o/vim-esc2-noh'
Plugin 'valloric/listtoggle'
Plugin 'peterrincker/vim-argumentative'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'kana/vim-submode'
Plugin 'majutsushi/tagbar'
Plugin 'ludovicchabant/vim-gutentags'

call vundle#end()
filetype plugin indent on    " required

set noeb vb t_vb=
set number
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set tw=0
set expandtab
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"Set space as leader key
let mapleader = "\<Space>"

"Bookmarks
let g:bookmark_sign = '-'
let g:bookmark_annotation_sign = '='

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

syntax enable

"Easy grep settings 
set grepprg=ag
let g:EasyGrepCommand=1
let g:EasyGrepJumpToMatch=0
let g:EasyGrepSearchCurrentBufferDir=0

"Need to set this for airline
set laststatus=2
let g:airline_section_b = '%{getcwd()}'
let g:airline_section_c = '%t'
let g:airline#extensions#tabline#enabled = 1

"CDC = Change to Directory of Current file
command CDC cd %:p:h

"Quick format source
com! FormatXML %!xmllint --format -
com! FormatJSON %!python -m json.tool

"Folding automatically
set foldmethod=indent
set foldlevel=3

"Quick save
nnoremap <leader>s :update<CR>
nnoremap <leader>e :quit<CR>

"NERDTree stuff
nnoremap <Leader>t :NERDTreeToggle<Enter>
let g:NERDTreeChDirMode=1
"let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeShowBookmarks = 1

"Toggle quickfix windows
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_location_list_toggle_map = '<leader>w'

"Move splits quickly
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>l :wincmd l<CR>

"Bookmark broken with CtrlP Integration currently
let g:bookmark_disable_ctrlp = 1

nnoremap <Leader>f :Grep<Space>

"Most Recently Accessed Files Shortcut
nnoremap <leader>o :MRU<CR>
nnoremap <leader>c :CDC<CR>

"Window resize magic
call submode#enter_with('grow/shrink', 'n', '', '<leader><up>', '<C-w>+')
call submode#enter_with('grow/shrink', 'n', '', '<leader><down>', '<C-w>-')
call submode#enter_with('grow/shrink', 'n', '', '<leader><Left>', '<C-w><lt>')
call submode#enter_with('grow/shrink', 'n', '', '<leader><Right>', '<C-w>>')
call submode#map('grow/shrink', 'n', '', '<up>', '<C-w>+')
call submode#map('grow/shrink', 'n', '', '<down>', '<C-w>-')
call submode#map('grow/shrink', 'n', '', '<Left>', '<C-w><lt>')
call submode#map('grow/shrink', 'n', '', '<Right>', '<C-w>>')

"Tagbar stuff
nnoremap <Leader>y :TagbarToggle<CR>
