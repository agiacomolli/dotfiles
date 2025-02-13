set nocompatible
filetype plugin on

" Search all subdirectories and recursively
set path+=**

set ruler
set number
syntax on
colorscheme gray

" Remove newbie crutches in Command Mode
cnoremap <Down> <Nop>
cnoremap <Left> <Nop>
cnoremap <Right> <Nop>
cnoremap <Up> <Nop>

" Remove newbie crutches in Insert Mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Remove newbie crutches in Normal Mode
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

" Remove newbie crutches in Visual Mode
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>

" Wrap text at 80 column.
set textwidth=80

" Color 101 column
call matchadd('ColorColumn', '\%101v.', 120)

" Show shady characters.
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

set wildmenu
set wildmode=full

" Per default, netrw leaves unmodified buffers open. This deletes buffers once
" it's hidden.
autocmd FileType netrw setl bufhidden=delete

autocmd FileType make set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab nolist
autocmd FileType html set tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd FileType tex  set tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd FileType go   set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab nolist
autocmd FileType rst  set shiftwidth=2 softtabstop=2
autocmd FileType sh   set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab nolist
autocmd FileType bash set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab nolist
autocmd FileType cpp  set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab nolist

" For everything else, use a tab width of 4 space chars.
set tabstop=4           " The width of a TAB is set to 4.
                        " Still it is a \t. It is just that
                        " Vim will interpret it to be having
                        " a width of 4.
set shiftwidth=4        " Indents will have a width of 4.
set softtabstop=4       " Sets the number of columns for a TAB.
set expandtab           " Expand TABs to spaces.
set smarttab            " Indent to the next tabstop.

set autoindent
set smartindent

