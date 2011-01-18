set nocompatible " no compatible with vi

let mapleader=","

filetype plugin on
filetype indent on

set laststatus=2 " always show status line
set statusline=%< " truncate the line at the beginning
set statusline+=%f " relative path to edited file
set statusline+=\ %m " red flag that informs if file was edited
set statusline+=%y " filetype
set statusline+=\ Buf:\ #%n " buffer number
set statusline+=%= " separator between left and righ aligned fields
set statusline+=[%b] " byte under cursor
set statusline+=[0x%B] " byte under cursor in hex
set statusline+=\ Line:\ %l/%L " current line/lines in file
set statusline+=\ [%p%%] " percentage through file
set statusline+=\ Col:%3v " virtual column number

set showcmd " swhow (partial) command in status line
set showmode " message on status line to show current mode

set nu " line numbers
set scrolloff=5 " number of lines to keep above/below the cursor
set sidescrolloff=20 " min. nr. of columns to left and righ of cursor
set sidescroll=1 " min. nr. of columns to scroll horizontally
set nowrap " long lines doesnt wrap 

set background=dark
colorscheme ir_black
syntax on

set autoindent " take indent of new lie from previous line
set smartindent " smart autoindenting for C programs
set columns=120 " number of columns in the display

set foldmethod=manual " folding type
set foldminlines=2 " minimum number of lines for a fold to be closed

set hlsearch " highlight matches with last search pattern
set smartcase " no ignore case when pattern has uppercase
set incsearch " higlight match while typing search pattern

set history=100 " number of command-lines that are remembered

set listchars=tab:▸\ ,eol:¬ " chars used at end of line and tab

set tabstop=4 " number of spaces that <Tab> in file uses 
set softtabstop=4 " number of spaces that <Tab> uses whie editing
set shiftwidth=4 " indenty by x spaces
set expandtab " replace tab with spaces

set cpoptions+=$ " put $ at the end of changed text

set hidden " don't unload buffer when it is abandoned (could hide buffer with unsaved changes)

""""""""""""""""""""
" my mappings
""""""""""""""""""""
" close all buffers and quit
nmap <leader>q :qall<cr>
" toggle tab/eol
nmap <leader>l :set list!<cr>
" fast edit of vimrc file
nmap <leader>vimrc :e ~/.vimrc<cr>
nmap <leader>reload :so ~/.vimrc<cr>

" when line wrapping in turrned on move with virual lines usin jk
noremap j gj
noremap k gk

""""""""""""""""""""
" my plugin related mappings
""""""""""""""""""""
" toggle nerdtree plugin browsing window
nmap <silent> <leader>p :NERDTreeToggle<cr>

