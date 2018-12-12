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
Plugin 'tpope/vim-rhubarb' " enable :Gbrowse for fugitive
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-endwise' " automatically add `end`
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Plugin 'FuzzyFinder'
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
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-repeat'
" Plugin 'bling/vim-bufferline'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

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
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'othree/html5.vim'

" * & # for search selected text in visual mode
Plugin 'nelstrom/vim-visual-star-search'
" :Qargs add file in Quickfix window to arg list
" Plugin 'nelstrom/vim-qargs'
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

" nerdtree git plug
Plugin 'Xuyuanp/nerdtree-git-plugin'

" git diff in gutter
Plugin 'airblade/vim-gitgutter'

" Snips
" Track the engine.
" Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'
" Plugin 'mattn/emmet-vim'
" For formatting js, css, html
" Plugin 'maksimr/vim-jsbeautify'
" Java Auto-complete
" Plugin 'artur-shaik/vim-javacomplete2'
" Plugin 'mustache/vim-mustache-handlebars'

" For Dash
" Plugin 'rizzatti/dash.vim'

" For Nginx
" Plugin 'Sean-Lan/vim-nginx'

" For haskell
" Plugin 'shougo/vimproc.vim'
" Plugin 'neovimhaskell/haskell-vim'
" Plugin 'eagletmt/ghcmod-vim'
" Plugin 'eagletmt/neco-ghc'

" For Vue
" Plugin 'posva/vim-vue'

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
set history=200
set mouse=a " enable mouse
" set cursorline
" set cursorcolumn
" set path=.,/usr/include/i386-linux-gnu,,
set ttyfast
set backspace=2
set incsearch
set encoding=utf-8

" improve tab-completion for commands
set wildmenu " show options as list when switching buffers etc
set wildmode=longest:full,full " shell-like autocomplete to unambiguous portion

if exists('+colorcolumn')
  set colorcolumn=+1 " vertical line at textwidth characters
endif

set textwidth=80
" make command auto-completion like zsh
set wildmenu
set wildmode=full
colorscheme elflord
" When the following two options are set, search will be case-insensitive iff
" you input is all lowercase. *NOTE*: the two options will also affect the
" :substitute cmd, so a flag I may be needed to be case-sensitive.
set ignorecase
set smartcase
set nrformats= "make all numbers in decimalism
" for indentation of html
let g:html_indent_inctags = "html,body,head,tbody"

" keymap for close highlight search
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
" keymap for count the number of matches
nnoremap <leader>mc :<C-u>%s/<C-r><C-w>//gn<CR><C-o>
" let <C-p> and <C-n> have the cmd filter ability as <Up> and <Down>.
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
" map %% to current file's dirname
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" search and move the target to the center
noremap <leader>n nzz
noremap <leader>N Nzz

" config section for Syntasic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" for haskell
" Disable haskell-vim omnifunc
" let g:haskellmode_completion_ghc = 0
" autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
" let g:necoghc_enable_detailed_browse = 1

" config section for YCM

" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" nnoremap H <C-w><C-h>
" nnoremap J <C-w><C-j>
" nnoremap K <C-w><C-k>
" nnoremap L <C-w><C-l>

set laststatus=2
" always keeps 5 line to the bottom when vertical scrolling
set scrolloff=5
" keep an undo file (.un~) when currect session ended
set undofile
" put backup, swap and undo file into a centralized place
" remember to create those directories!
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//
" auto change cwd
" set autochdir

" Faster Ctrl-P search
let g:ctrlp_lazy_update = 100 "Only refreshes the results every 100ms so if you type fast searches don’t pile up
let g:ctrlp_user_command = 'find %s -type f | egrep -iv "(\.(eot|gif|gz|ico|jpg|jpeg|otf|png|psd|pyc|svg|ttf|woff|zip)$)|(/\.)|((^|\/)tmp\/)"' "Quicker indexing

" make :Gbrowse to open the GitHub page for mus
let g:fugitive_github_domains = ['github.com', 'git.musta.ch']

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
  elseif &filetype == "java"
    exec "!javac %"
  elseif &filetype == "go"
    exec "!go build %"
  endif
endfunc

" run the executable
func! RunCode()
  exec "w"
  if &filetype == "c" || &filetype == "cpp"
    exec "!./%<"
  elseif &filetype == "python"
    exec "!python %"
  elseif &filetype == "ruby"
    exec "!ruby %"
  elseif &filetype == "html"
    exec "!open %"
  elseif &filetype == "sh"
    exec "!env bash %"
  elseif &filetype == "java"
    exec "!java %<"
  elseif &filetype == "lua"
    exec "!env lua %"
  elseif &filetype == "go"
    exec "!go run %"
  endif
endfunc

" keymap for building the solution
noremap <leader>b :call CompileCode()<CR>

" keymap for running the executable
noremap <leader>r :call RunCode()<CR>

" map paste option to avoid autoindent etc.
set pastetoggle=<F5>

" map to clear the space in the line tail
nnoremap <leader>c :%s/ *$//<CR>:normal! ``<CR>:nohl<CR>

" for tmux color scheme
if exists('$TMUX')
  set term=screen-256color
endif

" Use two-space indentation
set autoindent " keep indentation when starting new lines
set tabstop=2 " spaces per tab
set softtabstop=1 " spaces per tab (when tabbing/backspacing)
set shiftwidth=2 " spaces per tab (when shifting)
set expandtab " always use spaces instead of tabs
au BufWinEnter,BufNewFile * silent tab

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Improve automatic formatting
if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j " remove comment leader when joining comment lines
endif

set formatoptions+=c " auto-wrap comments using textwidth
set formatoptions+=n " smart auto-indenting inside numbered lists
set formatoptions+=q " allow formatting of comments with gq
set nojoinspaces " don’t autoinsert two spaces after ’.’, ’?’, ’!’ for join command

" font
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
highlight Comment cterm=italic

" allow toggling between local and default mode
func! TabToggle()
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
nmap <F9> mz:execute TabToggle()<CR>`z

" Transform selected html tag into js string.
vmap <silent> <leader>q :s/^\(\s*\)\(.*\)\s*$/\1 + '\2'/<CR>:nohl<CR>
vmap <silent> <leader>h :s/^\(\s*\) + '\([^']*\)',*\s*$/\1\2/g<CR>:nohl<CR>

" config Command-T plugin
nnoremap <silent> <Leader>g <Plug>(CommandTJump)
let g:CommandTWildIgnore=&wildignore . ",*/node_modules/*,*/coverage/*"

" easy save
nnoremap <Leader>w :w<CR>

" For Java Auto-complete
" autocmd FileType java setlocal omnifunc=javacomplete#Complete

" For Dash searching
" nmap <silent> <leader>d <Plug>DashSearch
" not bring Dash to the foreground
" let g:dash_activate = 0

" use ag for search
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" never jump to the first result automatically
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" temporal hack for silent error & warnings
if has('python3')
  silent! python3 1
endif
