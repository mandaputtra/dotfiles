" read nunjucks as html files
au BufReadPost *.njk set syntax=html

" vim-vue config
let g:vue_pre_processors = []

" disable vim-polyglot on vue
let g:polyglot_disabled = ['vue']

" GOLANG SECTION
" Golang auto completion things
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" add missing import and prettier on save
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')


" Highlight more info
let g:go_highlight_structs = 0
let g:go_highlight_interfaces = 0
let g:go_highlight_operators = 0
