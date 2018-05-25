" -------------------------------------------------------
" (c) 2018 Henry Newcomer
" "Papaya"
"    - A Vim color scheme
" -------------------------------------------------------
" Source: https://github.com/HenryNewcomer/vim-theme-papaya
" -------------------------------------------------------


" Basic init
scriptencoding utf-8
set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
syntax enable
set t_Co=256
let g:colors_name = "papaya"


" ----
" Functions; outputs the highlight strings
" ----

function! SetHiGui(group, ...)
  let theme_string = 'hi! ' . a:group . ' '

  if strlen(a:1)
    let theme_string .= 'guifg=' . a:1 . ' '
  endif

  if strlen(a:2)
    let theme_string .= 'guibg=' . a:2 . ' '
  endif

  if strlen(a:3)
    let theme_string .= 'gui=' . a:3 . ' '
  endif

  if a:0 >= 4 && strlen(a:4)
    let theme_string .= 'guisp=' . a:4
  endif

  execute theme_string
endfunction

function! SetHi256(group, ...)
  let theme_string = 'hi! ' . a:group . ' '

  if strlen(a:1)
    let theme_string .= 'ctermfg=' . a:1 . ' '
  endif

  if strlen(a:2)
    let theme_string .= 'ctermbg=' . a:2 . ' '
  endif

  if a:0 >= 3 && strlen(a:3)
    let theme_string .= 'cterm=' . a:3
  endif

  execute theme_string
endfunction

function! SetHiLink(group, linkTo)
  let theme_string = 'hi! link ' . a:group . ' ' . a:linkTo
  execute theme_string
endfunction


" ----
" Set default operators
" ----

syntax match OperatorChars "?\|!\|+\|-\|\*\|%\|=\|&\||\|;\|:\|,\|<\|>\|\~\|(\|)\|{\|}\|\[\|\]\|/\(/\|\.\|*\)\@!"

call SetHiGui("OperatorChars", "#ba9f7e", "NONE", "bold", "NONE")
call SetHi256("OperatorChars", "137", "NONE", "bold")


" ----
" Define main color scheme properties
" ----

call SetHiGui("Boolean", "#A1A6A8", "NONE", "bold", "NONE")
call SetHi256("Boolean", "145", "NONE", "bold")

call SetHiGui("Character", "#A1A6A8", "NONE", "bold", "NONE")
call SetHi256("Character", "248", "NONE", "bold")

call SetHiGui("Comment", "#63616E", "NONE", "italic", "NONE")
call SetHi256("Comment", "240", "NONE", "italic")

call SetHiGui("Conditional", "#f8be5a", "NONE", "bold", "NONE")
call SetHi256("Conditional", "214", "NONE", "bold")

call SetHiGui("Constant", "#9760d1", "NONE", "bold", "NONE")
call SetHi256("Constant", "98", "NONE", "bold")

call SetHiGui("Cursor", "#000000", "#abbed1", "bold", "#abbed1")
call SetHi256("Cursor", "NONE", "146", "bold")

call SetHiGui("CursorColumn", "NONE", "#2A2732", "bold", "#2A2732")
call SetHi256("CursorColumn", "NONE", "236", "bold")

call SetHiGui("cursorim", "#192224", "#536991", "bold", "#536991")
call SetHi256("cursorim", "235", "60", "bold")

call SetHiGui("CursorLine", "NONE", "#2A2732", "bold", "#2A2732")
call SetHi256("CursorLine", "NONE", "236", "bold")

call SetHiGui("Debug", "#BA9F7E", "NONE", "bold", "NONE")
call SetHi256("Debug", "137", "NONE", "bold")

call SetHiGui("Define", "#BA9F7E", "NONE", "bold", "NONE")
call SetHi256("Define", "137", "NONE", "bold")

call SetHiGui("Delimiter", "#BA9F7E", "NONE", "bold", "NONE")
call SetHi256("Delimiter", "137", "NONE", "bold")

call SetHiGui("DiffAdd", "#9ade91", "#00b34e", "bold", "#00b34e")
call SetHi256("DiffAdd", "114", "35", "bold")

call SetHiGui("DiffChange", "#5c1313", "#8a2c36", "bold", "#8a2c36")
call SetHi256("DiffChange", "52", "88", "bold,underline")

call SetHiGui("DiffDelete", "NONE", "#192224", "bold", "#192224")
call SetHi256("DiffDelete", "NONE", "235", "bold,underline")

call SetHiGui("DiffText", "#5c1d1d", "#ad3e48", "bold", "#ad3e48")
call SetHi256("DiffText", "52", "131", "bold")

call SetHiGui("Directory", "#536991", "NONE", "bold", "NONE")
call SetHi256("Directory", "60", "NONE", "bold")

call SetHiGui("Error", "#A1A6A8", "#912C00", "bold", "#912C00")
call SetHi256("Error", "248", "88", "bold")

call SetHiGui("ErrorMsg", "#e84545", "#ad0025", "bold", "#ad0025")
call SetHi256("ErrorMsg", "203", "124", "bold")

call SetHiGui("Exception", "#8a8a8a", "NONE", "bold", "NONE")
call SetHi256("Exception", "245", "NONE", "bold")

