let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1

let g:ale_fixers = {
  \ 'vue': ['prettier', 'eslint'],
  \ 'json': ['prettier', 'eslint'],
  \ 'typescript': ['prettier', 'eslint'],
  \ 'markdown': ['prettier', 'eslint'],
  \ 'css': ['prettier', 'eslint'],
  \ 'javascript': ['prettier', 'eslint'],
  \ }
