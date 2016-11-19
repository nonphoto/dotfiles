hi! clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="terminal"



" Generic

hi Normal ctermfg=NONE ctermbg=NONE cterm=NONE

hi Comment ctermfg=8 ctermbg=NONE cterm=NONE

hi Constant ctermfg=3 ctermbg=NONE cterm=NONE
hi link String Constant
hi link Character Constant
hi link Number Constant
hi link Boolean Constant
hi link Float Constant

hi Identifier ctermfg=6 ctermbg=NONE cterm=NONE 
hi link Function Identifier

hi Statement ctermfg=2 ctermbg=NONE cterm=NONE
hi link Conditional Statement
hi link Repeat Statement
hi link Label Statement
hi link Operator Statement
hi link Keyword Statement
hi link Exception Statement

hi PreProc ctermfg=5 ctermbg=NONE cterm=NONE
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc

hi Type ctermfg=4 ctermbg=NONE cterm=NONE
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type

hi Special ctermfg=1 ctermbg=NONE cterm=NONE
hi link SpecialChar Special
hi link Tag Special
hi link Delimiter Special
hi link SpecialComment Special
hi link Debug Special

hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
hi Ignore ctermfg=0 ctermbg=NONE cterm=NONE
hi Error ctermfg=1 ctermbg=9 cterm=NONE
hi Todo ctermfg=0 ctermbg=7 cterm=bold



" Vim UI

hi MatchParen ctermfg=15 ctermbg=NONE cterm=bold

hi Visual ctermfg=7 ctermbg=0 cterm=NONE
hi VisualNOS ctermfg=7 ctermbg=NONE cterm=NONE

hi WildMenu ctermfg=15 ctermbg=NONE cterm=NONE

hi SpecialKey ctermfg=0 ctermbg=NONE cterm=NONE
hi NonText ctermfg=0 ctermbg=NONE cterm=NONE
hi Conceal ctermfg=0 ctermbg=NONE cterm=NONE

hi Folded ctermfg=8 ctermbg=NONE cterm=bold
hi FoldColumn ctermfg=8 ctermbg=NONE cterm=bold
hi SignColumn ctermfg=8 ctermbg=NONE cterm=bold

hi ErrorMsg ctermfg=1 ctermbg=9 cterm=NONE
hi WarningMsg ctermfg=3 ctermbg=11 cterm=NONE
hi IncSearch ctermfg=15 ctermbg=NONE cterm=bold
hi Search ctermfg=NONE ctermbg=7 cterm=NONE
hi MoreMsg ctermfg=6 ctermbg=14 cterm=NONE
hi ModeMsg ctermfg=NONE ctermbg=NONE cterm=NONE

hi LineNr ctermfg=0 ctermbg=NONE cterm=NONE
hi CursorLineNr ctermfg=NONE ctermbg=NONE cterm=NONE
hi Cursor ctermfg=0 ctermbg=15 cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=0 cterm=NONE

hi StatusLine ctermfg=7 ctermbg=NONE cterm=underline
hi StatusLineNC ctermfg=0 ctermbg=NONE cterm=underline
hi VertSplit ctermfg=0 ctermbg=NONE cterm=NONE

hi DiffAdd ctermfg=2 ctermbg=NONE cterm=NONE
hi DiffChange ctermfg=3 ctermbg=NONE cterm=NONE
hi DiffDelete ctermfg=1 ctermbg=NONE cterm=NONE
hi DiffText ctermfg=NONE ctermbg=NONE cterm=NONE

hi SpellBad ctermfg=1 ctermbg=NONE cterm=underline
hi SpellCap ctermfg=4 ctermbg=NONE cterm=underline
hi SpellRare ctermfg=3 ctermbg=NONE cterm=underline
hi SpellLocal ctermfg=5 ctermbg=NONE cterm=underline

hi Pmenu ctermfg=5 ctermbg=13 cterm=NONE
hi PmenuSel ctermfg=13 ctermbg=5 cterm=NONE
hi PmenuSbar ctermfg=5 ctermbg=13 cterm=NONE
hi PmenuThumb ctermfg=13 ctermbg=5 cterm=NONE



" Plugins

hi SneakPluginTarget ctermfg=NONE ctermbg=NONE cterm=bold
