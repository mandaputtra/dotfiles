" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>
" Alternate way to close buffer
nnoremap <silent> <C-Q> :bd<CR>
" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Use alt + hjkl to resize windows
nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <silent> <M-k>    :resize +2<CR>
nnoremap <silent> <M-h>    :vertical resize -2<CR>
nnoremap <silent> <M-l>    :vertical resize +2<CR>

" LANGUAGE SPECIFIC MAPPINGS
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0
