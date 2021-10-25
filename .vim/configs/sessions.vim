fu! SaveSess()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()

  if (filewritable(b:sessiondir) != 2)
    exe 'silent !mkdir -p ' b:sessiondir
    redraw!
  endif

  let b:filename = b:sessiondir . '/session.vim'
  exe 'mksession! ' . b:filename
endfunction

fu! RestoreSess()
  let b:sessiondir = $HOME . "/.vim/sessions" . getcwd()
  let b:sessionfile = b:sessiondir . "/session.vim"
  if (filereadable(b:sessionfile))
    exe 'source ' b:sessionfile
  else
    echo "No session loaded."
  endif
endfunction

autocmd VimLeave * call SaveSess()
if(argc() == 0)
  au VimEnter * nested :call RestoreSess()
endif
"autocmd VimEnter * nested call RestoreSess()

command! -nargs=* -bang MS call SaveSess()
