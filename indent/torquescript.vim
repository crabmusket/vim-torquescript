" Vim indent file
" Language:	TorqueScript
" Maintainer: Daniel Buckmaster <dan.buckmaster@gmail.com>

" Only load this indent file when no other was loaded.
if exists("b:did_indent")
   finish
endif
let b:did_indent = 1

" TorqueScript is like indenting C
setlocal cindent
