set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" let path = '~/some/path/here'
" call vundle#begin(path)

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

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
" Plugin 'git://git.wincent.com/command-t.git'
" Remember to compile command-t
Plugin 'wincent/command-t'
Plugin 'yonchu/accelerated-smooth-scroll'
" auto
Plugin 'Raimondi/delimitMate'

" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
" Comment out stuff
" Plugin 'tpope/vim-commentary.git'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-repeat'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'vim-airline/vim-airline-themes'

" A wrapper for ack-grep
Plugin 'mileszs/ack.vim'
" Add key map for [b,]b, etc.
Plugin 'tpope/vim-unimpaired'
Plugin 'Valloric/YouCompleteMe'
" Remember to run `npm install` in tern_for_vim plugin folder,
" and offer a .tern-project or a global .tern-config for tern.
Plugin 'ternjs/tern_for_vim'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'othree/html5.vim'
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" * & # for search selected text in visual mode
Plugin 'nelstrom/vim-visual-star-search'
" :Qargs add file in Quickfix window to arg list
Plugin 'nelstrom/vim-qargs'
" some text objects
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-function'
Plugin 'kana/vim-textobj-lastpat'
Plugin 'bps/vim-textobj-python'
runtime macros/matchit.vim

" Highlight xml tags
Plugin 'Valloric/MatchTagAlways'

" Filesystem explorer
Plugin 'scrooloose/nerdtree'

" Snips
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" vim-react-snippets:
Plugin 'justinj/vim-react-snippets'
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" ...
" To ignore plugin indent changes, instead use: "filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ


" global config section
let mapleader = ' '
syntax on
set hls
set nu
set cursorline
set cursorcolumn
set path=.,/usr/include/i386-linux-gnu,,
set backspace=2
set incsearch
" When the following two options are set, search will be case-insensitive iff
" you input is all lowercase. *NOTE*: the two options will also affect the
" :substitute cmd, so a flag I may be needed to be case-sensitive.
set ignorecase
set smartcase
" for indentation of html
let g:html_indent_inctags = "html,body,head,tbody"

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
let g:syntastic_javascript_checkers = ['eslint']

" config section for YCM
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/Vim-Config/ycm_extra_conf(c).py'
" let g:ycm_always_populate_location_list = 1
let g:ycm_semantic_triggers = {
    \   'css': [ 're!^\s{4}', 're!:\s+'],
    \   'html': [ '</' ],
    \ }
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" config section for NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nnoremap H <C-w><C-h>
nnoremap J <C-w><C-j>
nnoremap K <C-w><C-k>
nnoremap L <C-w><C-l>

" config section for air-line
let g:airline_powerline_fonts = 1
let g:airline_theme = 'badwolf'
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
set laststatus=2

" key map for resize window
nnoremap <leader>w= :resize +1<CR>
nnoremap <leader>w- :resize -1<CR>
nnoremap <leader>w, :vertical resize -1<CR>
nnoremap <leader>w. :vertical resize +1<CR>

" compile source code
func! CompileCode()
exec "w"
if &filetype == "c"
   exec "!gcc % -o %<"
elseif &filetype == "cpp"
   exec "!g++ -std=c++11 % -o %<"

elseif &filetype == "python"
  exec "!python %"

endif
endfunc

" run the executable
func! RunCode()
exec "w"
if &filetype == "c" || &filetype == "cpp"
exec "!./%<"
elseif &filetype == "python"
exec "!python %"
endif
endfunc

" keymap for building the solution
noremap <leader>b :call CompileCode()<CR>

" keymap for running the executable
noremap <leader>r :call RunCode()<CR>

" map paste option to avoid autoindent etc.
set pastetoggle=<F5>

" map to clear the space in the line tail
nnoremap <leader>c :%s/ *$//<CR>:nohl<CR>

" for tmux color scheme
if exists('$TMUX')
  set term=screen-256color
endif

" virtual tabstops using spaces
let tab_width=4
execute "set shiftwidth=".tab_width
execute "set softtabstop=".tab_width
set expandtab
" allow toggling between local and default mode
function! TabToggle()
  if &expandtab
    set shiftwidth=8
    set softtabstop=0
    set noexpandtab
  else
    execute "set shiftwidth=".g:tab_width
    execute "set softtabstop=".g:tab_width
    set expandtab
  endif
endfunction
nmap <F9> mz:execute TabToggle()<CR>'z
