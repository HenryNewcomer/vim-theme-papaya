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
set t_Co=256
let g:colors_name = "papaya"


" ----
" Functions; outputs the highlight strings
" ----

function! SetGui(group, ...)
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
    let theme_string .= 'guisp=' . a:4 . ' '
  endif

  execute theme_string
endfunction

function! Set256(group, ...)
  let theme_string = 'hi! ' . a:group . ' '

  if strlen(a:1)
    let theme_string .= 'ctermfg=' . a:1 . ' '
  endif

  if strlen(a:2)
    let theme_string .= 'ctermbg=' . a:2 . ' '
  endif

  if a:0 >= 3 && strlen(a:3)
    let theme_string .= 'cterm=' . a:3 . ' '
  endif

  execute theme_string
endfunction

" ----
" Define color scheme properties
" ----

call SetGui("Boolean", "#A1A6A8", "NONE", "bold", "NONE")
call Set256("Boolean", "248", "NONE", "bold")

call SetGui("Character", "#A1A6A8", "NONE", "bold", "NONE")
call Set256("Character", "248", "NONE", "bold")

call SetGui("Comment", "#63616E", "NONE", "italic", "NONE")
call Set256("Comment", "240", "NONE", "italic")

call SetGui("Conditional", "#f8be5a", "NONE", "bold", "NONE")
call Set256("Conditional", "214", "NONE", "bold")

call SetGui("Constant", "#9760d1", "NONE", "bold", "NONE")
call Set256("Constant", "98", "NONE", "bold")

call SetGui("Cursor", "#000000", "#abbed1", "bold", "#abbed1")
call Set256("Cursor", "NONE", "146", "bold")

call SetGui("CursorColumn", "NONE", "#2A2732", "bold", "#2A2732")
call Set256("CursorColumn", "NONE", "236", "bold")

call SetGui("cursorim", "#192224", "#536991", "bold", "#536991")
call Set256("cursorim", "235", "60", "bold")

call SetGui("CursorLine", "NONE", "#2A2732", "bold", "#2A2732")
call Set256("CursorLine", "NONE", "236", "bold")

call SetGui("Debug", "#BA9F7E", "NONE", "bold", "NONE")
call Set256("Debug", "137", "NONE", "bold")

call SetGui("Define", "#BA9F7E", "NONE", "bold", "NONE")
call Set256("Define", "137", "NONE", "bold")

call SetGui("Delimiter", "#BA9F7E", "NONE", "bold", "NONE")
call Set256("Delimiter", "137", "NONE", "bold")

call SetGui("DiffAdd", "#9ade91", "#00b34e", "bold", "#00b34e")
call Set256("DiffAdd", "114", "35", "bold")

call SetGui("DiffChange", "#5c1313", "#8a2c36", "bold", "#8a2c36")
call Set256("DiffChange", "52", "88", "bold,underline")

call SetGui("DiffDelete", "NONE", "#192224", "bold", "#192224")
call Set256("DiffDelete", "NONE", "235", "bold,underline")

call SetGui("DiffText", "#5c1d1d", "#ad3e48", "bold", "#ad3e48")
call Set256("DiffText", "52", "131", "bold")

call SetGui("Directory", "#536991", "NONE", "bold", "NONE")
call Set256("Directory", "60", "NONE", "bold")

call SetGui("Error", "#A1A6A8", "#912C00", "bold", "#912C00")
call Set256("Error", "248", "88", "bold")

call SetGui("ErrorMsg", "#e84545", "#ad0025", "bold", "#ad0025")
call Set256("ErrorMsg", "203", "124", "bold")

call SetGui("Exception", "#8a8a8a", "NONE", "bold", "NONE")
call Set256("Exception", "245", "NONE", "bold")

call SetGui("Float", "#A1A6A8", "NONE", "bold", "NONE")
call Set256("Float", "248", "NONE", "bold")

call SetGui("FoldColumn", "#192224", "#A1A6A8", "bold,italic", "#A1A6A8")
call Set256("FoldColumn", "235", "248", "bold")

call SetGui("Folded", "#192224", "#A1A6A8", "bold,italic", "#A1A6A8")
call Set256("Folded", "235", "248", "bold")

call SetGui("Function", "#41577a", "NONE", "bold", "NONE")
call Set256("Function", "60", "NONE", "bold")

