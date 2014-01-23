"                                    __  __ _ _    
"                    __ _ _ __ __ _ / _|/ _(_) | __
"                   / _` | '__/ _` | |_| |_| | |/ /
"                  | (_| | | | (_| |  _|  _| |   < 
"                   \__, |_|  \__,_|_| |_| |_|_|\_\
"                   |___/                          
"
" Author: Taurus Olson <taurusolson@gmail.com>


hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="graffik"

" Colors
let s:graffik_orange     = "#FD971F"
let s:graffik_white      = "#CCCCCC"
let s:graffik_black      = "#1A1A1A"
let s:graffik_grey       = "#777777"
let s:graffik_dark_grey  = "#555555"
let s:graffik_light_grey = "#4C4745"
let s:graffik_brown      = "#262626"
let s:graffik_pink       = "#F92672"
let s:graffik_yellow     = "#E6DB74"
let s:graffik_blue       = "#66D9EF"
let s:graffik_green      = "#A6E22E"

function! Colorize(group, fg, bg, gui)
    exe "hi " .a:group. " guifg=" .a:fg. " guibg=".a:bg. " gui="a:gui
endfunction


call Colorize("Character"   , s:graffik_yellow , "NONE"    , "none")
call Colorize("String"      , s:graffik_orange , "NONE"    , "none")
call Colorize("Boolean"     , "#AE81FF"        , "NONE"    , "none")
call Colorize("Number"      , "#AE81FF"        , "NONE"    , "none")
call Colorize("Conditional" , s:graffik_green  , "NONE"    , "bold")
call Colorize("Constant"    , "#AE81FF"        , "NONE"    , "bold")
call Colorize("Cursor"      , "#000000"        , "#F8F8F0" , "bold")
call Colorize("Debug"       , "#BCA3A3"        , "NONE"    , "bold")
call Colorize("Define"      , s:graffik_blue   , "NONE"    , "bold")
call Colorize("Delimiter"   , "#8F8F8F"        , "NONE"    , "bold")

" Msg {{{

call Colorize("ErrorMsg" , s:graffik_pink   , "#232526" , "bold")
call Colorize("ModeMsg"  , s:graffik_yellow , "NONE"    , "none")
call Colorize("MoreMsg"  , s:graffik_yellow , "NONE"    , "none")

" }}}

" Diff {{{

call Colorize("DiffAdd"    , "#1E0010"      , s:graffik_green      , "none")
call Colorize("DiffChange" , "fg"           , s:graffik_light_grey , "none")
call Colorize("DiffDelete" , "#960050"      , "#1E0010"            , "none")
call Colorize("DiffText"   , s:graffik_blue , s:graffik_light_grey , "italic")

" }}}

call Colorize("Directory"  , s:graffik_green  , "NONE"           , "bold")
call Colorize("Error"      , "#960050"        , "#1E0010"        , "NONE")
call Colorize("Exception"  , s:graffik_green  , "NONE"           , "bold")
call Colorize("Float"      , "#AE81FF"        , "NONE"           , "none")
call Colorize("FoldColumn" , "#465457"        , "#000000"        , "none")
call Colorize("Folded"     , "#666666"        , "bg"             , "none")
call Colorize("Function"   , s:graffik_green  , "NONE"           , "none")
call Colorize("Identifier" , s:graffik_green  , "NONE"           , "none")
call Colorize("Ignore"     , "#808080"        , "bg"             , "none")
call Colorize("Keyword"    , s:graffik_pink   , "NONE"           , "bold")
call Colorize("Label"      , s:graffik_yellow , "NONE"           , "none")
call Colorize("Macro"      , "#C4BE89"        , "NONE"           , "italic")
call Colorize("MatchParen" , "#000000"        , s:graffik_green  , "none")
call Colorize("Operator"   , s:graffik_pink   , "NONE"           , "none")

" Completion menu {{{

call Colorize("Pmenu"      , s:graffik_blue   , s:graffik_brown , "none")
call Colorize("PmenuSel"   , s:graffik_green  , "bg"            , "none")
call Colorize("PmenuSbar"  , "NONE"           , "#080808"       , "none")
call Colorize("PmenuThumb" , s:graffik_pink   , "NONE"          , "none")


" }}}


" Tabs {{{

call Colorize("TabLine"     , s:graffik_grey  , s:graffik_black , "none")
call Colorize("TabLineSel"  , s:graffik_green , "bg"            , "bold")
call Colorize("TabLineFill" , "bg"            , s:graffik_black , "none")

