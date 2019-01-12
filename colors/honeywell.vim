" File:       honeywell.vim
" Author:     Samuel Volk (IllegalLeft)
" Modified:   12 Jan 2019

hi clear
set bg=light

if exists("syntax on")
    syntax reset
endif

let g:colors_name="honeywell"

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
