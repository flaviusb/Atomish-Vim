" Vim syntax file
" Language:    Atomish <https://github.com/flaviusb/Atomish>
" Maintainer:  :flaviusb
" Last Change: May 02, 2013
" URL:         http://github.com/flaviusb/Atomish-Vim


" For vim-version 5.x: Clear all syntax items
" For vim-version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Cursorline makes using bg highlights less effective for detecting scope
" problems
setlocal nocursorline

" Change this to something sane at some point
setlocal iskeyword=35,36,37,42,43,45,47,48,49,50,51,52,53,54,55,56,57,58,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,92,94,95,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,126

syn case match 

syn region QQ start="\%('\|''\)" end="\%(\_s\|[+\-*&^%<>\\\/[\])]\)\@=" contains=QuoteString,SquareString
syn cluster ListCluster contains=TOP,ParenError2,CurlyError2,SquareError2,Curly0,Curly1,Curly2,Curly3,Curly4,Curly5,Curly6,Curly7,Curly8,Curly9,Curly0,Curly1,Curly2,Curly3,Curly4,Curly5,Curly6,Curly7,Curly8,Curly9,Square0,Square1,Square2,Square3,Square4,Square5,Square6,Square7,Square8,Square9

syn match CurlyError display "}"
syn match SquareError display "]"
syn match CurlyError2 display "}" contained
syn match SquareError2 display "]" contained
syn region stringSplice matchgroup=StringSpliceRegion start=/#{/ skip="|..\{-}|" end=/}/ contains=@ListCluster,ParenError2,CurlyError2,SquareError2,Paren0,Curly0,Square0 contained

syn match ParenError display ")" 
syn match ParenError2 display ")" contained

syn region Paren0 matchgroup=hlLevel0 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel0 end=")" contains=@ListCluster,Paren1,Curly1,Square1 
syn region Paren1 matchgroup=hlLevel1 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel1 end=")" contains=@ListCluster,Paren2,Curly2,Square2 contained 
syn region Paren2 matchgroup=hlLevel2 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel2 end=")" contains=@ListCluster,Paren3,Curly3,Square3 contained 
syn region Paren3 matchgroup=hlLevel3 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel3 end=")" contains=@ListCluster,Paren4,Curly4,Square4 contained 
syn region Paren4 matchgroup=hlLevel4 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel4 end=")" contains=@ListCluster,Paren5,Curly5,Square5 contained 
syn region Paren5 matchgroup=hlLevel5 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel5 end=")" contains=@ListCluster,Paren6,Curly6,Square6 contained 
syn region Paren6 matchgroup=hlLevel6 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel6 end=")" contains=@ListCluster,Paren7,Curly7,Square7 contained 
syn region Paren7 matchgroup=hlLevel7 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel7 end=")" contains=@ListCluster,Paren8,Curly8,Square8 contained 
syn region Paren8 matchgroup=hlLevel8 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel8 end=")" contains=@ListCluster,Paren9,Curly9,Square9 contained 
syn region Paren9 matchgroup=hlLevel9 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=(" skip="|..\{-}|" matchgroup=hlLevel9 end=")" contains=@ListCluster,Paren0,Curly0,Square0 contained 

