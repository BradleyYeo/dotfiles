syntax on
filetype on

if $TERM_PROGRAM =~ "iTerm"
  " Set the title of the Terminal to the currently open file
  function! SetTerminalTitle()
      let titleString = expand('%:t')
      if len(titleString) > 0
          let &titlestring = expand('%:t')
          " this is the format iTerm2 expects when setting the window title
          let args = "\033]1;".&titlestring."\007"
          let cmd = 'silent !echo -e "'.args.'"'
          execute cmd
          redraw!
      endif
  endfunction
autocmd BufEnter * call SetTerminalTitle()
endif

let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
let &t_SR = "\<esc>]50;CursorShape=2\x7" " Underline in replace mode

map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K


set et 
set ts=2 
set sw=2 
set sts=2
set ai 
set si 
set hls
set ic 
set bg=dark 
set ve+=onemore
set nu
set splitbelow splitright
