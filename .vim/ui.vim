" Use a dark background: In MacVim the default color scheme’s dark variant is quite nice:
" set bg=dark
" set guifont=Monaco:h14
" set guifont=Monaco:h16

" Hide the toolbar:
set guioptions-=T

" No vertical scrollbar
set guioptions-=r

" What does this one do?
" set guioptions-=m

" Show the cursor line and column number:
set ruler

" Increase the default number of lines:
" set lines=57
" set columns=100
" set columns=300

" Avoid 'No write since last change' message
set hidden

" Cursor shape in different modes: tmux in iTerm2
" from: http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes
if $TMUX != '' && $TERM_PROGRAM == 'iTerm.app'
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
endif

"set background=light
"let g:solarized_termtrans = 1
"let g:solarized_termcolors=256
"colorscheme solarized

"if has("gui_macvim")
"   colorscheme solarized
"endif

"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif

" Clearer parenthesis matching
hi MatchParen cterm=bold ctermbg=none ctermfg=black

let &scrolloff=999-&scrolloff
set relativenumber

" nable search-related options:
set hls is ic scs
nmap <silent> <C-n> :noh<CR>