syn region Curly0 matchgroup=hlLevel0 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" skip="|..\{-}|" matchgroup=hlLevel0 end="}" contains=@ListCluster,Curly1,Paren1,Square1 
syn region Curly1 matchgroup=hlLevel1 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" skip="|..\{-}|" matchgroup=hlLevel1 end="}" contains=@ListCluster,Curly2,Paren2,Square2 contained 
syn region Curly2 matchgroup=hlLevel2 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" skip="|..\{-}|" matchgroup=hlLevel2 end="}" contains=@ListCluster,Curly3,Paren3,Square3 contained 
syn region Curly3 matchgroup=hlLevel3 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" skip="|..\{-}|" matchgroup=hlLevel3 end="}" contains=@ListCluster,Curly4,Paren4,Square4 contained 
syn region Curly4 matchgroup=hlLevel4 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" skip="|..\{-}|" matchgroup=hlLevel4 end="}" contains=@ListCluster,Curly5,Paren5,Square5 contained 
syn region Curly5 matchgroup=hlLevel5 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" skip="|..\{-}|" matchgroup=hlLevel5 end="}" contains=@ListCluster,Curly6,Paren6,Square6 contained 
syn region Curly6 matchgroup=hlLevel6 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" skip="|..\{-}|" matchgroup=hlLevel6 end="}" contains=@ListCluster,Curly7,Paren7,Square7 contained 
syn region Curly7 matchgroup=hlLevel7 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" skip="|..\{-}|" matchgroup=hlLevel7 end="}" contains=@ListCluster,Curly8,Paren8,Square8 contained 
syn region Curly8 matchgroup=hlLevel8 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" skip="|..\{-}|" matchgroup=hlLevel8 end="}" contains=@ListCluster,Curly9,Paren9,Square9 contained 
syn region Curly9 matchgroup=hlLevel9 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\={" skip="|..\{-}|" matchgroup=hlLevel9 end="}" contains=@ListCluster,Curly0,Paren0,Square0 contained 

syn region Square0 matchgroup=hlLevel0 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" skip="|..\{-}|" matchgroup=hlLevel0 end="]" contains=@ListCluster,Square1,Paren1,Curly1 
syn region Square1 matchgroup=hlLevel1 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" skip="|..\{-}|" matchgroup=hlLevel1 end="]" contains=@ListCluster,Square2,Paren2,Curly2 contained 
syn region Square2 matchgroup=hlLevel2 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" skip="|..\{-}|" matchgroup=hlLevel2 end="]" contains=@ListCluster,Square3,Paren3,Curly3 contained 
syn region Square3 matchgroup=hlLevel3 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" skip="|..\{-}|" matchgroup=hlLevel3 end="]" contains=@ListCluster,Square4,Paren4,Curly4 contained 
syn region Square4 matchgroup=hlLevel4 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" skip="|..\{-}|" matchgroup=hlLevel4 end="]" contains=@ListCluster,Square5,Paren5,Curly5 contained 
syn region Square5 matchgroup=hlLevel5 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" skip="|..\{-}|" matchgroup=hlLevel5 end="]" contains=@ListCluster,Square6,Paren6,Curly6 contained 
syn region Square6 matchgroup=hlLevel6 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" skip="|..\{-}|" matchgroup=hlLevel6 end="]" contains=@ListCluster,Square7,Paren7,Curly7 contained 
syn region Square7 matchgroup=hlLevel7 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" skip="|..\{-}|" matchgroup=hlLevel7 end="]" contains=@ListCluster,Square8,Paren8,Curly8 contained 
syn region Square8 matchgroup=hlLevel8 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" skip="|..\{-}|" matchgroup=hlLevel8 end="]" contains=@ListCluster,Square9,Paren9,Curly9 contained 
syn region Square9 matchgroup=hlLevel9 start="\%(\%(`\|'\|''\)\%([a-zA-Z0-9_:]*\)\)\=\[" skip="|..\{-}|" matchgroup=hlLevel9 end="]" contains=@ListCluster,Square0,Paren0,Curly0 contained 


syn region hashBang start=/^#!\// end=/$/
syn region QuoteString matchgroup=StringDelimeter start=/"/ skip=/\\"/ matchgroup=StringDelimeter end=/"/ contains=@Spell,stringSplice,qStringEscape
syn region SquareString matchgroup=StringDelimeter start=/#\[/ skip=/\\]/ matchgroup=StringDelimeter end=/]/ contains=@Spell,stringSplice,sStringEscape

syn match qStringEscape display "\(\\b\|\\e\|\\t\|\\n\|\\f\|\\r\|\\\"\|\\\\\|\\#\|\\\Z\|\\u[0-9a-fA-F]{1,4}\|\\[0-3]?[0-7]?[0-7]\)" contained
syn match sStringEscape display "\(\\b\|\\e\|\\t\|\\n\|\\f\|\\r\|\\]\|\\\\\|\\#\|\\\Z\|\\u[0-9a-fA-F]{1,4}\|\\[0-3]?[0-7]?[0-7]\)" contained

