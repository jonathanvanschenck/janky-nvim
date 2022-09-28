" Edited: Jonathan Van Schenck
" Maintainer: Alexander Imenes <alexander.imenes@gmail.com>
" Repository: http://github.com/reewr
" Copied: monokai-phoenix
"
set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name="mp-hack"

" Below are the colours used for this colourscheme with their fullname
"
" Air Force Blue   Term:  67
" Bakers Chocolate Term:  52
" Biscay           Term:  59
" Black            Term: 233
" Black0           Term:  00
" Bokara Grey      Term:  00
" Carmine          Term:  88
" Dark Tangerine   Term: 208
" DEBUG            Term:  13
" DEBUG2           Term:  09
" Deep Pink        Term: 197
" Eternity         Term:  22
" Flint            Term:  95
" Heavy Metal      Term:  59
" Jumbo            Term: 102
" Las Palmas       Term: 112
" Purplish Grey Term: 141
" Light Slate Grey Term: 103
" Maire            Term:  00
" Midnight         Term:  23
" Palm Leaf        Term:  22
" Peach Orange     Term: 130
" Radical Red      Term: 197
" Seal Brown       Term:  52
" Spellbad         Term:  15
" Spelllocal       Term:  81
" Turquoise Blue   Term:  81
" Vulcan           Term: 236
" White            Term:  15
" White Smoke      Term:  15
" Wild Rice        Term: 185
" Witch Haze       Term: 221

" Popup Menu
" --------------------------
hi Pmenu        ctermfg=15    ctermbg=23    cterm=NONE
hi PmenuSet     ctermfg=81    ctermbg=233   cterm=NONE
hi PmenuSBar    ctermfg=81    ctermbg=59    cterm=NONE
hi PmenuSel     ctermfg=81    ctermbg=59    cterm=NONE
hi PmenuThumb   ctermfg=103   ctermbg=103   cterm=NONE

" Editor
" --------------------------
hi Normal       ctermfg=15    ctermbg=233   cterm=NONE
hi Conceal      ctermfg=81    ctermbg=233   cterm=NONE
hi NonText      ctermfg=59    ctermbg=NONE  cterm=NONE
hi StatusLine   ctermfg=81    ctermbg=239   cterm=NONE
hi StatusLineNC ctermfg=81    ctermbg=239   cterm=NONE
hi Search       ctermfg=00    ctermbg=221   cterm=NONE
hi VertSplit    ctermfg=81    ctermbg=239   cterm=NONE
hi LineNr       ctermfg=102   ctermbg=NONE  cterm=NONE
hi SignColumn   ctermfg=NONE  ctermbg=00    cterm=NONE

" Messages
" --------------------------
hi Question     ctermfg=185   ctermbg=NONE  cterm=NONE
hi ModeMsg      ctermfg=185   ctermbg=NONE  cterm=NONE
hi MoreMsg      ctermfg=185   ctermbg=NONE  cterm=NONE
hi ErrorMsg     ctermfg=233   ctermbg=197   cterm=NONE
hi WarningMsg   ctermfg=197   ctermbg=NONE  cterm=NONE

" Spelling
" --------------------------
hi SpellBad     ctermfg=15    ctermbg=NONE  cterm=undercurl
hi SpellLocal   ctermfg=81    ctermbg=NONE  cterm=undercurl

" Tabline
" --------------------------
hi TabLine      ctermfg=102   ctermbg=233   cterm=NONE
hi TabLineSel   ctermfg=15    ctermbg=59    cterm=NONE
hi TabLineFill  ctermfg=233   ctermbg=233   cterm=NONE

" Misc
" --------------------------
hi SpecialKey   ctermfg=59    ctermbg=NONE  cterm=NONE
hi Title        ctermfg=185   ctermbg=NONE  cterm=NONE
hi Directory    ctermfg=81    ctermbg=NONE  cterm=NONE

" Diff
" --------------------------
hi DiffAdd      ctermfg=15    ctermbg=22    cterm=NONE
hi DiffDelete   ctermfg=197   ctermbg=52    cterm=NONE
hi DiffChange   ctermfg=185   ctermbg=52    cterm=NONE
hi DiffText     ctermfg=95    ctermbg=NONE  cterm=NONE

" Folding
" --------------------------
hi Folded       ctermfg=103   ctermbg=00    cterm=NONE
hi FoldColumn   ctermfg=NONE  ctermbg=00    cterm=NONE

" Cursor colours
" --------------------------
hi ColorColumn  ctermfg=NONE  ctermbg=236   cterm=NONE
hi CursorColumn ctermfg=NONE  ctermbg=236   cterm=NONE
hi CursorLine   ctermfg=NONE  ctermbg=236   cterm=NONE
hi Cursor       ctermfg=233   ctermbg=15    cterm=NONE
hi Visual       ctermfg=NONE  ctermbg=59    cterm=NONE
hi MatchParen   ctermfg=233   ctermbg=185   cterm=NONE

