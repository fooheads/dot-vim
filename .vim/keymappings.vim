" The might leader key
let mapleader = "\<Space>"

" Type <Space>w to save file (a lot faster than :w<Enter>)
nnoremap <Leader>w :w<CR>

" Fix backspace problem
set backspace=indent,eol,start

" Fix slow delay between insert mode and normal mode in tmux.
" http://www.johnhawthorn.com/2012/09/vi-escape-delays/
" Note: This may have bad side effects when doing macros in insert mode
"       that contains ESC. We'll see.
set timeoutlen=1000 ttimeoutlen=0

" Enter visual line mode with <Space><Space>:
nmap <Leader><Leader> V

" Press Space to toggle highlighting on/off, and show current value.
" noremap <Space> :set hlsearch! hlsearch?<CR>
nnoremap <Leader>s :set hlsearch! hlsearch?<CR>

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tab completion
set wildmode=longest,list,full
set wildmenu

set wildignore+=*.o,*.obj,*.class,*.jar,.git,.eclipsebuild,gems,output,reports,target,tmp,contentsites,*.png,*.jpg,*.ico

" Unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

" noremap ; :nohlsearch<cr>

inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
imap <C-S>  <Plug>snipMateNextOrTrigger


" Insert UUID  
imap <C-J>u <C-r>=substitute(system("uuidgen"), '.$', '', 'g')<CR>



