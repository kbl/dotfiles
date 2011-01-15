let mapleader=","

" always show status line
set laststatus=2
set statusline=%< " truncate the line at the beginning
set statusline+=%f " relative path to edited file
set statusline+=\ %m " red flag that informs if file was edited
set statusline+=%y " filetype
set statusline+=\ B:%n " buffer number
set statusline+=%= " separator between left and righ aligned fields
set statusline+=[%b " byte under cursor
set statusline+=,0x%B] " byte under cursor in hex
set statusline+=\ %l/%L " current line/lines in file
set statusline+=\ [%p%%] " percentage through file
set statusline+=\ COL:%3v " virtual column number

" my mappings
"
" close all buffers and quit
nmap <leader>q :qall<cr>

" my plugin related mappings
"
" toggle nerdtree plugin browsing window
nmap <leader>p :NERDTreeToggle<cr>
