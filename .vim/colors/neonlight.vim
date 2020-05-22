hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "neonlight"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    hi Normal ctermfg=246 cterm=NONE

    hi Comment ctermfg=240
    hi Keyword ctermfg=250 cterm=bold
    hi Identifier ctermfg=250 cterm=bold
    hi Statement ctermfg=250 cterm=bold
    hi String ctermfg=248 cterm=bold
    hi Constant ctermfg=NONE cterm=bold
    hi Special ctermfg=NONE cterm=bold
    hi PreProc ctermfg=NONE cterm=bold
    hi Operator ctermfg=NONE cterm=bold
    hi Type ctermfg=248 cterm=bold
    hi Visual ctermbg=236
    hi LineNr ctermfg=242 ctermbg=235 cterm=bold
    hi Search ctermbg=124 ctermfg=250
    hi StatusLine ctermfg=57 ctermbg=15
    hi StatusLineNc ctermbg=15
    hi WarningMsg ctermbg=2 cterm=bold
    hi Error ctermbg=9 cterm=bold
    hi ErrorMsg ctermbg=2 cterm=bold
    hi Todo ctermbg=19 ctermfg=245 cterm=bold
    hi MatchParen ctermbg=55 ctermfg=15
    hi SpecialKey ctermfg=21
    hi EndOfBuffer ctermfg=21
    hi ColorColumn ctermbg=3 ctermfg=7
    hi DiffAdd ctermbg=12

    hi link Number Constant
    hi link StatusLineTerm StatusLine
    hi link StatusLineTermNC StatusLineNC
    hi link WarningMsg Error
endif

