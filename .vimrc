set nocompatible
filetype plugin on

" Search all subdirectories recursively.
set path+=**

" Display settings.
set ruler
set number
set regexpengine=0
syntax on
colorscheme dark

" Disable arrow keys in all modes to enforce hjkl usage.
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

" Wrap text at 80 column.
set textwidth=80

" Highlight column 101 to show when lines are too long.
call matchadd('ColorColumn', '\%101v.', 120)

" Show whitespace characters.
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
set list

" Command completion.
set wildmenu
set wildmode=full

" Indentation defaults.
set tabstop=4        " The width of a TAB is set to 4.
set shiftwidth=4     " Indents will have a width of 4.
set softtabstop=4    " Sets the number of columns for a TAB.
set expandtab        " Expand TABs to spaces.
set smarttab         " Indent to the next tabstop.
set autoindent
set smartindent

" File type associations.
autocmd BufRead,BufNewFile *.templ set filetype=html
autocmd BufRead,BufNewFile *.tsx set filetype=typescript

" Per default, netrw leaves unmodified buffers open. This deletes buffers once hidden.
autocmd FileType netrw setl bufhidden=delete

" File type specific indentation.
autocmd FileType bash       set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab nolist
autocmd FileType cpp        set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab nolist
autocmd FileType go         set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab nolist
autocmd FileType html       set tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd FileType make       set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab nolist
autocmd FileType go         set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab nolist
autocmd FileType rst        set shiftwidth=2 softtabstop=2
autocmd FileType sh         set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab nolist
autocmd FileType sql        set tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd FileType templ      set tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd FileType tex        set tabstop=2 shiftwidth=2 softtabstop=0 expandtab
autocmd FileType typescript set tabstop=2 shiftwidth=2 softtabstop=0 expandtab

" Load local vimrc if it exists.
if filereadable(expand('~/.vimrc.local'))
    source ~/.vimrc.local
endif

