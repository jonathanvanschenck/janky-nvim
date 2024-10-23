" Language:	Kanata
" Installed As:	vim/syntax/kanata.vim
"
" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if !exists("main_syntax")
	if version < 600
		syntax clear
	elseif exists("b:current_syntax")
		finish
	endif
	let main_syntax = 'kanata'
endif


" Case matters
syn case match

syn keyword kanataTODO TODO FIXME XXX
syn match kanataReserved "\<\(def\(src\|layer\|layermap\|alias\|cfg\|overrides\)\|include\|platform\|environment\)\>"

syn match kanataKey "\((\|\s\|^\)\@1<=\([a-z0-9~!@#\$%\^&*()-_=+{}\\|;:'",<.>\/?]\)\@>\()\|$\|\s\)"
syn match kanataKey "\((\|\s\|^\)\@1<=\(grv\|tab\|caps\|[lr]\(sft\|ctl\|met\|alt\)\|spc\|ret\|del\|ins\|bspc\|esc\|left\|up\|down\|right\|pgdn\|pgup\|home\|end\|f10\|f[1-9]\)\@>\()\|$\|\s\)"


syn match kanataNumber	"\<[-^]\?\d\{2,\}"
syn match kanataNumber	"\.\d\+"

syn match kanataVariable	"$[a-zA-Z0-9]\+"
syn match kanataAlias	"@[a-zA-Z0-9]\+"

syn region kanataComment	start="#|" end="|#" contains=kanataTODO
syn region kanataComment	start=";;" end="$" contains=kanataTODO

" syn match kanataAction "\((\|\s\|^\)\@1<=\(     \)\@>\()\|$\|\s\)"
syn match kanataAction "\((\|\s\|^\)\@1<=\(lrld\(-num\|-prev\|-next\)\?\|lrpv\|lrnx\)\@>\()\|$\|\s\)"
syn match kanataAction "\((\|\s\|^\)\@1<=\(layer-switch\|layer-while-held\)\@>\()\|$\|\s\)"
syn match kanataAction "\((\|\s\|^\)\@1<=\(XX\|unicode\|rpt\)\@>\()\|$\|\s\)"
syn match kanataAction "\((\|\s\|^\)\@1<=\(\(R\?[CASM]-\)\+[a-z0-9]\)\@>\()\|$\|\s\)"
syn match kanataAction "\((\|\s\|^\)\@1<=\(release\(-key\|-layer\)\)\@>\()\|$\|\s\)"
syn match kanataAction "\((\|\s\|^\)\@1<=\(multi\|fork\|cmd\(-log\|-output-keys\)\?\|caps-word\(-custom\|-toggle\)\?\|unmod\|arbitrary-code\)\@>\()\|$\|\s\)"
syn match kanataAction "\((\|\s\|^\)\@1<=\(mlft\|mrgt\|mmid\|mfwd\|mbck\|m[lmrfb]tp\|mwheel-\(up\|down\|left\|right\)\|movemouse\(-accel\)\?-\(up\|down\|left\|right\)\|setmouse\|movemouse-speed\)\@>\()\|$\|\s\)"
syn match kanataAction "\((\|\s\|^\)\@1<=\(tap-dance\(-eager\)\?\)\@>\()\|$\|\s\)"
syn match kanataAction "\((\|\s\|^\)\@1<=\(one-shot\(\(-press\|-release\)\(-pcancel\)\?\)\?\|one-shot-press\)\@>\()\|$\|\s\)"
syn match kanataAction "\((\|\s\|^\)\@1<=\(tap-hold\(\(-press\|-release\)\(-timeout\)/?\)\?\|tap-hold-release-keys\|tap-hold-except-keys\)\@>\()\|$\|\s\)"
syn match kanataAction "\((\|\s\|^\)\@1<=\(macro\(-repeat\)\?\(-release-cancel\)\?\|dynamic-macro-\(record\|play\)\)\@>\()\|$\|\s\)"
syn match kanataAction "\((\|\s\|^\)\@1<=\(dynamic-macro-record-stop\(-truncate\)\?\)\@>\()\|$\|\s\)"

syn cluster kanataMatchGroup contains=kanatareserved,kanataKey,kanataNumber,kanataVariable,kanataAlias,kanataComment,kanataAction
syn region kanataDefStatement matchgroup=Special start="(" end=")" contains=@kanataMatchGroup,kanataStatement fold
syn region kanataStatement matchgroup=Special start="(" end=")" contains=@kanataMatchGroup fold contained



" Rest of syntax highlighting rules start here
"
" " Define the default highlighting.
" " For version 5.7 and earlier: only when not done already
" " For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_kanata_syn_inits")
  if version < 508
    let did_kanata_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  
  HiLink kanataTODO	TODO
  HiLink kanataVariable	String
  HiLink kanataAlias	String
  HiLink kanataComment	Comment
 
  HiLink kanataKey	Identifier

  HiLink kanataAction	Type

  HiLink kanataReserved	Statement

  HiLink kanataNumber	Number

  HiLink kanataStatment Special
  HiLink kanataDefStatment Special

  " HiLink kanataSpecial	Special

  delcommand HiLink
endif