" }}}


call Colorize("PreCondit" , s:graffik_green      , "NONE"           , "bold")
call Colorize("PreProc"   , s:graffik_green      , "NONE"           , "bold")
call Colorize("Question"  , s:graffik_blue       , "NONE"           , "bold")
call Colorize("Repeat"    , s:graffik_pink       , "NONE"           , "bold")
call Colorize("Search"    , "#000000"            , s:graffik_green  , "none")
call Colorize("IncSearch"  , "#C4BE89"        , "#000000"        , "none")

" marks column
call Colorize("SignColumn", s:graffik_green, "bg", "bold")

" Special {{{

call Colorize("SpecialKey"     , s:graffik_brown , "NONE" , "none")
call Colorize("SpecialChar"    , s:graffik_pink  , "NONE" , "bold")
call Colorize("SpecialComment" , "#465457"       , "NONE" , "bold")
call Colorize("Special"        , s:graffik_blue  , "bg"   , "italic")
call Colorize("NonText"        , "#465457"       , "NONE" , "none")

" }}}

" Spell {{{

if has("spell")
    hi SpellBad    guisp=#FF0000 gui=undercurl
    hi SpellCap    guisp=#7070F0 gui=undercurl
    hi SpellLocal  guisp=#70F0F0 gui=undercurl
    hi SpellRare   guisp=#FFFFFF gui=undercurl
endif

" }}}

call Colorize("Statement", s:graffik_pink, "NONE", "bold")

" Statusline {{{

call Colorize("Statusline"   , s:graffik_green, s:graffik_brown ,"bold")
call Colorize("StatuslineNC" , s:graffik_grey , s:graffik_brown , "none")

" }}}

call Colorize("StorageClass" , s:graffik_green     , "NONE"                     , "italic")
call Colorize("Todo"         , s:graffik_green     , "bg"                       , "bold")
call Colorize("Tag"          , s:graffik_pink      , "NONE"                     , "italic")
call Colorize("Structure"    , s:graffik_blue      , "NONE"                     , "none")
call Colorize("Title"        , "#ef5939"           , "NONE"                     , "none")
call Colorize("Typedef"      , s:graffik_blue      , "NONE"                     , "none")
call Colorize("Type"         , s:graffik_blue      , "NONE"                     , "none")
call Colorize("Underlined"   , "#808080"           , "NONE"                     , "underline")
call Colorize("VertSplit"    , s:graffik_brown     , s:graffik_brown            , "bold")
call Colorize("VisualNOS"    , "NONE"              , "#403D3D"                  , "none")
call Colorize("Visual"       , "NONE"              , "#403D3D"                  , "none")
call Colorize("WarningMsg"   , "#FFFFFF"           , "#333333"                  , "bold")
call Colorize("WildMenu"     , s:graffik_blue      , "bg"                       , "none")
call Colorize("Normal"       , s:graffik_white     , s:graffik_black            , "none")
call Colorize("Comment"      , s:graffik_grey      , "NONE"                     , "none")
call Colorize("CursorLine"   , "NONE"              , s:graffik_brown            , "none")
call Colorize("CursorColumn" , "NONE"              , s:graffik_brown            , "none")
call Colorize("ColorColumn"  , "NONE"              , s:graffik_brown            , "none")
call Colorize("LineNr"       , s:graffik_dark_grey , "bg"                       , "none")
call Colorize("CursorLineNr" , s:graffik_green     , s:graffik_brown            , "none")


" HTML
call Colorize("htmlH1"     , s:graffik_green     , "bg" , "bold")
call Colorize("htmlH2"     , s:graffik_blue      , "bg" , "bold")
call Colorize("htmlH3"     , s:graffik_orange    , "bg" , "bold")
call Colorize("htmlBold"   , s:graffik_pink      , "bg" , "bold")
call Colorize("htmlItalic" , s:graffik_yellow    , "bg" , "italic")

" Markdown
call Colorize("mkdListItem" , s:graffik_pink     , "bg"            , "none")
call Colorize("mkdCode"     , s:graffik_dark_grey, "bg"            , "none")
call Colorize("mkdLink"     , s:graffik_grey     , s:graffik_brown , "none")
call Colorize("mkdURL"      , s:graffik_blue     , s:graffik_brown , "none")




" vim: set fdm=marker:"
