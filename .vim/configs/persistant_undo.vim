" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = $HOME.'/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
    let myUndoDir = expand(vimDir . '/undodir')
    " Create dirs

  if (!isdirectory(vimDir))
    silent call system('mkdir -p ' . vimDir)
  endif
  if (!isdirectory(myUndoDir))
    silent call system('mkdir -p ' . myUndoDir)
  endif
    let &undodir = myUndoDir
    set undofile
endif
