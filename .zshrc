# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/mandaputra/.zsh/completions:"* ]]; then export FPATH="/Users/mandaputra/.zsh/completions:$FPATH"; fi
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git
  gitfast
  git-commit
  z
  fzf
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2024-03-04 10:21:51
export PATH="$PATH:/Users/mandaputra/.local/bin"

alias restart-shell="exec $SHELL"
alias ls="eza"
alias cat="bat"
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias telebit="$HOME/Applications/telebit/bin/telebit"
alias code-insiders="$HOME/Applications/code-insiders"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# mssql
export LDFLAGS="-L/opt/homebrew/opt/freetds/lib"
export CPPFLAGS="-I/opt/homebrew/opt/freetds/include"

# Python pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# opam configuration
[[ ! -r /Users/mandaputra/.opam/opam-init/init.zsh ]] || source /Users/mandaputra/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# ClamAV
export PATH=/usr/local/clamav/bin:/usr/local/clamav/sbin:$PATH

# Flutter
export PATH=$HOME/Applications/flutter/bin:$PATH

export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# bun completions
[ -s "/Users/mandaputra/.bun/_bun" ] && source "/Users/mandaputra/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export SAPNWRFC_HOME="/usr/local/sap/nwrfcsdk"
# export SAPNWRFC_HOME="/Users/mandaputra/Code/diamond/sdk"

# pnpm
export PNPM_HOME="/Users/mandaputra/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
. "/Users/mandaputra/.deno/env"
# Initialize zsh completions (added by deno install script)
autoload -Uz compinit
compinit

# proto
export PROTO_HOME="$HOME/.proto";
export PATH="$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH";
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform

# ollama
export OLLAMA_API_BASE=http://127.0.0.1:11434

# Golang
[ -s "${HOME}/.g/env" ] && \. "${HOME}/.g/env"  # g shell setup
if [[ -n $(alias g 2>/dev/null) ]]; then
    unalias g
fi
alias air='~/.air'

# DIRENV
eval "$(direnv hook zsh)"

# AWS
alias awscopilot=copilot

# sendme
alias sendme=~/sendme

# Erlang/Elixir
export PATH=$HOME//opt/homebrew/Cellar/erlang/27.2.2/lib/erlang/erts-15.2.2/bin:$PATH
export PATH=$HOME//opt/homebrew/bin:$PATH
