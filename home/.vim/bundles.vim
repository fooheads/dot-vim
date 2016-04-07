" Vundle, the plugin manager: https://github.com/gmarik/vundle
" ------------------------------------------------------------ 
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My Bundles here:
"
" original repos on github
" Plugin 'tpope/vim-fugitive'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'tpope/vim-rails.git'
Bundle 'kien/ctrlp.vim'
let g:ctrlp_follow_symlinks = 1

" surround.vim
Plugin 'tpope/vim-surround'

" repeat.vim - makes repeat work for some plugins, like surround.vim
Plugin "tpope/vim-repeat.git"

" vim-scripts repos
" Plugin 'L9'
" Plugin 'FuzzyFinder'

" non github repos
" Plugin 'git://git.wincent.com/command-t.git'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
" ...

" Would be nice to use Dash
" Plugin 'rizzatti/dash.vim'

" vim snippets stuff
Plugin "tomtom/tlib_vim"
Plugin "MarcWeber/vim-addon-mw-utils"
Plugin "garbas/vim-snipmate"
Plugin "honza/vim-snippets"

" Use Vroom to run test/specs/features
let g:vroom_map_keys = 0
let g:vroom_cucumber_path = 'cucumber '
let g:vroom_spec_command = 'rspec'
Plugin 'skalnik/vim-vroom'
silent! nmap <unique> <Leader>R :VroomRunTestFile<CR>
silent! nmap <unique> <Leader>r :VroomRunNearestTest<CR>
silent! nmap <unique> <Leader>l :VroomRunLastTest<CR>

" fugitive for git
Plugin 'tpope/vim-fugitive'

set tags=./tags;/

" Symmetric navigation inside vim and between vim/tmux
Plugin 'christoomey/vim-tmux-navigator'

filetype plugin indent on     " required!

"Plugin 'vim-scripts/repeatable-motions.vim'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
