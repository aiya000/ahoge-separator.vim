scriptencoding utf-8

if exists('g:loaded_ahoge_separator')
  finish
endif
let g:loaded_ahoge_separator = 1

let s:save_cpo = &cpo
set cpo&vim
"#-=- -=- -=- -=- -=- -=- -=- -=- -=-#"


" Default short separator
let g:ahoge_short_separator_of = {
\	'_'        : '- - - - - - - - - -',
\	'vim'      : '"#--- --- ---#"',
\	'vimspec'  : '"#--- --- ---#"',
\	'java'     : '/* -=-=-=-=-=-=-=-=- */',
\	'cs'       : '/* -=-=-=-=-=-=-=-=- */',
\	'cpp'      : '/* -=-=-=-=-=-=-=-=- */',
\	'c'        : '/* -=-=-=-=-=-=-=-=- */',
\	'haskell'  : '-- - - - - - --',
\	'mysql'    : '-- - - - - - --',
\	'coq'      : '(* - - - - - *)',
\	'markdown' : '<!-- - - - - - -->',
\	'eruby'    : '<!-- - - - - - -->',
\	'ruby'     : '#- - - - - - -#',
\	'sh'       : '#- - - - - - -#',
\	'help'     : '============================================='
\}


" Default long separator
let g:ahoge_long_separator_of = {
\	'_'        : '- - - - - - - - - - - - - - - - - - - -',
\	'vim'      : '"#-=- -=- -=- -=- -=- -=- -=- -=- -=-#"',
\	'vimspec'  : '"#-=- -=- -=- -=- -=- -=- -=- -=- -=-#"',
\	'java'     : '/* ---===---===---===---===---===---===--- */',
\	'cs'       : '/* ---===---===---===---===---===---===--- */',
\	'cpp'      : '/* ---===---===---===---===---===---===--- */',
\	'c'        : '/* ---===---===---===---===---===---===--- */',
\	'haskell'  : '-- - - - - - - - - - - - - - - - --',
\	'mysql'    : '-- - - - - - - - - - - - - - - - --',
\	'coq'      : '(* - - - - - - - - - - - - - - - *)',
\	'markdown' : '<!-- - - - - - - - - - - - - - - - -->',
\	'eruby'    : '<!-- - - - - - - - - - - - - - - - -->',
\	'ruby'     : '#- - - - - - - - - - - - - - - - -#',
\	'sh'       : '#- - - - - - - - - - - - - - - - -#',
\	'help'     : '================================================================================'
\}


"#--- --- ---#"


nnoremap <silent><unique> <Plug>(ahoge_separator_put_short_under) :<C-u>call ahoge_separator#put_short_separator(0)<CR>
nnoremap <silent><unique> <Plug>(ahoge_separator_put_short_over)  :<C-u>call ahoge_separator#put_short_separator(1)<CR>
nnoremap <silent><unique> <Plug>(ahoge_separator_put_long_under)  :<C-u>call ahoge_separator#put_long_separator(0)<CR>
nnoremap <silent><unique> <Plug>(ahoge_separator_put_long_over)   :<C-u>call ahoge_separator#put_long_separator(1)<CR>

command! PutShortSeparatorUnder call ahoge_separator#put_short_separator(0)
command! PutShortSeparatorOver  call ahoge_separator#put_short_separator(1)
command! PutLongSeparatorUnder  call ahoge_separator#put_long_separator(0)
command! PutLongSeparatorOver   call ahoge_separator#put_long_separator(1)

"#-=- -=- -=- -=- -=- -=- -=- -=- -=-#"
let &cpo = s:save_cpo
unlet s:save_cpo
