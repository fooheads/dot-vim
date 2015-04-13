" Niclas Nilsson's .vimrc  (with some gvim / MacVim stuff in it)
" 
" Snippets from 
" - http://b4winckler.wordpress.com/2009/07/10/a-minimal-vim-configuration/
"

" Turn off blinking cursor in normal mode
set gcr=n:blinkon0

" Turn off beeping and flashing
set vb t_vb=

" nable search-related options:
set hls is ic scs
nmap <silent> <C-n> :noh<CR>

" Press Space to toggle highlighting on/off, and show current value.
noremap <Space> :set hlsearch! hlsearch?<CR>

" Enable automatic file type detection:
filetype plugin indent on

" Use 4 spaces for indentation and replace tabs with spaces in a smart way:
set sw=2 sts=2 et

set nowrap

" Hide the toolbar:
set guioptions-=T

" Show the cursor line and column number:
set ruler

" Increase the default number of lines:
set lines=57
" set columns=100
set columns=300

" Use a dark background: In MacVim the default color scheme’s dark variant is quite nice:
set bg=dark
set guifont=Monaco:h14

syntax enable

let mapleader = ","

let &scrolloff=999-&scrolloff
set relativenumber

" What does this one do?
" set guioptions-=m

" noremap ; :nohlsearch<cr>

" No vertical scrollbar
set guioptions-=r

" Tab completion
set wildmode=longest,list,full
set wildmenu

set wildignore+=*.o,*.obj,*.class,*.jar,.git,.eclipsebuild,gems,output,reports,target,tmp,contentsites,*.png,*.jpg,*.ico

" Avoid 'No write since last change' message
set hidden

" Unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor

" Vim slow with syntax highlighting:
" http://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
" set re=1

" Vundle, the plugin manager: https://github.com/gmarik/vundle
" ------------------------------------------------------------ 
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'

" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'

" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
Bundle 'git://github.com/altercation/vim-colors-solarized.git'
" ...

" Would be nice to use Dash
" Plugin 'rizzatti/dash.vim'

set tags=./tags;/

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" End of Vundle stuff 
"-------------------------------------------------

let g:CommandTMaxFiles=20000
let g:CommandTMatchWindowReverse=1

if has("gui_macvim")
   colorscheme solarized
endif

if has('gui_running')
    set background=light
else
    set background=dark
endif

set background=light

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

