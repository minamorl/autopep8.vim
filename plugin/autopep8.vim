let s:save_cpo = &cpo
set cpo&vim

if exists('g:loaded_autopep8')
  let &cpo = s:save_cpo
  unlet s:save_cpo
  finish
endif

let g:loaded_autopep8 = 1
let &cpo = s:save_cpo
unlet s:save_cpo
