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
let g:ctrlp_follow_symlinks = 1

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

" vim snippets stuff
Bundle "tomtom/tlib_vim"
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

" Use Vroom to run test/specs/features
let g:vroom_map_keys = 0
let g:vroom_cucumber_path = 'cucumber '
Bundle 'skalnik/vim-vroom'
silent! nmap <unique> <Leader>R :VroomRunTestFile<CR>
silent! nmap <unique> <Leader>r :VroomRunNearestTest<CR>
silent! nmap <unique> <Leader>l :VroomRunLastTest<CR>

" fugitive for git
Bundle 'tpope/vim-fugitive'

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


