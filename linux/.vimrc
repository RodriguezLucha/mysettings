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
filetype plugin indent on    " required

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

"Bookmarks
let g:bookmark_sign = '-'
let g:bookmark_annotation_sign = '='

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

if !empty($CONEMUBUILD)
    set termencoding=utf8
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
    " termcap codes for cursor shape changes on entry and exit to
    " /from insert mode
    " doesn't work
    "let &t_ti="\e[1 q"
    "let &t_SI="\e[5 q"
    "let &t_EI="\e[1 q"
    "let &t_te="\e[0 q"
endif

syntax enable 
set background=dark 
colorscheme solarized

au GUIEnter * simalt ~x
let g:solarized_underline=0
let g:solarized_italic=0
let g:solarized_bold=0

"Easy grep settings 
set grepprg=ag
let g:EasyGrepCommand=1
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
"let timer = timer_start(2000, 'SaveFile',{'repeat':-1}) 
func! SaveFile(timer)   
    silent! :e!  
endfunc

hi Visual ctermfg=0 ctermbg=11

let g:conoline_color_normal_dark = 'ctermbg=0'
let g:conoline_color_normal_nr_dark = 'ctermbg=8'
let g:conoline_color_insert_dark = 'ctermbg=0'
let g:conoline_color_insert_nr_dark = 'ctermbg=8'
