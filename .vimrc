set nocompatible              " be iMproved, required
filetype off                  " required
let mapleader = '\'
let maplocalleader = '\'
:set timeout timeoutlen=1000 ttimeoutlen=1000

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Scala plugin
Plugin 'derekwyatt/vim-scala'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'nathanaelkane/vim-indent-guides'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required




" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ----<<<<==== Plugin configuration
" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" Indent guides
let g:indent_guides_start_level = 2

" Misc configuration
set ts=4 sw=4 noexpandtab
autocmd FileType html setlocal shiftwidth=2 tabstop=2 noexpandtab
autocmd FileType scala setlocal sw=2 ts=2 noexpandtab
set nocompatible
set autoindent
set nobackup
set nowritebackup
set ruler
set list
set listchars=tab:>.
syntax on
set hlsearch
set nu
set ic
set backspace=indent,eol,start


noremap <Leader>n :NERDTreeToggle<CR>
imap <C-S-p> <C-o>:CtrlPMRU<CR>
nmap <C-S-p> :CtrlPMRU<CR>

imap <C-s> <C-o>:w<CR>
map <C-s> <Esc>:w<CR>

nnoremap <silent> <C-Tab> :bn<CR>
nnoremap <silent> <C-PageUp> :bn<CR>
nnoremap <silent> <C-PageDown> :bp<CR>
nnoremap <silent> <C-w> :bd<CR>

set guifont=Monaco:h12
colorscheme hybrid
let g:airline_theme='zenburn'