call SetGui("Identifier", "#41577a", "NONE", "bold", "NONE")
call Set256("Identifier", "60", "NONE", "bold")

call SetGui("IncSearch", "#162a66", "#035fb0", "bold", "#035fb0")
call Set256("IncSearch", "17", "25", "bold")

call SetGui("Include", "#BA9F7E", "NONE", "bold", "NONE")
call Set256("Include", "137", "NONE", "bold")

call SetGui("Keyword", "#d957b6", "NONE", "bold", "NONE")
call Set256("Keyword", "169", "NONE", "bold")

call SetGui("Label", "#BA9F7E", "NONE", "bold", "NONE")
call Set256("Label", "137", "NONE", "bold")

call SetGui("LineNr", "#2a2833", "#18171c", "bold", "#18171c")
call Set256("LineNr", "236", "234", "bold")

call SetGui("Macro", "#BA9F7E", "NONE", "bold", "NONE")
call Set256("Macro", "137", "NONE", "bold")

call SetGui("MatchParen", "#BA9F7E", "NONE", "bold", "NONE")
call Set256("MatchParen", "137", "NONE", "bold")

call SetGui("ModeMsg", "#F9F9F9", "#192224", "bold", "#192224")
call Set256("ModeMsg", "15", "235", "bold")

call SetGui("MoreMsg", "#BA9F7E", "NONE", "bold", "NONE")
call Set256("MoreMsg", "137", "NONE", "bold")

call SetGui("NonText", "#5E6C70", "NONE", "bold,italic", "NONE")
call Set256("NonText", "66", "NONE", "bold")

call SetGui("Normal", "#b6d3e3", "#1f1e24", "bold")
call Set256("Normal", "152", "235", "bold")

call SetGui("Number", "#bd7b6f", "NONE", "bold", "NONE")
call Set256("Number", "131", "NONE", "bold")

call SetGui("Operator", "#604f75", "NONE", "bold", "NONE")
call Set256("Operator", "60", "NONE", "bold")

call SetGui("PMenu", "#1b2633", "#34475e", "bold", "#34475e")
call Set256("PMenu", "236", "60", "bold")

call SetGui("PMenuSbar", "#ff0000", "#26384d", "bold", "#26384d")
call Set256("PMenuSbar", "196", "239", "bold")

call SetGui("PMenuSel", "#8ab7eb", "#5a7491", "bold", "#5a7491")
call Set256("PMenuSel", "110", "60", "bold")

call SetGui("PMenuThumb", "NONE", "#3a6aa1", "bold", "#3a6aa1")
call Set256("PMenuThumb", "NONE", "67", "bold")

call SetGui("PreCondit", "#05ff48", "NONE", "bold", "NONE")
call Set256("PreCondit", "47", "NONE", "bold")

call SetGui("PreProc", "#72badb", "NONE", "bold", "NONE")
call Set256("PreProc", "74", "NONE", "bold")

call SetGui("Repeat", "#BA9F7E", "NONE", "bold", "NONE")
call Set256("Repeat", "137", "NONE", "bold")

call SetGui("Search", "#00eaff", "#0088ff", "bold", "#0088ff")
call Set256("Search", "45", "33", "bold")

call SetGui("SignColumn", "#192224", "#536991", "bold", "#536991")
call Set256("SignColumn", "235", "60", "bold")

call SetGui("Special", "#ba9f7e", "NONE", "bold", "NONE")
call Set256("Special", "137", "NONE", "bold")

call SetGui("SpecialChar", "#BA9F7E", "NONE", "bold", "NONE")
call Set256("SpecialChar", "137", "NONE", "bold")

call SetGui("SpecialComment", "#BA9F7E", "NONE", "NONE", "NONE")
call Set256("SpecialComment", "137", "NONE", "NONE")

call SetGui("SpecialKey", "#5E6C70", "NONE", "bold,italic", "NONE")
call Set256("SpecialKey", "66", "NONE", "bold")

call SetGui("SpellBad", "#F9F9FF", "#192224", "bold,underline", "#192224")
call Set256("SpellBad", "189", "235", "bold,underline")

call SetGui("SpellCap", "#F9F9FF", "#192224", "bold,underline", "#192224")
call Set256("SpellCap", "189", "235", "bold,underline")

call SetGui("SpellLocal", "#F9F9FF", "#192224", "bold,underline", "#192224")
call Set256("SpellLocal", "189", "235", "bold,underline")

