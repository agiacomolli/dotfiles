let s:colors_name = 'gray'
set background=light

if &t_Co < 256
  echomsg 'Error: colorscheme "'.s:colors_name.'" requires 256 colors.'
  echomsg 'You may solve the problem with the following command.'
  echomsg ':set t_Co=256 | colorscheme '.s:colors_name
  finish
endif

highlight clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = s:colors_name

" Base colors.
hi Normal ctermfg=246 ctermbg=NONE cterm=NONE

" Syntax highlighting.
hi Comment       ctermfg=240 ctermbg=NONE cterm=NONE
hi Keyword       ctermfg=250 ctermbg=NONE cterm=bold
hi Identifier    ctermfg=250 ctermbg=NONE cterm=bold
hi Statement     ctermfg=250 ctermbg=NONE cterm=bold
hi String        ctermfg=248 ctermbg=NONE cterm=bold
hi Constant      ctermfg=252 ctermbg=NONE cterm=bold
hi Special       ctermfg=252 ctermbg=NONE cterm=bold
hi PreProc       ctermfg=252 ctermbg=NONE cterm=bold
hi Operator      ctermfg=248 ctermbg=NONE cterm=bold
hi Type          ctermfg=248 ctermbg=NONE cterm=bold

" UI elements.
hi Visual        ctermfg=NONE ctermbg=236  cterm=NONE
hi LineNr        ctermfg=242  ctermbg=235  cterm=bold
hi Search        ctermfg=250  ctermbg=124  cterm=NONE
hi StatusLine    ctermfg=57   ctermbg=15   cterm=NONE
hi StatusLineNC  ctermfg=240  ctermbg=15   cterm=NONE
hi MatchParen    ctermfg=15   ctermbg=55   cterm=NONE
hi SpecialKey    ctermfg=226  ctermbg=NONE cterm=NONE
hi EndOfBuffer   ctermfg=226  ctermbg=NONE cterm=NONE
hi ColorColumn   ctermfg=240  ctermbg=3    cterm=bold

" Error and warning messages.
hi Error         ctermfg=15   ctermbg=9    cterm=bold
hi ErrorMsg      ctermfg=15   ctermbg=9    cterm=bold
hi WarningMsg    ctermfg=16   ctermbg=3    cterm=bold
hi Todo          ctermfg=245  ctermbg=19   cterm=bold

" Popup menu.
hi Pmenu         ctermfg=245  ctermbg=236  cterm=NONE
hi PmenuSel      ctermfg=245  ctermbg=55   cterm=bold
hi PmenuSbar     ctermfg=NONE ctermbg=240  cterm=NONE
hi PmenuThumb    ctermfg=NONE ctermbg=250  cterm=NONE

" vimdiff.
hi DiffAdd       ctermfg=16   ctermbg=28   cterm=NONE
hi DiffChange    ctermfg=16   ctermbg=28   cterm=NONE
hi DiffDelete    ctermfg=16   ctermbg=160  cterm=NONE
hi DiffText      ctermfg=16   ctermbg=2    cterm=bold

" Spelling.
hi SpellBad      ctermfg=15   ctermbg=52   cterm=bold
hi SpellCap      ctermfg=15   ctermbg=17   cterm=underline
hi SpellLocal    ctermfg=15   ctermbg=23   cterm=underline
hi SpellRare     ctermfg=15   ctermbg=54   cterm=underline

" Other UI elements.
hi Folded        ctermfg=245  ctermbg=238  cterm=NONE
hi FoldColumn    ctermfg=245  ctermbg=236  cterm=NONE
hi IncSearch     ctermfg=16   ctermbg=226  cterm=NONE
hi CursorLine    ctermfg=NONE ctermbg=235  cterm=NONE
hi CursorColumn  ctermfg=NONE ctermbg=235  cterm=NONE
hi CursorLineNr  ctermfg=250  ctermbg=236  cterm=bold
hi SignColumn    ctermfg=245  ctermbg=235  cterm=NONE
hi VertSplit     ctermfg=240  ctermbg=240  cterm=NONE

" Tab line.
hi TabLine       ctermfg=245  ctermbg=238  cterm=NONE
hi TabLineFill   ctermfg=240  ctermbg=240  cterm=NONE
hi TabLineSel    ctermfg=15   ctermbg=240  cterm=bold

" Links.
hi link Number Constant
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC

