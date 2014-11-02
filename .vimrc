set nocompatible
let mapleader = ","
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
set gdefault
set shell=bash\ --login
nnoremap ' `
nnoremap ` '
nnoremap ; :
nnoremap <Space> ;
nnoremap j gj
nnoremap k gk
vmap fj <ESC>
imap fj <ESC>
imap ( ()<Left>
imap [ []<Left>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
nnoremap <leader>t %
map <silent> <leader>n :botright vnew<CR>  
map <leader>b ^
map <leader>e $
nmap <silent> <leader>cv :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> ,/ :nohlsearch<CR>
nmap <silent> <leader>mk :make<CR>
nnoremap <Tab> W
vnoremap <Tab> W
nnoremap \ B
vnoremap \ B
vmap Q gq
nmap Q gqap
nmap <left> <C-W>h
nmap <right> <C-W>l
nmap <up> <C-W>k
nmap <down> <C-W>j
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
filetype plugin indent on
autocmd FileType c,cpp,java,js,javascript,tex,php,python autocmd BufWritePre <buffer> :%s/\s\+$//e
autocmd BufReadPre *.txt setlocal spell
autocmd BufReadPre *.tex setlocal spell
let g:indent_guides_enable_on_vim_startup = 0
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