" General Highlighting
" --------------------------
hi Constant        ctermfg=141   ctermbg=NONE  cterm=NONE  " Purplish Grey
hi Number          ctermfg=141   ctermbg=NONE  cterm=NONE  " Purplish Grey
hi Float           ctermfg=141   ctermbg=NONE  cterm=NONE  " Purplish Grey
hi Boolean         ctermfg=141   ctermbg=NONE  cterm=NONE  " Purplish Grey
hi Character       ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
hi String          ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
hi Type            ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
hi Structure       ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
hi StorageClass    ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
hi TypeDef         ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
hi Identifier      ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
hi Function        ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
hi Statement       ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
hi Operator        ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
hi Label           ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
hi Keyword         ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
hi Preproc         ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
hi Include         ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
hi Define          ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
hi Macro           ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
hi PreCondit       ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
hi Special         ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
hi SpecialChar     ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
hi Delimiter       ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
hi Comment         ctermfg=67    ctermbg=NONE  cterm=italic" Air Force Blue
hi SpecialComment  ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
hi Tag             ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
hi Underlined      ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
hi Ignore          ctermfg=NONE  ctermbg=NONE  cterm=NONE
hi Todo            ctermfg=15    ctermbg=233   cterm=bold  " White on Black
hi Error           ctermfg=15    ctermbg=88    cterm=NONE  " White on Carmine
hi ExtraWhitespace ctermfg=NONE  ctermbg=81    cterm=NONE  " Deep Pink


function! s:javascriptMonokaiPhoenixFiletype()
  " vim-javascript syntax
  " --------------------------
  hi jsStorageClass        ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
  hi jsOperator            ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi jsBooleanTrue         ctermfg=141   ctermbg=NONE  cterm=NONE  " Purplish Grey
  hi jsBooleanFalse        ctermfg=141   ctermbg=NONE  cterm=NONE  " Purplish Grey
  hi jsModules             ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi jsModuleWords         ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi jsOf                  ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi jsArgsObj             ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
  hi jsImportContainer     ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi jsExportContainer     ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  " hi jsCommentTodo         ctermfg=103   ctermbg=NONE  cterm=NONE  " ???
  hi jsLineComment         ctermfg=67    ctermbg=NONE  cterm=italic" Air Force Blue
  hi jsEnvComment          ctermfg=67    ctermbg=NONE  cterm=italic" Air Force Blue
  hi jsCvsTag              ctermfg=67    ctermbg=NONE  cterm=italic" Air Force Blue
  hi jsComment             ctermfg=67    ctermbg=NONE  cterm=italic" Air Force Blue
  hi jsBlockComment        ctermfg=67    ctermbg=NONE  cterm=italic" Air Force Blue
  hi jsDocTags             ctermfg=103   ctermbg=NONE  cterm=NONE  " ???
  hi jsDocType             ctermfg=103   ctermbg=NONE  cterm=NONE  " ???
  hi jsDocTypeNoParam      ctermfg=103   ctermbg=NONE  cterm=NONE  " ???
  hi jsDocParam            ctermfg=103   ctermbg=NONE  cterm=NONE  " ???
  hi jsDocSeeTag           ctermfg=103   ctermbg=NONE  cterm=NONE  " ???
  hi jsTemplateVar         ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi jsStringD             ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi jsStringS             ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi jsTemplateString      ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi jsTemplateBraces      ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
  hi jsTaggedTemplate      ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi jsRegexpCharClass     ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi jsRegexpBoundary      ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi jsRegexpBackRef       ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi jsRegexpQuantifier    ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi jsRegexpOr            ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi jsRegexpMod           ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi jsRegexpSpecial       ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi jsRegexpGroup         ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi jsRegexpString        ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi jsNumber              ctermfg=141   ctermbg=NONE  cterm=NONE  " Purplish Grey
  hi jsFloat               ctermfg=141   ctermbg=NONE  cterm=NONE  " Purplish Grey
  hi jsObjectKey           ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi jsFunctionKey         ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
  hi jsDecorator           ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
  hi jsDecoratorFunction   ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
  hi jsStatement           ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi jsConditional         ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi jsRepeat              ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi jsLabel               ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi jsKeyword             ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi jsClass               ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
  hi jsAsyncKeyword        ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
  hi jsGlobalObjects       ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
  hi jsGlobalNodeObjects   ctermfg=81    ctermbg=NONE  cterm=italic" Turquoise Blue
  hi jsThis                ctermfg=81    ctermbg=NONE  cterm=italic" Turquoise Blue
  hi jsExceptions          ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi jsBuiltins            ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
  hi jsFutureKeys          ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
  hi jsHtmlEvents          ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
  hi jsTernaryIfOperator   ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi jsGenerator           ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi jsFuncName            ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
  hi jsFuncArgs            ctermfg=208   ctermbg=NONE  cterm=NONE  " Dark Tangerine
  hi jsFuncArgRest         ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi jsArrowFunction       ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
  hi jsFuncCall            ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas

  " Custom syntax
  " --------------------------
  hi javaScriptMethodCallWithoutArgs      ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
  hi javaScriptMethodCallWithArgs         ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
  hi javaScriptStaticFunctionWithArgs     ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
  hi javaScriptStaticFunctionWithoutArgs  ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
  hi javaScriptFunctionCallWithArgs       ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
  hi javaScriptFunctionCallWithoutArgs    ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
  hi javaScriptArrowFunction              ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue

