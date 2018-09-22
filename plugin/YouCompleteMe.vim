let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/Vim-Config/ycm_extra_conf(c++).py'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
set completeopt=menu,menuone
" let g:ycm_always_populate_location_list = 1
let g:ycm_semantic_triggers = {
      \   'css': [ 're!^\s{4}', 're!:\s+'],
      \   'html': [ '</' ],
      \   'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
      \   'cs,lua,javascript': ['re!\w{2}'],
      \   'haskell': ['.']
      \ }
let g:ycm_filetype_blacklist = {
      \   'json': 1,
      \   'text': 1,
      \   'markdown': 1
      \ }
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
