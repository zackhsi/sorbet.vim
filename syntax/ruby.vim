" Use b:sorbet_syntax instead of b:current_syntax to avoid collisions with
" vim-ruby.
if exists('b:sorbet_syntax')
  finish
endif

syntax region SigBlock matchgroup=SigBlockDelimiter start="{" end="}" contained transparent
syntax region SigBlock matchgroup=SigBlockDelimiter start="\<do\>" end="\<end\>" contained transparent

" Prevent sorbet elements from being contained by vim-ruby elements.
syntax cluster rubyNotTop add=SigBlock

syntax match Sig "\<sig\>" nextgroup=SigBlock skipwhite

hi def link SigBlockDelimiter rubyDefine

let b:sorbet_syntax = 1
