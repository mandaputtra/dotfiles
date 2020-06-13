" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" this plugins will disable repeated movement on creatain times
Plug 'takac/vim-hardtime'
" let g:hardtime_default_on = 1

Plug 'raimondi/delimitmate'
Plug 'mattn/emmet-vim'
Plug 'voldikss/vim-floaterm'
" Themes
Plug 'gruvbox-community/gruvbox'
Plug 'joshdick/onedark.vim'
" syntaxplugins
Plug 'posva/vim-vue'
Plug 'tomtom/tcomment_vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'}
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
