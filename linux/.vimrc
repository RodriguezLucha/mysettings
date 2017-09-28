"Linux Vimrc
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline' 
Plugin 'vim-airline/vim-airline-themes'
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
Plugin 'majutsushi/tagbar'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'breuckelen/vim-resize'
Plugin 'maxbrunsfeld/vim-yankstack'

call vundle#end()
filetype plugin indent on

set encoding=utf-8
set noeb vb t_vb=
set number
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set tw=0
set expandtab

"Resize windows quickly
let g:vim_resize_disable_auto_mappings = 1
map <up> :CmdResizeUp<cr>
map <down> :CmdResizeDown<cr>
map <left> :CmdResizeLeft<cr>
map <right> :CmdResizeRight<cr>

"Easy scrolling
noremap <C-left> zh
noremap <C-right> zl

"Set space as leader key
let mapleader = "\<Space>"

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

syntax enable
set termencoding=utf8
set term=xterm
set t_Co=256

set background=dark
let g:solarized_diffmode="high"
colorscheme solarized

"Easy grep settings
set grepprg=ag
let g:EasyGrepCommand=0
let g:EasyGrepJumpToMatch=0
let g:EasyGrepSearchCurrentBufferDir=0

"Need to set this for airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_section_b = '%{getcwd()}'
let g:airline_section_c = '%t'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" CDC = Change to Directory of Current file
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
nnoremap <leader>g :vsp<CR>
nnoremap <leader>b :sp<CR>

"Bookmark broken with CtrlP Integration currently
let g:bookmark_disable_ctrlp = 1
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:bookmark_auto_close = 1

nnoremap <Leader>f :Grep<Space>

"Most Recently Accessed Files Shortcut
nnoremap <leader>o :MRU<CR>
nnoremap <leader>c :CDC<CR>

"Tagbar stuff
nnoremap <Leader>y :TagbarToggle<CR>

"Yankstack
nmap <C-up> <Plug>yankstack_substitute_older_paste
nmap <C-down> <Plug>yankstack_substitute_newer_paste

let g:yankstack_map_keys = 0
function Refresh()
    let timer = timer_start(2000, 'Refresh_helper',{'repeat':-1}) 
endfunc
func! Refresh_helper(timer)
    silent! :e!
endfunc
nnoremap <silent> ss :call Refresh()<CR>

"Use relative line numbers
nnoremap <Leader>7 :let [&nu, &rnu] = [!&rnu, &nu+&rnu==1]<CR>nu

"Change encoding of current file
:command SaveUTF8 write ++enc=utf-8 %
:command SaveUTF16 write ++enc=utf-16le "%"

"Trailing spaces
set listchars=tab:▸-,trail:·
set list