call SetGui("SpellRare", "#F9F9FF", "#192224", "bold,underline", "#192224")
call Set256("SpellRare", "189", "235", "bold,underline")

call SetGui("Statement", "#5dc271", "NONE", "bold", "NONE")
call Set256("Statement", "78", "NONE", "bold")

call SetGui("StatusLine", "#1f1e24", "#434557", "bold", "#434557")
call Set256("StatusLine", "235", "240", "bold")

call SetGui("StatusLineNC", "#52505c", "#302e3d", "bold", "#302e3d")
call Set256("StatusLineNC", "59", "237", "bold")

call SetGui("StorageClass", "#536991", "NONE", "bold", "NONE")
call Set256("StorageClass", "60", "NONE", "bold")

call SetGui("String", "#6b7e8f", "NONE", "bold", "NONE")
call Set256("String", "66", "NONE", "bold")

call SetGui("Structure", "#536991", "NONE", "bold", "NONE")
call Set256("Structure", "60", "NONE", "bold")

call SetGui("TabLine", "#28272e", "#121117", "bold", "#121117")
call Set256("TabLine", "236", "233", "bold")

call SetGui("TabLineFill", "#191f24", "#0a090f", "bold", "#0a090f")
call Set256("TabLineFill", "235", "233", "bold")

call SetGui("TabLineSel", "#d4d4d4", "#1f1e24", "bold", "#1f1e24")
call Set256("TabLineSel", "188", "235", "bold")

call SetGui("Tag", "#BA9F7E", "NONE", "bold", "NONE")
call Set256("Tag", "137", "NONE", "bold")

call SetGui("Title", "#F9F9FF", "#192224", "bold", "#192224")
call Set256("Title", "189", "235", "bold")

call SetGui("Todo", "#e66177", "#16131f", "bold", "#16131f")
call Set256("Todo", "167", "234", "bold")

call SetGui("Type", "#0088ff", "NONE", "bold", "NONE")
call Set256("Type", "33", "NONE", "bold")

call SetGui("Typedef", "#536991", "NONE", "bold", "NONE")
call Set256("Typedef", "60", "NONE", "bold")

call SetGui("Underlined", "#F9F9FF", "#192224", "bold,underline", "#192224")
call Set256("Underlined", "189", "235", "bold,underline")

call SetGui("VertSplit", "#192224", "#5E6C70", "bold", "#5E6C70")
call Set256("VertSplit", "235", "66", "bold")

call SetGui("Visual", "#192224", "#F9F9FF", "bold", "#F9F9FF")
call Set256("Visual", "235", "189", "bold")

call SetGui("VisualNOS", "#192224", "#F9F9FF", "bold,underline", "#F9F9FF")
call Set256("VisualNOS", "235", "189", "bold,underline")

call SetGui("WarningMsg", "#A1A6A8", "#912C00", "bold", "#912C00")
call Set256("WarningMsg", "248", "88", "bold")

call SetGui("WildMenu", "NONE", "#A1A6A8", "bold", "#A1A6A8")
call Set256("WildMenu", "NONE", "248", "bold")


" ----
" Language Specific
" ----

" JavaScript
call SetGui("javaScriptBraces", "#ba7e88", "NONE", "bold", "NONE")
call Set256("javaScriptBraces", "169", "NONE", "bold")

call SetGui("javaScriptFunction", "#ca95d3", "NONE", "bold", "NONE")
call Set256("javaScriptFunction", "135", "NONE", "bold")

call SetGui("javaScriptNumber", "#bd7b6f", "NONE", "bold", "NONE")
call Set256("javaScriptNumber", "131", "NONE", "bold")

call SetGui("javaScriptParens", "#ba9f7e", "NONE", "bold", "NONE")
call Set256("javaScriptParens", "137", "NONE", "bold")


" ----
" Plugin related colors
" ----

hi! OverLength guibg=#110f17 gui=bold ctermfg=15 ctermbg=53 cterm=bold
let g:indentLine_color_gui = '#535261'
"let g:indentLine_bgcolor_gui = '#1f1e24'


" ----
" Miscellaneous
" ----

" Fixes the yellow relative number
call SetGui("CursorLineNr", "#171717", "#443E4F", "bold", "#344b59")
call Set256("CursorLineNr", "NONE", "236", "bold")


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
