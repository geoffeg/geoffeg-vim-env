" AutoAlign: ftplugin support for HTML
" Author:    Charles E. Campbell, Jr.
" Date:      Aug 16, 2007
" Version:   13
" ---------------------------------------------------------------------
let b:loaded_autoalign_html= "v13"
let b:undo_ftplugin= "v13"

"  overloading '>' to keep things lined up {{{1
ino <silent> > ><c-r>=AutoAlign(-1)<cr>
let b:autoalign_reqdpat1 = '</[tT][rR]>$'
let b:autoalign_notpat1  = '\%(</[tT][rR]>\)\@!.\{5}$'
let b:autoalign_suspend1 = '\c</\=table>'
let b:autoalign_trigger1 = '>'
if !exists("g:mapleader")
 let b:autoalign_cmd1     = 'norm \Htd$'
else
 let b:autoalign_cmd1     = "norm ".g:mapleader."\Htd$"
endif
