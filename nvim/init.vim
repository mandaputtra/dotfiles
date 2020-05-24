" we load plugins first
source $HOME/.config/nvim/vim-plug/plugins.vim

" load general configuration
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/which_key.vim
source $HOME/.config/nvim/general/language-syntax.vim
" load buch of configuration
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/startify.vim
source $HOME/.config/nvim/plug-config/nerd.vim
source $HOME/.config/nvim/plug-config/coc.vim

" themes configuration
source $HOME/.config/nvim/themes/airline.vim

" python host global
let g:python3_host_prog = expand("/usr/bin/python3")

" somconfiguration
let g:hardtime_default_on = 1
" au BufRead,BufNewFile *.md setlocal textwidth=80

filetype plugin on
colorscheme gruvbox
