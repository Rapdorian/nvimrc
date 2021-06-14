syn match wgslNumber "\v<[0-9]*>"
syn match wgslNumber "\v<[0-9]\+.[0-9]*>"
syn match wgslNumber "\v<[0-9]*.[0-9]+>"

syn keyword wgslBool true false

syn match wgslType "\v<vec[234]>"
syn match wgslType "\v<mat[234]x[234]>"

syn keyword wgslDef fn struct var let nextgroup=wgslIdent skipwhite

syn keyword wgslControl if switch loop for break continue return discard 

syn keyword wgslAttribute align binding block builtin group interpolate invariant location
syn keyword wgslAttribute override size stage stride workgroup_size

syn region wgslAttributeGroup start="\[\[" end="\]\]" contains=wgslAttribute,wgslNumber

syn match wgslIdent "[A-z][A-z0-9]*" contained

syn match wgslComment "//.*"

hi! link wgslNumber Constant
hi! link wgslBool Constant
hi! link wgslType Type
hi! link wgslDef Keyword
hi! link wgslControl special
hi! link wgslAttributeGroup PreProc
hi! link wgslAttribute Statement
hi! link wgslIdent Identifier
hi! link wgslComment Comment
