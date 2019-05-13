scriptencoding utf-8
 
" Always add any detected errors into the location list
let g:syntastic_always_populate_loc_list = 1
 
" auto open location list when detecting errors
let g:syntastic_auto_loc_list = 1
 
" Highlight syntax errors where possible
let g:syntastic_enable_highlighting = 1
 
" Show this many errors/warnings at a time in the location list
let g:syntastic_loc_list_height = 5
 
" Don’t run checkers when saving and quitting--only on saving
let g:syntastic_check_on_wq = 0

" Don't run checkers on saving
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_mode_map = {
        \ "mode": "passive",
        \ "active_filetypes": ['ruby', 'python', 'cpp'],
        \ "passive_filetypes": ['typescript', 'javascript'] }

let g:syntastic_error_symbol         = '✖'
let g:syntastic_warning_symbol       = '⚠'
let g:syntastic_style_error_symbol   = '⚠'
let g:syntastic_style_warning_symbol = '⚠'
 
let g:syntastic_javascript_checkers    = ['eslint']
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint') 
let g:syntastic_javascript_eslint_exec = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
let g:syntastic_json_checkers          = ['jsonlint']
let g:syntastic_ruby_checkers          = ['rubocop']
let g:syntastic_ruby_rubocop_args      = "--config .rubocop.yml"
let g:syntastic_scss_checkers          = ['scss_lint']
let g:syntastic_vim_checkers           = ['vint']

