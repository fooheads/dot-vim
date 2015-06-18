" Turn off blinking cursor in normal mode
set gcr=n:blinkon0

" Turn off beeping and flashing
set vb t_vb=

" Enable automatic file type detection:
filetype plugin indent on

syntax enable

" Vim slow with syntax highlighting:
" http://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
" set re=1

" No more swap och backup files. Git will do just fine.
set nobackup
set nowritebackup
set noswapfile

let g:CommandTMaxFiles=20000
let g:CommandTMatchWindowReverse=1


