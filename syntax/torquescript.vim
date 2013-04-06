" Vim syntax file
" Language:	TorqueScript
" Maintainer: Daniel Buckmaster <dan.buckmaster@gmail.com>
" Version: 0.1 (6 April 2013)

if exists("b:current_syntax")
	finish
endif

" Keywords
syn keyword tsKeyword break continue return
syn keyword tsCreationKeyword new datablock package nextgroup=tsClassName skipwhite
syn keyword tsFunctionDef function
syn keyword tsConditional if else switch switch$
syn keyword tsLabel case default
syn keyword tsRepeat for while do
syn keyword tsConstant true false
syn keyword tsOperator + - / * @ SPC TAB NL = == > < >= <=

" Comments
syn match tsComment '//.*$' contains=tsTodo
syn region tsBlockComment start="/\*" end="\*/" fold contains=tsTodo

" Strings
syn region tsString start='"' end='"'
syn region tsTaggedString start="'" end="'"

syn match tsClassName '[a-zA-Z]\+' contained

" Variables
syn match tsLocalVariable '%[a-zA-Z]\+'
syn match tsGlobalVariable '\$[a-zA-Z:]\+'

" Blocks
syn region tsBlock start="{" end="}" fold transparent

" Niceness
syn keyword tsTodo TODO FIXME XXX contained

" Highlighting
let b:current_syntax = "torquescript"

hi def link tsComment Comment
hi def link tsConstant Constant
hi def link tsConditional Conditional
hi def link tsLabel Label
hi def link tsKeyword Keyword
hi def link tsCreationKeyword Keyword
hi def link tsFunctionDef Keyword
hi def link tsRepeat Repeat
hi def link tsConstant Constant
hi def link tsFunctionName Function
hi def link tsString String
hi def link tsTaggedString Character
hi def link tsOperator Operator
hi def link tsLocalVariable Identifier
hi def link tsGlobalVariable Special
hi def link tsClassName Type