call SetHiGui("Float", "#A1A6A8", "NONE", "bold", "NONE")
call SetHi256("Float", "248", "NONE", "bold")

call SetHiGui("FoldColumn", "#192224", "#A1A6A8", "bold,italic", "#A1A6A8")
call SetHi256("FoldColumn", "235", "248", "bold")

call SetHiLink("Folded", "FoldColumn")

call SetHiGui("Function", "#41577a", "NONE", "bold", "NONE")
call SetHi256("Function", "60", "NONE", "bold")

call SetHiGui("Identifier", "#41577a", "NONE", "bold", "NONE")
call SetHi256("Identifier", "60", "NONE", "bold")

call SetHiGui("IncSearch", "#162a66", "#035fb0", "bold", "#035fb0")
call SetHi256("IncSearch", "17", "25", "bold")

call SetHiGui("Include", "#BA9F7E", "NONE", "bold", "NONE")
call SetHi256("Include", "137", "NONE", "bold")

call SetHiGui("Keyword", "#d957b6", "NONE", "bold", "NONE")
call SetHi256("Keyword", "169", "NONE", "bold")

call SetHiGui("Label", "#BA9F7E", "NONE", "bold", "NONE")
call SetHi256("Label", "137", "NONE", "bold")

call SetHiGui("LineNr", "#2a2833", "#18171c", "bold", "#18171c")
call SetHi256("LineNr", "236", "234", "bold")

call SetHiGui("Macro", "#BA9F7E", "NONE", "bold", "NONE")
call SetHi256("Macro", "137", "NONE", "bold")

call SetHiGui("MatchParen", "#BA9F7E", "NONE", "bold", "NONE")
call SetHi256("MatchParen", "137", "NONE", "bold")

call SetHiGui("ModeMsg", "#F9F9F9", "#192224", "bold", "#192224")
call SetHi256("ModeMsg", "15", "235", "bold")

call SetHiGui("MoreMsg", "#BA9F7E", "NONE", "bold", "NONE")
call SetHi256("MoreMsg", "137", "NONE", "bold")

call SetHiGui("NonText", "#5E6C70", "NONE", "bold,italic", "NONE")
call SetHi256("NonText", "66", "NONE", "bold")

call SetHiGui("Normal", "#b6d3e3", "#1f1e24", "bold")
call SetHi256("Normal", "152", "235", "bold")

call SetHiGui("Number", "#bd7b6f", "NONE", "bold", "NONE")
call SetHi256("Number", "131", "NONE", "bold")

call SetHiGui("Operator", "#604f75", "NONE", "bold", "NONE")
call SetHi256("Operator", "60", "NONE", "bold")

call SetHiGui("PMenu", "#1b2633", "#34475e", "bold", "#34475e")
call SetHi256("PMenu", "236", "60", "bold")

call SetHiGui("PMenuSbar", "#ff0000", "#26384d", "bold", "#26384d")
call SetHi256("PMenuSbar", "196", "239", "bold")

call SetHiGui("PMenuSel", "#8ab7eb", "#5a7491", "bold", "#5a7491")
call SetHi256("PMenuSel", "110", "60", "bold")

call SetHiGui("PMenuThumb", "NONE", "#3a6aa1", "bold", "#3a6aa1")
call SetHi256("PMenuThumb", "NONE", "67", "bold")

call SetHiGui("PreCondit", "#05ff48", "NONE", "bold", "NONE")
call SetHi256("PreCondit", "47", "NONE", "bold")

call SetHiGui("PreProc", "#72badb", "NONE", "bold", "NONE")
call SetHi256("PreProc", "74", "NONE", "bold")

call SetHiGui("Repeat", "#BA9F7E", "NONE", "bold", "NONE")
call SetHi256("Repeat", "137", "NONE", "bold")

call SetHiGui("Search", "#00eaff", "#0088ff", "bold", "#0088ff")
call SetHi256("Search", "45", "33", "bold")

call SetHiGui("SignColumn", "#192224", "#536991", "bold", "#536991")
call SetHi256("SignColumn", "235", "60", "bold")

call SetHiGui("Special", "#ba9f7e", "NONE", "bold", "NONE")
call SetHi256("Special", "137", "NONE", "bold")

call SetHiGui("SpecialChar", "#BA9F7E", "NONE", "bold", "NONE")
call SetHi256("SpecialChar", "137", "NONE", "bold")

call SetHiGui("SpecialComment", "#BA9F7E", "NONE", "NONE", "NONE")
call SetHi256("SpecialComment", "137", "NONE", "NONE")

call SetHiGui("SpecialKey", "#5E6C70", "NONE", "bold,italic", "NONE")
call SetHi256("SpecialKey", "66", "NONE", "bold")

call SetHiGui("SpellBad", "#F9F9FF", "#192224", "bold,underline", "#192224")
call SetHi256("SpellBad", "189", "235", "bold,underline")

call SetHiGui("SpellCap", "#F9F9FF", "#192224", "bold,underline", "#192224")
call SetHi256("SpellCap", "189", "235", "bold,underline")

