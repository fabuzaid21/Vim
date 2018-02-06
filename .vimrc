set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" EasyMotion
Plugin 'Lokaltog/vim-easymotion'
" Surround
Plugin 'tpope/vim-surround'
" Auto-format everything
Plugin 'chiel92/vim-autoformat'
" PyFlakes
Plugin 'kevinw/pyflakes-vim'
" CSV files
Plugin 'chrisbra/csv.vim'
" Nerdtree
Plugin 'scrooloose/nerdtree'
" jq support
Plugin 'vito-c/jq.vim'
" Scala support
Plugin 'derekwyatt/vim-scala'
" Plugin 'vim-syntastic/syntastic'
" Python Linter
" Plugin 'andviro/flake8-vim'
" clang-format
" Plugin 'rhysd/vim-clang-format'

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
" So that YouCompleteMe checks for compilation errors in C/C++ files
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:formatter_yapf_style = 'pep8'
" autocmd BufWritePost *.py call Flake8()
" let g:syntastic_python_checkers = ['pyflakes']
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1

map <C-z> :NERDTreeToggle<CR>
map <leader>c :YcmCompleter FixIt<CR>

" My own stuff
let mapleader = ','
set clipboard=unnamed
set encoding=utf-8
set nu
set binary
set term=xterm-256color
colorscheme mustang
set bg=dark
set showcmd
set foldenable
set foldmethod=indent
set foldlevelstart=99
set autoindent
set softtabstop=2
set shiftwidth=2
set expandtab
set mouse=a
syntax on
set history=1000
set undolevels=1000
set backspace=indent,eol,start
set ruler
set cursorline
set cursorcolumn
set showmatch
set matchtime=3
set wildmenu
set wildmode=list:longest,full
set wildignore=*.swp,*.bak,*.pyc,*.class,*.a,*.o,*.aux,*.out
set showbreak=>
set incsearch
set hlsearch
set ignorecase
set smartcase
set hidden
set switchbuf=useopen
set scrolljump=5
set scrolloff=3
set gdefault " Use global replace by default
set shell=bash\ --login

" 'fj' exits INSERT and VISUAL modes
vmap fj <ESC>
imap fj <ESC>
" ,t -> jump between matching paren, bracket, etc.
nnoremap <leader>t %
" ; -> command
nnoremap ; :
" Handle lines that wrap around correctly
nnoremap j gj
nnoremap k gk
nnoremap gJ J
nnoremap J gJ
" Navigate between words (+ whitespace) using Tab and Back-slash
nnoremap <Tab> W
vnoremap <Tab> W
nnoremap \ B
vnoremap \ B
" ,cv -> open .vimrc 
nmap <silent> <leader>cv :e $MYVIMRC<CR>
" ,sv -> source .vimrc to reload changes
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" Hide search results
nmap <silent> <leader>/ :nohlsearch<CR>
" Check spelling in text files and tex files, highlight in red
autocmd BufReadPre *.txt setlocal spell
autocmd BufReadPre *.tex setlocal spell
autocmd BufReadPre *.md setlocal spell
highlight SpellBad term=underline gui=undercurl guisp=Orange
" Automatically toggle/untoggle paste when
" pasting something into vim (borrowed from: https://coderwall.com/p/if9mda)
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
" Navigate Vim's command-line using
" normal Bash shortcuts (borrowed from: http://statico.github.io/vim.html)
:cnoremap <C-a>  <Home>
:cnoremap <C-b>  <Left>
:cnoremap <C-f>  <Right>
:cnoremap <C-d>  <Delete>
:cnoremap <M-b>  <S-Left>
:cnoremap <M-f>  <S-Right>
:cnoremap <M-d>  <S-right><Delete>
:cnoremap <Esc>b <S-Left>
:cnoremap <Esc>f <S-Right>
:cnoremap <Esc>d <S-right><Delete>
:cnoremap <C-g>  <C-c>
