let s:save_cpo = &cpo
set cpo&vim

function! autopep8#clean()
  if executable("pep8")
    let l:stdin = join(getline(1,'$'), "\n")
    let l:clean_source = system('autopep8 --aggressive --aggressive - ', l:stdin)
    normal! ggVGd
    call append(0, split(l:clean_source, "\n"))
    normal! dd
  else
    echo "autopep8 is not installed. \"pip autopep8\""
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
