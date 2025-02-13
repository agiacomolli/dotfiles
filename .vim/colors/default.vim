" Header
"  Please edit this text.

let s:colors_name='dump-neonlight'
set background=light

if !has('gui_running') && &t_Co<256
  echomsg 'Error: colorscheme "'.s:colors_name.'" requires 256 colors.'
  echomsg 'You may solve the problem with the following command.'
  echomsg ':set t_Co=256 | colorscheme '.s:colors_name
  finish
endif
highlight clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name=s:colors_name

if &bg=='dark'
  hi      Normal       guifg=#949494 guibg=#262626 ctermfg=246  ctermbg=NONE gui=NONE cterm=NONE
elseif &bg=='light'
  hi      Normal       guifg=#949494 guibg=#d0d0d0 ctermfg=246  ctermbg=NONE gui=NONE cterm=NONE
endif
hi      Comment      guifg=#585858 guibg=NONE    ctermfg=240  ctermbg=NONE gui=NONE cterm=NONE
hi      Constant     guifg=#a8a8a8 guibg=NONE    ctermfg=248  ctermbg=NONE gui=bold cterm=bold
hi link String       Constant
hi link Character    Constant
hi link Number       Constant
hi link Boolean      Constant
hi link Float        Constant
hi link Identifier   Constant
hi link Function     Constant
hi link Statement    Constant
hi link Conditional  Constant
hi link Operator     Constant
hi link Exception    Constant
hi      PreProc      guifg=#5f00af guibg=NONE    ctermfg=55   ctermbg=NONE gui=bold cterm=bold
hi link Type         Constant
hi link StorageClass Constant
hi      Special      guifg=#5f5fd7 guibg=NONE    ctermfg=62   ctermbg=NONE gui=bold cterm=bold
hi      Underlined   guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=underline cterm=underline
hi      Ignore       guifg=#edeeeb guibg=NONE    ctermfg=15   ctermbg=NONE gui=NONE cterm=NONE
hi      Error        guifg=#edeeeb guibg=#e41339 ctermfg=15   ctermbg=9    gui=bold cterm=bold
hi      Todo         guifg=#edeeeb guibg=#5f5fd7 ctermfg=15   ctermbg=62   gui=bold cterm=bold
hi      ColorColumn  guifg=#585858 guibg=#c4a000 ctermfg=240  ctermbg=3    gui=bold cterm=bold
hi      DiffAdd      guifg=#edeeeb guibg=#4e9a06 ctermfg=15   ctermbg=2    gui=NONE cterm=NONE
hi      DiffChange   guifg=#edeeeb guibg=#8ee634 ctermfg=15   ctermbg=10   gui=NONE cterm=NONE
hi      DiffDelete   guifg=#edeeeb guibg=#e41339 ctermfg=15   ctermbg=9    gui=bold cterm=bold
hi      DiffText     guifg=NONE    guibg=#565854 ctermfg=NONE ctermbg=8    gui=bold cterm=bold
hi      ErrorMsg     guifg=#edeeeb guibg=#e41339 ctermfg=15   ctermbg=9    gui=bold cterm=bold
hi      Folded       guifg=#5f5fd7 guibg=#a8a8a8 ctermfg=62   ctermbg=248  gui=NONE cterm=NONE
hi      FoldColumn   guifg=#5f5fd7 guibg=#a8a8a8 ctermfg=62   ctermbg=248  gui=NONE cterm=NONE
hi      IncSearch    guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi      LineNr       guifg=#6c6c6c guibg=#262626 ctermfg=242  ctermbg=235  gui=bold cterm=bold
hi      ModeMsg      guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=bold cterm=bold
hi      MoreMsg      guifg=#4e9a06 guibg=NONE    ctermfg=2    ctermbg=NONE gui=bold cterm=bold
hi      NonText      guifg=#7b9ccd guibg=NONE    ctermfg=12   ctermbg=NONE gui=bold cterm=bold
hi      Pmenu        guifg=#8a8a8a guibg=#303030 ctermfg=245  ctermbg=236  gui=NONE cterm=NONE
hi      PmenuSel     guifg=#8a8a8a guibg=#5f5fd7 ctermfg=245  ctermbg=62   gui=bold cterm=bold
hi      PmenuSbar    guifg=NONE    guibg=#a8a8a8 ctermfg=NONE ctermbg=248  gui=NONE cterm=NONE
hi      PmenuThumb   guifg=NONE    guibg=#000000 ctermfg=NONE ctermbg=0    gui=NONE cterm=NONE
hi link Search       IncSearch
hi link SpellBad     Underlined
hi      SpellCap     guifg=NONE    guibg=#5fd7ff ctermfg=NONE ctermbg=81   gui=undercurl cterm=NONE
hi      SpellLocal   guifg=NONE    guibg=#5de3e0 ctermfg=NONE ctermbg=14   gui=undercurl cterm=NONE
hi      SpellRare    guifg=NONE    guibg=#ffd7ff ctermfg=NONE ctermbg=225  gui=undercurl cterm=NONE
hi      StatusLine   guifg=#5f5fd7 guibg=#edeeeb ctermfg=62   ctermbg=15   gui=bold,reverse cterm=bold,reverse
hi      StatusLineNC guifg=NONE    guibg=#edeeeb ctermfg=NONE ctermbg=15   gui=reverse cterm=reverse
hi      TabLine      guifg=#000000 guibg=#d2d6ce ctermfg=0    ctermbg=7    gui=underline cterm=underline
hi      TabLineFill  guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi      TabLineSel   guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=bold cterm=bold
hi      Title        guifg=#734e7a guibg=NONE    ctermfg=5    ctermbg=NONE gui=bold cterm=bold
hi      Visual       guifg=#000000 guibg=#303030 ctermfg=0    ctermbg=236  gui=NONE cterm=NONE
hi      VisualNOS    guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=bold,underline cterm=bold,underline
hi      WarningMsg   guifg=#cc0000 guibg=#4e9a06 ctermfg=1    ctermbg=2    gui=bold cterm=bold
hi      WildMenu     guifg=#000000 guibg=#f6eb53 ctermfg=0    ctermbg=11   gui=NONE cterm=NONE
hi      CursorColumn guifg=NONE    guibg=#d2d6ce ctermfg=NONE ctermbg=7    gui=NONE cterm=NONE
hi link CursorLine   Underlined
hi link CursorLineNr Underlined
hi      MatchParen   guifg=#edeeeb guibg=#5f00af ctermfg=15   ctermbg=55   gui=NONE cterm=NONE
hi      SignColumn   guifg=#3f3876 guibg=#a8a8a8 ctermfg=4    ctermbg=248  gui=NONE cterm=NONE
hi      SpecialKey   guifg=#ffff00 guibg=NONE    ctermfg=226  ctermbg=NONE gui=NONE cterm=NONE
hi      VertSplit    guifg=NONE    guibg=NONE    ctermfg=NONE ctermbg=NONE gui=reverse cterm=reverse

" Created with vim-colorscheme-edit v1.0.0
"   https://github.com/nokobear/vim-colorscheme-edit
