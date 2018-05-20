let all_the_plugins=$ALL_THE_PLUGINS
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/mysettings/linux
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
Plugin 'raimondi/delimitmate'
Plugin 'ctrlpvim/ctrlp.vim'
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
Plugin 'mhinz/vim-hugefile'
Plugin 'rhlobo/vim-super-retab'
Plugin 'ryanoasis/vim-devicons'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'chiel92/vim-autoformat'
Plugin 'airblade/vim-gitgutter'
Plugin 'valloric/youcompleteme'
Plugin 'docunext/closetag.vim'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'othree/csscomplete.vim'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'DirDiff.vim'

if all_the_plugins == '1'
    Plugin 'davidhalter/jedi-vim'
endif

call vundle#end()
filetype plugin indent on

set encoding=utf-8
set noeb vb t_vb=
set number
set relativenumber
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
execute "set colorcolumn=" . join(range(80,335), ',')

autocmd Filetype html setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 expandtab

"Easy scrolling
noremap <C-left> zh
noremap <C-right> zl

"Set space as leader key
let mapleader = "\<Space>"
"
"Snipping shortcut
let g:UltiSnipsExpandTrigger="<C-f>"
let g:UltiSnipsSnippetsDir="~/mysettings/linux/UltiSnips/"

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

syntax enable
set termencoding=utf8
set term=xterm
set t_Co=256

set background=dark
let g:solarized_diffmode="high"
colorscheme solarized
highlight Normal ctermbg=NONE

"Easy grep settings
set grepprg=ag
let g:EasyGrepCommand=0
let g:EasyGrepJumpToMatch=1
let g:EasyGrepRecursive=0
let g:EasyGrepSearchCurrentBufferDir=0

let g:gutentags_ctags_tagfile=".tags"

"Need to set this for airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_section_c = '%{hostname()}'

" CDC = Change to Directory of Current file
command CDC cd %:p:h

"Quick format source
com! FormatXML %!xmllint --format -
com! FormatJSON %!jq .
noremap <F3> :Autoformat<CR>

"Folding automatically
set foldmethod=indent
set foldlevel=5

"Quick save
nnoremap <leader>s :update<CR>
nnoremap <leader>e :quit<CR>
nnoremap <leader>E :quitall!<CR>

"NERDTree stuff
nnoremap <leader>t :NERDTreeToggle<Enter>
let g:NERDTreeChDirMode=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeShowBookmarks = 1
let NERDTreeIgnore = ['\.pyc$']

"Toggle quickfix windows
let g:lt_quickfix_list_toggle_map = '<leader>q'
let g:lt_location_list_toggle_map = '<leader>w'

"Move splits quickly
map <up> :wincmd k<cr>
map <down> :wincmd j<cr>
map <left> :wincmd h<cr>
map <right> :wincmd l<cr>

"Bookmark broken with CtrlP Integration currently
let g:bookmark_disable_ctrlp = 1
let g:ctrlp_cmd = 'CtrlPBuffer'
let g:bookmark_auto_close = 1

"Most Recently Accessed Files Shortcut
nnoremap <leader>o :MRU<CR>
nnoremap <leader>c :CDC<CR>

"Tagbar stuff
nnoremap <leader>y :TagbarToggle<CR>

"Use relative line numbers
nnoremap <leader>7 :let [&nu, &rnu] = [!&rnu, &nu+&rnu==1]<CR>nu
nnoremap <leader>6 :set foldmethod=indent<CR>

"Change encoding of current file
command SaveUTF8 write ++enc=utf-8 %
command SaveUTF16 write ++enc=utf-16le "%"

"Trailing spaces
set listchars=tab:▸\ ,trail:·
set list

"Flip vertical and horizontal shortcuts
command FlipH windo wincmd K
command FlipV windo wincmd H

"Easy navigation to next and previous difference
map <leader><up> [c
map <leader><down> ]c
map <leader><left> :diffget<CR>
map <leader><right> :diffput<CR>

"Print out full path of current file
nnoremap <leader>1 :echo expand('%:p')<CR>
let g:ycm_semantic_triggers = {
            \   'css': [ 're!^\s{4}', 're!:\s+' ],
            \ }

let g:jsx_ext_required = 0

map <leader>gs :Gstatus<CR>
