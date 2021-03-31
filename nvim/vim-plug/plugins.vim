" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-sensible'

Plug 'pechorin/any-jump.vim'
Plug 'brooth/far.vim'

Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'cohama/lexima.vim'
" this plugins will disable repeated movement on creatain times
Plug 'takac/vim-hardtime'
" For my eyes
Plug 'ryanoasis/vim-devicons'
Plug 'yuttie/comfortable-motion.vim'
Plug 'mhinz/vim-startify'
" Necessary Plugins
Plug 'tomtom/tcomment_vim'
Plug 'mattn/emmet-vim'
" Themes
Plug 'rakr/vim-colors-rakr'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lifepillar/vim-gruvbox8'
Plug 'wakatime/vim-wakatime'
" syntaxplugins
Plug 'posva/vim-vue'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'}
Plug 'HerringtonDarkholme/yats.vim'
Plug 'sheerun/vim-polyglot'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
