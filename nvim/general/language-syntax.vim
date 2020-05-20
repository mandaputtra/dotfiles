" read nunjucks as html files
au BufReadPost *.njk set syntax=html

let g:LanguageClient_serverCommands = {
    \ 'vue': ['vls']
    \ }
