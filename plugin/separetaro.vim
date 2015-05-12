scriptencoding utf-8

if exists('g:loaded_separetaro')
  finish
endif
let g:loaded_separetaro = 1

let s:save_cpo = &cpo
set cpo&vim
"#-=- -=- -=- -=- -=- -=- -=- -=- -=-#"


" Default short separator
let g:separetaro_default_short_separator_of = {
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
let g:separetaro_default_long_separator_of = {
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


" User's separators
let g:separetaro_short_separator_of = get(g:, 'separetaro_short_separator_of', {})
let g:separetaro_long_separator_of  = get(g:, 'separetaro_long_separator_of',  {})


"#--- --- ---#"


nnoremap <silent><unique> <Plug>(separetoro_put_short_under) :<C-u>call separetaro#put_short_separator(0)<CR>
nnoremap <silent><unique> <Plug>(separetoro_put_short_over)  :<C-u>call separetaro#put_short_separator(1)<CR>
nnoremap <silent><unique> <Plug>(separetoro_put_long_under)  :<C-u>call separetaro#put_long_separator(0)<CR>
nnoremap <silent><unique> <Plug>(separetoro_put_long_over)   :<C-u>call separetaro#put_long_separator(1)<CR>

command! SeparetaroPutShortUnder call separetaro#put_short_separator(0)
command! SeparetaroPutShortOver  call separetaro#put_short_separator(1)
command! SeparetaroPutLongUnder  call separetaro#put_long_separator(0)
command! SeparetaroPutLongOver   call separetaro#put_long_separator(1)

"#-=- -=- -=- -=- -=- -=- -=- -=- -=-#"
let &cpo = s:save_cpo
unlet s:save_cpo
