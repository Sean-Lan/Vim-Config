set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
" scripts not on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use: "filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
" Comment out stuff
Plugin 'tpope/vim-commentary.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-repeat'
" A wrapper for ack-grep
Plugin 'mileszs/ack.vim'
" Add key map for [b,]b, etc.
Plugin 'tpope/vim-unimpaired'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
" * & # for search selected text in visual mode
Plugin 'nelstrom/vim-visual-star-search' 
" :Qargs add file in Quickfix window to arg list
Plugin 'nelstrom/vim-qargs'
" some text objects
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-function'
Plugin 'kana/vim-textobj-lastpat'
runtime macros/matchit.vim

" global config section
let mapleader = ","
syntax on
set hls
set nu
set cursorline
set cursorcolumn
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set path=.,/usr/include/i386-linux-gnu,,
set incsearch
" When the following two options are set, search will be case-insensitive iff
" you input is all lowercase. *NOTE*: the two options will also affect the
" :substitute cmd, so a flag I may be needed to be case-sensitive.
set ignorecase
set smartcase
" keymap for close highlight search
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
" keymap for count the number of matches
nnoremap <leader>mc :<C-u>%s/<C-r><C-w>//gn<CR><C-o>
" let <C-p> and <C-n> have the cmd filter ability as <Up> and <Down>.
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" config section for Syntasic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'

" config section for YCM
let g:ycm_confirm_extra_conf = 0 
let g:ycm_global_ycm_extra_conf = '~/Vim-Config/ycm_extra_conf(c).py'
" let g:ycm_always_populate_location_list = 1
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
