" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'cohama/lexima.vim'
Plug 'pechorin/any-jump.vim'
Plug 'honza/vim-snippets'
Plug 'rafaqz/ranger.vim'
" this plugins will disable repeated movement on creatain times
Plug 'takac/vim-hardtime'
" Necessary Plugins
Plug 'tomtom/tcomment_vim'
Plug 'mattn/emmet-vim'
" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gruvbox-community/gruvbox'
Plug 'joshdick/onedark.vim'
" syntaxplugins
Plug 'posva/vim-vue'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'}
Plug 'sheerun/vim-polyglot'
" React and Typescript
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