call SetHiGui("SpellLocal", "#F9F9FF", "#192224", "bold,underline", "#192224")
call SetHi256("SpellLocal", "189", "235", "bold,underline")

call SetHiGui("SpellRare", "#F9F9FF", "#192224", "bold,underline", "#192224")
call SetHi256("SpellRare", "189", "235", "bold,underline")

call SetHiGui("Statement", "#5dc271", "NONE", "bold", "NONE")
call SetHi256("Statement", "78", "NONE", "bold")

call SetHiGui("StatusLine", "#1f1e24", "#434557", "bold", "#434557")
call SetHi256("StatusLine", "235", "240", "bold")

call SetHiGui("StatusLineNC", "#52505c", "#302e3d", "bold", "#302e3d")
call SetHi256("StatusLineNC", "59", "237", "bold")

call SetHiGui("StorageClass", "#536991", "NONE", "bold", "NONE")
call SetHi256("StorageClass", "60", "NONE", "bold")

call SetHiGui("String", "#6b7e8f", "NONE", "bold", "NONE")
call SetHi256("String", "66", "NONE", "bold")

call SetHiGui("Structure", "#536991", "NONE", "bold", "NONE")
call SetHi256("Structure", "60", "NONE", "bold")

call SetHiGui("TabLine", "#28272e", "#121117", "bold", "#121117")
call SetHi256("TabLine", "236", "233", "bold")

call SetHiGui("TabLineFill", "#191f24", "#0a090f", "bold", "#0a090f")
call SetHi256("TabLineFill", "235", "233", "bold")

call SetHiGui("TabLineSel", "#d4d4d4", "#1f1e24", "bold", "#1f1e24")
call SetHi256("TabLineSel", "188", "235", "bold")

call SetHiGui("Tag", "#BA9F7E", "NONE", "bold", "NONE")
call SetHi256("Tag", "137", "NONE", "bold")

call SetHiGui("Title", "#F9F9FF", "#192224", "bold", "#192224")
call SetHi256("Title", "189", "235", "bold")

call SetHiGui("Todo", "#e66177", "NONE", "bold", "#16131f")
call SetHi256("Todo", "167", "NONE", "bold")

call SetHiGui("Type", "#0088ff", "NONE", "bold", "NONE")
call SetHi256("Type", "33", "NONE", "bold")

call SetHiGui("Typedef", "#536991", "NONE", "bold", "NONE")
call SetHi256("Typedef", "60", "NONE", "bold")

call SetHiGui("Underlined", "#F9F9FF", "#192224", "bold,underline", "#192224")
call SetHi256("Underlined", "189", "235", "bold,underline")

call SetHiGui("VertSplit", "#5e6c70", "NONE", "bold", "#5E6C70")
call SetHi256("VertSplit", "59", "NONE", "bold")

call SetHiGui("Visual", "#192224", "#F9F9FF", "bold", "#F9F9FF")
call SetHi256("Visual", "235", "189", "bold")

call SetHiGui("VisualNOS", "#192224", "#F9F9FF", "bold,underline", "#F9F9FF")
call SetHi256("VisualNOS", "235", "189", "bold,underline")

call SetHiGui("WarningMsg", "#A1A6A8", "#912C00", "bold", "#912C00")
call SetHi256("WarningMsg", "248", "88", "bold")

call SetHiGui("WildMenu", "NONE", "#A1A6A8", "bold", "#A1A6A8")
call SetHi256("WildMenu", "NONE", "248", "bold")


" ----
" Language Specific
" ----

" JavaScript
call SetHiGui("javaScriptBraces", "#ba7e88", "NONE", "bold", "NONE")
call SetHi256("javaScriptBraces", "169", "NONE", "bold")

"call SetHiGui("javaScriptFunction", "#ca95d3", "NONE", "bold", "NONE")
"call SetHi256("javaScriptFunction", "135", "NONE", "bold")
call SetHiLink("javaScriptFunction", "Function")

"call SetHiGui("javaScriptNumber", "#bd7b6f", "NONE", "bold", "NONE")
"call SetHi256("javaScriptNumber", "131", "NONE", "bold")
call SetHiLink("javaScriptNumber", "Number")

call SetHiGui("javaScriptParens", "#ba9f7e", "NONE", "bold", "NONE")
call SetHi256("javaScriptParens", "137", "NONE", "bold")


" ----
" Plugin related colors
" ----

let g:indentLine_color_gui = '#535261'
"let g:indentLine_bgcolor_gui = '#1f1e24'


" ----
" Miscellaneous
" ----

" Sets the OverLength if in .vimrc: match OverLength /\%81v.\+/
call SetHiGui("OverLength", "NONE", "#110f17", "bold")
call SetHi256("OverLength", "233", "59", "bold")

" Fixes the yellow relative number
call SetHiGui("CursorLineNr", "#171717", "#443E4F", "bold", "#344b59")
call SetHi256("CursorLineNr", "233", "59", "bold")


" ----
" Extra settings currently without values
" ----

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi EnumerationValue -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi EnumerationName -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi CTagsClass -- no settings --
"hi clear -- no settings --

" ----
" EoF
