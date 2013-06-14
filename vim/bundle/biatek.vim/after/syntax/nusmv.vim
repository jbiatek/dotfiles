syn region nusmvBlockComment		start="/\*" end="\*/" contains=nusmvTodo
syn region nusmvPreProc 		start="#" end="$"

syn keyword nusmvSectionKeyword FROZENVAR

hi link nusmvBlockComment Comment
hi link nusmvPreProc PreProc
hi link nusmvVariable NONE
