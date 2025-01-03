" File:       honeywell.vim
" Author:     Samuel Volk (IllegalLeft)
" Modified:   2 Jan 2025

hi clear

if exists("syntax on")
    syntax reset
endif

let g:colors_name="honeywell"

" Color Palette
" Greyscale
let s:black         = { "gui": "#121212", "cterm": "233" }
let s:light_black   = { "gui": "#1c1c1c", "cterm": "234" }
let s:dark_grey     = { "gui": "#3a3a3a", "cterm": "237" }
let s:grey          = { "gui": "#666666", "cterm": "242" }
let s:light_grey    = { "gui": "#9e9e9e", "cterm": "247" }
let s:lighter_grey  = { "gui": "#bcbcbc", "cterm": "250" }
let s:dark_white    = { "gui": "#d0d0d0", "cterm": "252" }
let s:white         = { "gui": "#eeeeee", "cterm": "255" }
" Accent/Secondary
let s:darkest_red   = { "gui": "#5f0000", "cterm":  "52" }
let s:dark_red      = { "gui": "#af0000", "cterm": "124" }
let s:red           = { "gui": "#d70000", "cterm": "160" }
let s:light_red     = { "gui": "#ff0000", "cterm": "196" }
let s:pink          = { "gui": "#d7afaf", "cterm": "181" }
" Tertiary
let s:light_orange  = { "gui": "#ffaf5f", "cterm": "215" }
let s:dark_orange   = { "gui": "#ff5f00", "cterm": "202" }
let s:light_yellow  = { "gui": "#ffffaf", "cterm": "229" }
let s:dark_yellow   = { "gui": "#ffd700", "cterm": "220" }
" Misc. Colours
let s:green         = { "gui": "#00d700", "cterm":  "76" }
let s:blue          = { "gui": "#0087af", "cterm":  "38" }

let s:actual_black  = { "gui": "#000000", "cterm":  "16" }
let s:actual_white  = { "gui": "#ffffff", "cterm": "231" }

if &background == "dark"
    " Dark theme
    let s:bg            = s:black
    let s:bg_light      = s:light_black
    let s:bg_lighter    = s:dark_grey
    let s:norm          = s:light_grey
    let s:fg            = s:norm
    let s:fg_light      = s:lighter_grey
    let s:fg_lighter    = s:white
    let s:accent        = s:red
    let s:red_subtle    = s:darkest_red
    let s:tertiary      = s:light_orange
    let s:tertiary_light= s:dark_orange
else
    " Light theme
    let s:bg            = s:white
    let s:bg_light      = s:dark_white
    let s:bg_lighter    = s:light_grey
    let s:norm          = s:dark_grey
    let s:fg            = s:norm
    let s:fg_light      = s:grey
    let s:fg_lighter    = s:white
    let s:accent        = s:red
    let s:red_subtle    = s:pink
    let s:tertiary      = s:light_yellow
    let s:tertiary_light= s:light_orange
endif

" Utility function from hemisu: https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
      execute "highlight" a:group
              \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
              \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
              \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
              \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
              \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
              \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
              \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

" Highlights
call s:h("Normal",          { "fg": s:norm, "bg": s:bg})
call s:h("Comment",         { "fg": s:fg_lighter})
" Cursor
call s:h("Cursor",          {"bg": s:dark_red, "fg": s:norm})
call s:h("CursorLine",      {"bg": s:bg_light})
call s:h("CursorLineNr",    {"fg": s:red, "bg": s:bg_light})

" Language Syntax
" Constants
call s:h("Constant",        {"fg": s:accent})
hi! link String             Constant
hi! link Character          Constant
hi! link Number             Constant
hi! link Boolean            Constant
hi! link Float              Constant
" Identifiers
call s:h("Identifier",      {"fg": s:norm})
hi! link Function           Identifier
" Statements
call s:h("Statement",       {"fg": s:norm})
hi! link Conditional        Statement
hi! link Repeat             Statement
hi! link Label              Statement
hi! link Keyword            Statement
hi! link Exception          Statement
" Operators
call s:h("Operator",        {"fg": s:norm})
" PreProcessors
call s:h("PreProc",         {"fg": s:norm})
hi! link Include            PreProc
hi! link Define             PreProc
hi! link Macro              PreProc
hi! link PreCondit          PreProc
" Types
call s:h("Type",            {"fg": s:norm})
hi! link StorageClass       Type
hi! link Structure          Type
hi! link Typedef            Type
" Special
call s:h("Special",         {"fg": s:norm})
hi! link SpecialChar        Special
hi! link Tag                Special
hi! link Delimiter          Special
hi! link SpecialComment     Special
hi! link Debug              Special
" Misc Syntax
call s:h("Underlined",      {"fg": s:norm, "gui": "italic"})
call s:h("Ignore",          {"fg": s:bg})
call s:h("Error",           {"fg": s:light_red})
call s:h("Todo",            {"fg": s:dark_red})

" Folds
call s:h("Folded",            {"fg": s:fg_light, "bg": s:bg_light})
call s:h("FoldColumn",        {"fg": s:fg_light, "bg": s:bg_light})

" Search
call s:h("Search",          {"bg": s:tertiary})
call s:h("IncSearch",       {"bg": s:bg_lighter})

" Statusline
call s:h("StatusLine",      {"fg": s:fg_lighter, "bg": s:bg_lighter})
call s:h("StatusLineNC",    {"fg": s:fg_light, "bg": s:bg_light})

" Tabs
call s:h("Tabline",         {"bg": s:bg_lighter})
call s:h("TabLineFill",     {"bg": s:bg_light})
call s:h("TabLineSel",      {"fg": s:fg_lighter, "bg": s:bg_lighter})

" Diff
call s:h("DiffAdd",         {"bg": s:tertiary})
call s:h("DiffChange",      {"bg": s:bg_lighter})
call s:h("DiffDelete",      {"bg": s:light_red})
call s:h("DiffText",        {"bg": s:tertiary, "cterm": "bold"})

" Misc.
call s:h("ColorColumn",     {"bg": s:bg_light})
call s:h("Directory",       {"fg": s:bg_lighter})
call s:h("EndOfBuffer",     {"bg": s:bg})
call s:h("LineNr",          {"fg": s:bg_lighter, "bg": s:bg})
call s:h("MoreMsg",         {"fg": s:accent})
call s:h("ModeMsg",         {"fg": s:accent})
call s:h("NonText",         {"fg": s:bg_lighter})
call s:h("Question",        {"fg": s:tertiary})
call s:h("SpecialKey",      {"fg": s:accent})
call s:h("Title",           {"fg": s:accent})
call s:h("VertSplit",       {"fg": s:bg, "bg": s:bg_lighter})
call s:h("Visual",          {"fg": s:fg_light, "bg": s:bg_lighter})
call s:h("VisualNOS",       {"bg": s:bg_light})
call s:h("WarningMsg",      {"fg": s:tertiary})
call s:h("WildMenu",        {"fg": s:bg, "bg": s:tertiary})
