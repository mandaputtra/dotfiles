" read nunjucks as html files
au BufReadPost *.njk set syntax=html
" read ejs as html files
au BufReadPost *.ejs set syntax=html
" Read tsx file
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
" vim-vue config
let g:vue_pre_processors = []

" disable vim-polyglot on vue
let g:polyglot_disabled = ['vue', 'go', 'typescript']

" GOLANG SECTION
" Golang auto completion things
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" add missing import and prettier on save
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')


" Highlight vim-go
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
