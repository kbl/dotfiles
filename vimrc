call pathogen#infect()

set nocompatible " no compatible with vi

let mapleader=","

filetype on
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
set sidescroll=1 " min. nr. of columns to scroll horizontally
set nowrap " long lines doesnt wrap
set encoding=utf-8 "sets the character encoding used inside Vim

set background=dark
colorscheme ir_black
syntax on

set autoindent " take indent of new lie from previous line
set smartindent " smart autoindenting for C programs
" set columns=120 " number of columns in the display
if &ft ==? 'python'
    highlight OverLength ctermbg=red ctermfg=white guibg=#592929
    match OverLength /\%81v.\+/
endif

set foldmethod=manual " folding type
set foldminlines=2 " minimum number of lines for a fold to be closed

set hlsearch " highlight matches with last search pattern
set smartcase " no ignore case when pattern has uppercase
set incsearch " higlight match while typing search pattern

set history=100 " number of command-lines that are remembered

set listchars=tab:▸\ ,eol:¬ " chars used at end of line and tab
set showbreak=… " string to use at the start of wrapped lines

set tabstop=4 " number of spaces that <Tab> in file uses
set softtabstop=4 " number of spaces that <Tab> uses whie editing
set shiftwidth=4 " indenty by x spaces
set expandtab " replace tab with spaces

set cpoptions+=$ " put $ at the end of changed text
set backspace=2 " how backspace works at start of line

set hidden " don't unload buffer when it is abandoned (could hide buffer with unsaved changes)

set mousehide " hide mouse pointer while typing
set virtualedit=all " allow the cursor to go to "invalid" places

set wildmenu " use menu for command line completion

set t_Co=256 " 256 colors in terminal

""""""""""""""""""""
" my mappings
""""""""""""""""""""

" use standard not magic vim regexp
nnoremap / /\v
vnoremap / /\v

" close all buffers and quit
nmap <leader>q :qall<cr>
" toggle tab/eol
nmap <leader>e :set list!<cr>
" fast edit of vimrc file
nmap <leader>vimrc :e ~/.vimrc<cr>
nmap <leader>reload :so ~/.vimrc<cr>

" when line wrapping in turrned on move with virual lines using jk
noremap j gj
noremap k gk
noremap $ g$
noremap ^ g^
noremap 0 g0

" get rid of F1 in vim
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" function from vimcasts.org
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
nmap <silent> <leader>w :call <SID>StripTrailingWhitespaces()<cr>

" vimcast #16 wraping files
command! Wrap set wrap linebreak nolist " wraplines, wrap on full words, hide white chars
command! Unwrap set nowrap nolinebreak list

" fast windows switching
nmap <leader>h <C-W><C-H>
nmap <leader>j <C-W><C-J>
nmap <leader>k <C-W><C-K>
nmap <leader>l <C-W><C-L>

" fast window closing
nmap <leader>ch <C-W><C-H><C-W>c<C-W><C-P>
nmap <leader>cj <C-W><C-J><C-W>c<C-W><C-P>
nmap <leader>ck <C-W><C-K><C-W>c<C-W><C-P>
nmap <leader>cl <C-W><C-L><C-W>c<C-W><C-P>

" line moving
nmap <C-Up> [e
nmap <C-Down> ]e
vmap <C-Up> [egv
vmap <C-Down> ]egv

" stop higlithting searched text
nmap <silent> <leader><space> :noh<cr>

" toggle paste mode
nmap <leader>O :set paste!<cr>

""""""""""""""""""""
" my plugin related mappings
""""""""""""""""""""
" toggle nerdtree plugin browsing window
nmap <silent> <leader>p :NERDTreeToggle<cr>
nmap <silent> <leader>P :NERDTreeFind<cr>

" ignoring flake8 checks
" - E501 line too long
let g:flake8_ignore = 'E501'
