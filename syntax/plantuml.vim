" Vim syntax file
" Language: PlantUML

if exists("b:current_syntax")
    finish
endif

" Keywords
syn keyword syntaxKeywords activate deactivate participant actor title
syn keyword syntaxKeywords class nextGroup=classNames
syn match   syntaxKeywords 'note \(right\|left\|over\)'
syn match   syntaxKeywords 'end note'
syn match   quotedStrings  '".\+"'
syn keyword conjunctions   as
syn match   conjunctions   ':'
syn match   syntaxKeywords '^@.\+uml$'
syn match   operators      '-\?->>\?'
syn match   operators      '<\?<--\?'
syn match   operators      '-\(up\|down\|left\|right\)->'
syn match   specialChars   '\\.'
syn match   comments       "^'.\+"
syn keyword conditionals   if then else endif
syn match   classFields    "\(+\|-\|#\|\~\) .\+" contained
syn match   classMethods   "^\(-\|+\|#\|\~\) .\+()$" contained
" syn match   classNames     ".\+" contained nextGroup=classBlock

" Constants 

" Regions
syn region activationBlock start="activate" end="deactivate" fold transparent contains=syntaxKeywords
syn region headerLine start="==" end="=="
syn region classBlock start="{" end="}" fold transparent contains=classFields,classMethods

let b:current_syntax = 'plantuml'

" Highlighting
hi def link syntaxKeywords   Statement
hi def link operators        Operator
hi def link headerLine       Title
hi def link conjunctions     Ignore
hi def link specialChars     SpecialChar
hi def link quotedStrings    String
hi def link unquotedStrings  String
hi def link comments         Comment
hi def link conditionals     Conditional
hi def link classFields      Identifier
hi def link classMethods     Function
hi def link classNames       Identifier
