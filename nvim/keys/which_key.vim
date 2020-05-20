" Map leader to which_key
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual ','<CR>

" let use of which key pattern
let g:which_key_map = {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" cp is for file configurations
let g:which_key_map.y = {
  \ 'name'  : 'copy-utils',
  \ 'r'     : [":let @+ = expand('%')"                      , 'copy-relative-path'],
  \ 'n'     : [":let @+ = expand('%:t')"                    , 'copy-file-name'],
  \ 'p'     : [":let @+ = expand('%:p')"                    , 'copy-full-path'],
  \ }

" t is for terminal
let g:which_key_map.t = {
  \ 'name' : '+terminal' ,
  \ ';' : [':FloatermNew --wintype=popup --height=6'        , 'terminal'],
  \ 'f' : [':FloatermNew fzf'                               , 'fzf'],
  \ 'g' : [':FloatermNew lazygit'                           , 'git'],
  \ 'r' : [':FloatermNew ranger'                            , 'ranger'],
  \ 't' : [':FloatermToggle'                                , 'toggle'],
  \ 'y' : [':FloatermNew gotop-cjbassi'                     , 'monitor'],
  \ 'k' : [':FloatermKill'                                  , 'kill'],
  \ }

" Register which key map
call which_key#register("<Space>", "g:which_key_map")
