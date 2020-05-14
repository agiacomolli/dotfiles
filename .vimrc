set nocompatible
filetype plugin on

set number
syntax on
colorscheme cyberpunkneon

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

set wildmenu
set wildmode=full

" Use actual tab chars in Makefiles.
autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab

" Set 2 spaces in HTML files.
autocmd FileType html set tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd FileType typescript set tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd FileType javascript set tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd FileType vue set tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd FileType tex set tabstop=2 shiftwidth=2 softtabstop=0 expandtab

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

" Wrap text at 80 column.
set textwidth=80

" Beancount
autocmd FileType beancount nnoremap <buffer> <C-A> :AlignCommodity<CR> 
autocmd FileType beancount inoremap . .<C-\><C-O>:AlignCommodity<CR>
autocmd FileType beancount let g:beancount_separator_col=74