syn region pct_w matchgroup=StringDelimeter start=/%w{/ skip=/ / matchgroup=StringDelimeter end=/}/ contains=@Spell,contiguousword

syn match contiguousword display /[^ \n\r\t}]\+/ contained

"syn region LiteralStringRegexSlash start=/#\// skip=/\\\// end=/\// contains=LiteralStringRegexEscapeSlash
"syn match LiteralStringRegexEscapeSlash display "\(\\\\\|\\\/\)" contained
"syn region LiteralStringRegexSquare start=/#r\[/ skip=/\\\]/ end=/]/ contains=LiteralStringRegexEscapeSquare
"syn match LiteralStringRegexEscapeSquare display "\(\\\\\|\\]\)" contained

syn match AtomishNumber display "\(\<0x[0-9a-fA-F]\+\|\<[-+]\=\d\+\.\d*\|\<\d\+\.\d*\|\<\d\+\|\<[-+]\d\+\)"

syn match LiteralStringSymbol display "\([a-zA-Z0-9_!?]\)\@<!:\(\([_+]\+[_+:]*\)\?[a-zA-Z][a-zA-Z0-9_:$!?%=<>-]*\|[~!@$%^&*_=\'`/?×÷≠→←⇒⇐⧺⧻§∘≢∨∪∩□∀⊃∈+<>-]\+\|\[\]\|{}\|…\)"

" ((([_+]\+[_+:]*)\?[a-zA-Z][a-zA-Z0-9_:$!?%=<>-]*)\|([~!@$%^&*_=\'`/?×÷≠→←⇒⇐⧺⧻§∘≢∨∪∩□∀⊃∈+<>-]\+[:~!@$%^&*_=\'`/?×÷≠→←⇒⇐⧺⧻§∘≢∨∪∩□∀⊃∈+<>-]*)):
" \(\(\([_+]\+[_+:]*\)\?[a-zA-Z][a-zA-Z0-9_:$!?%=<>-]*\)\|\([~!@$%^&*_=\'`/?×÷≠→←⇒⇐⧺⧻§∘≢∨∪∩□∀⊃∈+<>-]\+[:~!@$%^&*_=\'`/?×÷≠→←⇒⇐⧺⧻§∘≢∨∪∩□∀⊃∈+<>-]*\)\):
" \(\(\([_+]\+[_+:]*\)\?[a-zA-Z][a-zA-Z0-9_:$!?%=<>-]*\)\|\([~!@$%^&*_=\'`/?×÷≠→←⇒⇐⧺⧻§∘≢∨∪∩□∀⊃∈+<>-]\+[:~!@$%^&*_=\'`/?×÷≠→←⇒⇐⧺⧻§∘≢∨∪∩□∀⊃∈+<>-]*\)\):\([a-zA-Z0-9_!?]\)\@!

"syn match LiteralStringKeyword display "[a-zA-Z0-9_!:?]\+:\([a-zA-Z0-9_!?]\)\@!"
syn match LiteralStringKeyword display "\(\(\([_+]\+[_+:]*\)\?[a-zA-Z][a-zA-Z0-9_:$!?%=<>-]*\)\|\([~!@$%^&*_=\'`/?×÷≠→←⇒⇐⧺⧻§∘≢∨∪∩□∀⊃∈+<>-]\+[:~!@$%^&*_=\'`/?×÷≠→←⇒⇐⧺⧻§∘≢∨∪∩□∀⊃∈+<>-]*\)\):\([a-zA-Z0-9_!?]\)\@!"
syn match FlagSelector display "#[a-zA-Z][a-zA-Z0-9_!:?]*\([a-zA-Z0-9_!?]\)\@!"

syn region Comment start=/#;/ start=/؟/ end=/$/ contains=@Spell
syn region Comment start=/#\./ end=/\./ contains=@Spell

