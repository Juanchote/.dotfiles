set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-Bundler'
Plugin 'tpope/vim-Cucumber'
Plugin 'ain/vim-capistrano'
Plugin 'scrooloose/nerdtree'
Plugin 'skalnik/vim-vroom'
Plugin 'garbas/vim-snipmate'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'tmhedberg/matchit'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tomasr/molokai'
Plugin 'ngmy/vim-rubocop'
Plugin 'yegappan/grep'
Plugin 'vim-scripts/Rename'
Plugin 'szw/vim-tags'
Plugin 'gabrielelana/vim-markdown'
Plugin 'tonekk/vim-binding-pry'
Plugin 'scrooloose/syntastic'
" HTML - Jade
Plugin 'digitaltoad/vim-jade'
Plugin 'tpope/vim-surround'
" plugin from http://vim-scripts.org/vim/scripts.html

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)

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
"
" " CONFIG
"
" syntax on
"
 set tabstop=2
 set softtabstop=2
 set shiftwidth=2
 set expandtab
 set autoindent
 set number
 let mapleader=' '
 let NERDTreeQuitOnOpen = 1
 autocmd vimenter * NERDTree
 set number
 "set clipboard=unnamedplus
"
" " ruler 80 y 120
 "highlight OverLength ctermbg=red ctermfg=white guibg=#592929
 highlight ColorColumn ctermbg=0 guibg=red
 "match OverLength /\%81v.\+/
  "let &colorcolumn="80,".join(range(120,999),",")
 set colorcolumn=80,120
 "highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
  "match OverLength /\%81v.\+/

  map <Leader>n :NERDTreeToggle<cr>
  noremap y "*y
  noremap Y "*Y

"Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif

"Colerar la consola con mas colores
set t_Co=256

"Esquema de colores
colorscheme molokai

map <F3> :TlistToggle<CR>

" Automatically detect file types.
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions=r  "add right-hand scroll bar


" Select all text
nmap <C-a> ggVG

set wildmenu
if has('gui_running')
  set guifont=Courier\ New\ 13
endif

au BufNewFile,BufRead *.hjs set filetype=handlebars

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
