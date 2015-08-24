let s:save_cpo = &cpo
set cpo&vim

function! autopep8#clean()
  if !exists("g:autopep8_args")
    let g:autopep8_args = "--aggressive --aggressive"
  endif
  if executable("pep8")
    let l:stdin = join(getline(1,'$'), "\n")
    let l:clean_source = system('autopep8 '.g:autopep8_args.' - ', l:stdin)
    let l:splitted = split(l:clean_source, "\n")
    silent %d
    call append(0, l:splitted)
    silent $d
  else
    echo "autopep8 is not installed. \"pip autopep8\""
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
