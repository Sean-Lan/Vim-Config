" show hint about the where the cursor is
nmap <buffer> <Leader>h : <C-u>echo tsuquyomi#hint()<CR>

set path=.,src,frontend,
set suffixesadd=.js,.jsx,.ts,.tsx

function! LoadFromMonorail(fname)
  let monorail = "./app/assets/javascripts/"
  return monorail . a:fname
endfunction

function! LoadMainNodeModule(fname)
  let nodeModules = "./node_modules/"
  let packageJsonPath = nodeModules . a:fname . "/package.json"

  if filereadable(packageJsonPath)
    return nodeModules . a:fname . "/" . json_decode(join(readfile(packageJsonPath))).main
  else
    return nodeModules . a:fname
  endif
endfunction

function! LoadFile(fname)
  if a:fname =~ "^monorail/"
    return LoadFromMonorail(strpart(a:fname, 9))
  else
    return LoadMainNodeModule(a:fname)
  endif
endfunction

set includeexpr=LoadFile(v:fname)
