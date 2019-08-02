" File:       honeywell.vim
" Author:     Samuel Volk (IllegalLeft)
" Modified:   12 Jan 2019

hi clear
set bg=light

if exists("syntax on")
    syntax reset
endif

let g:colors_name="honeywell"

" Term Colors
" Vim
hi Normal   ctermfg=241   ctermbg=254
hi ModeMsg  ctermfg=253   ctermbg=124
" Cursor
hi Cursor   ctermfg=124	    ctermbg=NONE    cterm=reverse
"hi lCursor
hi CursorLine	ctermfg=NONE  ctermbg=252
hi CursorLineNr	ctermfg=124   cterm=NONE
hi CursorColumn	ctermfg=NONE  ctermbg=253
hi MatchParen	ctermfg=NONE  ctermbg=178
" Diff
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
" Folds
hi Folded	ctermfg=254	ctermbg=248
hi FoldColumn	ctermfg=254	ctermbg=248
" Searching
hi Search	ctermfg=NONE	ctermbg=251
hi IncSearch	ctermfg=NONE	ctermbg=251
" Statusline
hi StatusLine	ctermfg=253	ctermbg=244 cterm=NONE
hi StatusLineNC ctermfg=253	ctermbg=238 cterm=NONE
" Tabs
hi TabLine	ctermfg=254	ctermbg=100
hi Tablinefill	ctermfg=254	ctermbg=100
hi TabLineSel	ctermfg=100	ctermbg=254
" Misc
hi ColorColumn	ctermfg=254	ctermbg=139
hi Directory	ctermfg=67	ctermbg=NONE  cterm=NONE
hi EndOfBuffer	ctermfg=144	ctermbg=NONE
hi LineNr	ctermfg=251	ctermbg=NONE
hi MoreMsg	ctermfg=144	ctermbg=NONE
hi NonText	ctermfg=144	ctermbg=NONE
hi SpecialKey	ctermfg=100	ctermbg=NONE
hi Title	ctermfg=136	ctermbg=NONE  cterm=NONE
hi VertSplit	ctermfg=254	ctermbg=249   cterm=reverse
hi Visual	ctermfg=NONE   	ctermbg=217
hi WarningMsg	ctermfg=126	ctermbg=NONE
hi WildMenu	ctermfg=254	ctermbg=126 cterm=bold
" Popup Menu
"hi Pmenu
"hi PmenuSel
"hi PmenuSbar
"hi PmenuThumb

" Syntax
hi Comment	ctermfg=246     ctermbg=NONE  cterm=NONE
hi Constant	ctermfg=242	ctermbg=NONE  cterm=NONE
hi Identifier	ctermfg=124	ctermbg=NONE  cterm=NONE
hi PreProc	ctermfg=244	ctermbg=NONE  cterm=NONE
hi Special	ctermfg=124	ctermbg=NONE  cterm=NONE
hi Statement	ctermfg=240	ctermbg=NONE  cterm=NONE
hi Type		ctermfg=244	ctermbg=NONE  cterm=NONE

hi Underlined	ctermfg=NONE	ctermfg=NONE  cterm=underline
hi Error	ctermfg=196	ctermbg=NONE
hi Todo		ctermfg=124	ctermbg=NONE


" GUI Colors
" Vim
hi Normal   guifg=#626262   guibg=#e4e4e4
hi ModeMsg  guifg=#dadada   guibg=#af0000
" Cursor
hi Cursor   guifg=#af0000	    guibg=NONE    gui=reverse
"hi lCursor
hi CursorLine	guifg=NONE  guibg=#d0d0d0
hi CursorLineNr	guifg=#af0000
hi CursorColumn	guifg=NONE  guibg=#dadaca
hi MatchParen	guifg=NONE  guibg=#cacaba
" Diff
"hi DiffAdd
"hi DiffChange
"hi DiffDelete
"hi DiffText
" Folds
hi Folded	guifg=#e4e4e4	guibg=#a8a8a8
hi FoldColumn	guifg=#e4e4e4	guibg=#a8a8a8
" Searching
hi Search	guifg=NONE	guibg=#c6c6c6
hi IncSearch	guifg=NONE	guibg=#c6c6c6
" Statusline
hi StatusLine	guifg=#dadada	guibg=#808080 gui=NONE
hi StatusLineNC guifg=#dadada	guibg=#444444 gui=NONE
" Tabs
hi TabLine	guifg=#e0e0e0	guibg=#7a7a50
hi Tablinefill	guifg=#e0e0e0	guibg=#7a7a50
hi TabLineSel	guifg=#7a7a50	guibg=#e0e0e0
" Misc
hi ColorColumn	guifg=#e0e0e0	guibg=#aa7aa0
hi Directory	guifg=#305070	guibg=NONE  gui=NONE
hi EndOfBuffer	guifg=#babaa0	guibg=NONE
hi LineNr	guifg=#c6c6c6	guibg=NONE
hi MoreMsg	guifg=#babaa0	guibg=NONE
hi NonText	guifg=#babaa0	guibg=NONE
hi SpecialKey	guifg=#7a7a50	guibg=NONE
hi Title	guifg=#90701c	guibg=NONE  gui=NONE
hi VertSplit	guifg=#e0e0e0	guibg=#b2b2b2 gui=reverse
hi Visual	guifg=NONE   	guibg=#ffafaf
hi WarningMsg	guifg=#a02080	guibg=NONE
hi WildMenu	guifg=#e3e0e0	guibg=#a02080 gui=bold
" Popup Menu
"hi Pmenu
"hi PmenuSel
"hi PmenuSbar
"hi PmenuThumb

" Syntax
hi Comment	guifg=#949494   guibg=NONE  gui=NONE
hi Constant	guifg=#6c6c6c	guibg=NONE  gui=NONE
hi Identifier	guifg=#af0000	guibg=NONE  gui=NONE
hi PreProc	guifg=#808080	guibg=NONE  gui=NONE
hi Special	guifg=#af0000	guibg=NONE  gui=NONE
hi Statement	guifg=#585858	guibg=NONE  gui=NONE
hi Type		guifg=#808080	guibg=NONE  gui=NONE

hi Underlined	guifg=NONE	guifg=NONE  gui=underline
hi Error	guifg=#d70000	guibg=NONE
hi Todo		guifg=#af0000	guibg=NONE
