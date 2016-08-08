" The might leader key
let mapleader = "\<Space>"

" Type <Space>w to save file (a lot faster than :w<Enter>)
nnoremap <Leader>w :w<CR>

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



