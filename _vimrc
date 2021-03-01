" No Warranty Expressed or Implied.
" Use at your own peril.
"--------------------------------------
"
" Define Window Chrome / L&F
set nocompatible
set ch=3
set ruler
" always show status bar
set laststatus=2
set number
" nice wordwrap settings
set nowrap
set sidescroll=5
set listchars+=precedes:<,extends:>  
" Memory Management
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
"
" I like modelines
"
set modeline
"
" ***** Search *****
"
set incsearch
"
" ***** Tabs ******
"
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set fileformats=unix,dos
set visualbell
" 40 millisecond flash
"set t_vb="|40f"
syntax on
set updatetime=50
set cmdheight=2
set shortmess+=c
set colorcolumn=80
"
" CUA-style function keys (inspired by IBM XEDIT/E3)
"
nmap <F2> :w!<CR>
nmap <F3> :q<CR>
nmap <F4> ZZ<CR>
nmap <F7> :bp<CR>
nmap <F8> :bn<CR>

"
"******  GVIM Settings
" (put these in the .gvimrc)
"behave mswin
"set selectmode+=mouse
"set background=light
"colorscheme slate
"set guifont=Consolas:h16:cANSI
"
" I'm moving away from pathogen - I don't like the way it works.
"
execute pathogen#infect()
" only if terminal supports colors
syntax enable
filetype plugin indent on

set cul

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

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
