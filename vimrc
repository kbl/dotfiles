let mapleader=","

" always show status line
set laststatus=2

" status line settings
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

" line numbers
set nu

" number of lines to keep above/below the cursor
set scrolloff=5

" colors
set background=dark
colorscheme ir_black
syntax on

" chars used at end of line and tab
set listchars=tab:▸\ ,eol:¬ 

" tab settings
set ts=4 sts=4 sw=4 noexpandtab


""""""""""""""""""""
" my mappings
""""""""""""""""""""
" close all buffers and quit
nmap <leader>q :qall<cr>
" toggle tab/eol
nmap <leader>l :set list!<cr>

""""""""""""""""""""
" my plugin related mappings
""""""""""""""""""""
" toggle nerdtree plugin browsing window
nmap <leader>p :NERDTreeToggle<cr>

