" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'liuchengxu/vim-which-key'
Plug 'sheerun/vim-polyglot'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
" Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" this plugins will disable repeated movement on creatain times
Plug 'takac/vim-hardtime'

Plug 'voldikss/vim-floaterm'
" Themes
Plug 'christianchiarulli/onedark.vim'
Plug 'morhetz/gruvbox'
" syntaxplugins
Plug 'leafOfTree/vim-vue-plugin'
Plug 'mattn/emmet-vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