endfunction

function! s:pythonMonokaiPhoenixFiletype()
  " python-syntax syntax
  " --------------------------
  hi pythonStatement       ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi pythonRepeat          ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi pythonConditional     ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi pythonException       ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi pythonRaiseFromStatement ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink 
  hi pythonClassVar        ctermfg=81    ctermbg=NONE  cterm=italic" Turquoise Blue
  hi pythonInclude         ctermfg=81    ctermbg=NONE  cterm=italic" Turquoise Blue
  hi pythonImport          ctermfg=81    ctermbg=NONE  cterm=italic" Turquoise Blue
  hi pythonOperator        ctermfg=197   ctermbg=NONE  cterm=NONE  " Deep Pink
  hi pythonError           ctermfg=15    ctermbg=88    cterm=NONE  " White on Carmine
  hi pythonDecorator       ctermfg=112   ctermbg=NONE  cterm=italic" Las Palmas
  hi pythonDottedName      ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
  " hi pythonDot             ctermfg=112   ctermbg=NONE  cterm=NONE  " Las Palmas
  hi pythonRun             ctermfg=81    ctermbg=NONE  cterm=italic" Turquoise Blue
  hi pythonCoding          ctermfg=81    ctermbg=NONE  cterm=italic" Turquoise Blue
  hi pythonBytesEscape     ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue    
  hi pythonUniEscape       ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
  hi pythonRawEscape       ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue
  hi pythonString          ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi pythonFString         ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi pythonRawString       ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi pythonRawFString      ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi pythonRawBytes        ctermfg=185   ctermbg=NONE  cterm=NONE  " Wild Rice
  hi pythonStrFormatting   ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue (% formattting)
  hi pythonStrFormat       ctermfg=81    ctermbg=NONE  cterm=NONE  " Turquoise Blue (.format)
  " hi pythonStrInterpRegion
  " hi pythonStrTemplate
  " hi pythonDocTest
  " hi pythonDocTest2
  hi pythonOctError       ctermfg=15    ctermbg=88    cterm=NONE  " White on Carmine
  hi pythonHexError       ctermfg=15    ctermbg=88    cterm=NONE  " White on Carmine
  hi pythonBinError       ctermfg=15    ctermbg=88    cterm=NONE  " White on Carmine
  hi pythonNumberError    ctermfg=15    ctermbg=88    cterm=NONE  " White on Carmine
  hi pythonOctError       ctermfg=15    ctermbg=88    cterm=NONE  " White on Carmine
  hi pythonBinError       ctermfg=15    ctermbg=88    cterm=NONE  " White on Carmine
  hi pythonNumber         ctermfg=141   ctermbg=NONE  cterm=NONE  " Purplish Grey
  hi pythonFloat          ctermfg=141   ctermbg=NONE  cterm=NONE  " Purplish Grey
  hi pythonHexNumber      ctermfg=141   ctermbg=NONE  cterm=NONE  " Purplish Grey
  hi pythonOctNumber      ctermfg=141   ctermbg=NONE  cterm=NONE  " Purplish Grey
  hi pythonBinNumber      ctermfg=141   ctermbg=NONE  cterm=NONE  " Purplish Grey
  " hi pythonNone      
  " hi pythonBoolean   
  " hi pythonSingleton 
  " hi pythonBuiltinObj
  " hi pythonBuiltinObj
  " hi pythonBuiltinFunc
  " hi pythonBuiltinType
  " hi pythonExClass

endfunction

function! s:jsonMonokaiPhoenixFiletype()
  " JSON Syntax
  " --------------------------
  hi jsonNull      ctermfg=141   ctermbg=NONE  cterm=NONE  " Purplish Grey
  hi jsonKeyword   ctermfg=15    ctermbg=NONE  cterm=NONE  " White
  hi jsonPadding   ctermfg=15    ctermbg=NONE  cterm=NONE  " White
  hi jsonBraces    ctermfg=15    ctermbg=NONE  cterm=NONE  " White

endfunction


augroup MONOKAI_PHOENIX_FILETYPE_LOADER
  au!
  au Filetype json call <SID>jsonMonokaiPhoenixFiletype()
  au Filetype javascript call <SID>javascriptMonokaiPhoenixFiletype()
  au Filetype python call <SID>pythonMonokaiPhoenixFiletype()
augroup END

