scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim
"#-=- -=- -=- -=- -=- -=- -=- -=- -=-#"


function! separetaro#put_short_separator(put_upper)
	" Merge dictionaries (priority user > default)
	let l:separators = extend(extend({}, g:separetaro_default_short_separator_of), g:separetaro_short_separator_of)

	let l:current_separator = has_key(l:separators, &filetype) ? l:separators[&filetype]
	\                                                          : l:separators['_']

	execute 'normal!' (a:put_upper ? 'O' : 'o')
	execute 'normal! 0D'
	execute 'normal! i' l:current_separator
	execute 'normal! =='
endfunction

function! separetaro#put_long_separator(put_upper)
	" Merge dictionaries (priority user > default)
	let l:separators = extend(extend({}, g:separetaro_default_long_separator_of), g:separetaro_long_separator_of)

	let l:current_separator = has_key(l:separators, &filetype) ? l:separators[&filetype]
	\                                                          : l:separators['_']

	execute 'normal!' (a:put_upper ? 'O' : 'o')
	execute 'normal! 0D'
	execute 'normal! i' l:current_separator
	execute 'normal! =='
endfunction


"#-=- -=- -=- -=- -=- -=- -=- -=- -=-#"
let &cpo = s:save_cpo
unlet s:save_cpo
