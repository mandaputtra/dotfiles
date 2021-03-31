if exists ('g:vscode')
  " does something if its loaded from VsCode
else
  source $HOME/.config/nvim/general/language-syntax.vim
  " we load plugins first
  source $HOME/.config/nvim/vim-plug/plugins.vim
  
  " load general configuration
  source $HOME/.config/nvim/general/settings.vim
  source $HOME/.config/nvim/keys/mappings.vim
  " load buch of configuration
  source $HOME/.config/nvim/plug-config/fzf.vim
  source $HOME/.config/nvim/plug-config/startify.vim
  source $HOME/.config/nvim/plug-config/coc.vim
  " themes configuration
  source $HOME/.config/nvim/themes/airline.vim

endif

" python host global
let g:python3_host_prog = expand("/usr/bin/python3")