syn match RegexEscape display "\(\\n|\\r|\\/|\\\\\)" contained
syn match RegexFlags display "[a-zA-Z]*" contained
syn region Regex matchgroup=RegexDelimeter start="/" skip="\\/" matchgroup=RegexDelimeter end="/" contains=RegexEscape nextgroup=RegexFlags

" Keywords

syn keyword AtomishCommonMessage  asText
syn keyword AtomishCommonMessage  asBool
syn keyword AtomishCommonMessage  asArray
syn keyword AtomishCommonMessage  +
syn keyword AtomishCommonMessage  -
syn keyword AtomishCommonMessage  ×
syn keyword AtomishCommonMessage  ÷
syn keyword AtomishCommonMessage  >=
syn keyword AtomishCommonMessage  <=>
syn keyword AtomishCommonMessage  <=
syn keyword AtomishCommonMessage  ==
syn keyword AtomishCommonMessage  ~=
syn keyword AtomishCommonMessage  =
syn keyword AtomishCommonMessage  !=
syn keyword AtomishCommonMessage  <
syn keyword AtomishCommonMessage  >
syn keyword AtomishCommonMessage  cell
syn keyword AtomishCommonMessage  hasCell
syn keyword AtomishCommonMessage  setCell
syn keyword AtomishCommonMessage  at
syn keyword AtomishCommonMessage  at=
syn keyword AtomishCommonMessage  length
syn keyword AtomishCommonMessage  keys
syn keyword AtomishCommonMessage  values
syn keyword AtomishCommonMessage  map
syn keyword AtomishCommonMessage  flatMap
syn keyword AtomishCommonMessage  activatable
syn keyword AtomishCommonMessage  documentation
syn keyword AtomishCommonMessage  code
syn keyword AtomishCommonMessage  mimic
syn keyword AtomishCommonMessage  with
syn keyword AtomishCommonToplevel say
syn keyword AtomishCommonToplevel if
syn keyword AtomishCommonToplevel let
syn keyword AtomishCommonToplevel case
syn keyword AtomishCommonToplevel cond
syn keyword AtomishCommonToplevel fn
syn keyword AtomishCommonToplevel fnx
syn keyword AtomishCommonToplevel macro
syn keyword AtomishCommonToplevel print
syn keyword AtomishCommonToplevel read
syn keyword AtomishCommonToplevel eval
syn keyword AtomishCommonToplevel System
syn keyword AtomishCommonToplevel FileSystem
syn keyword AtomishCommonToplevel Origin
syn keyword AtomishCommonToplevel Array
syn keyword AtomishCommonToplevel Map
syn keyword AtomishCommonObject   true
syn keyword AtomishCommonObject   false
syn keyword AtomishCommonObject   nil

syn match Operator display "[~!@$%^&*_=\'`/?×÷+-]+"

hi def link LiteralStringRegexSlash LiteralStringRegex
hi def link LiteralStringRegexSquare LiteralStringRegex
hi def link LiteralStringRegexEscapeSlash LiteralStringRegexEscape
hi def link LiteralStringRegexEscapeSquare LiteralStringRegexEscape

hi def link LiteralStringKeyword LiteralStringOther

hi def link qStringEscape LiteralStringEscape
hi def link sStringEscape LiteralStringEscape
hi def link RegexEscape LiteralStringEscape

hi def link AtomishNumber Number

hi def link ParenError Error
hi def link ParenError2 Error
hi def link CurlyError Error
hi def link SquareError Error
hi def link CurlyError2 Error
hi def link SquareError2 Error
hi def link QuoteString String
hi def link SquareString String
hi def link contiguousword String
hi def link hashBang Comment
hi def link Comment SemicolonComment
hi def link QQ PreProc

hi def link LiteralStringEscape SpecialChar
hi def link AtomishCommonMessage Statement
hi def link AtomishCommonToplevel Identifier
hi def link AtomishCommonObject Identifier

syn sync lines=300

let b:current_syntax="atomish"
