if [ "$TMUX" = "" ]; then tmux; fi

# PROMPT adjustments
PROMPT='W0RK %F{226}→%f %~: '

# LOCAL SETUP
export LOCAL="$HOME/.local"

# HOMEBREW SETUP
export HOMEBREW="/opt/homebrew"

# NVM SETUP
export NVM_DIR="$HOME/.nvm"

# PATH
export PATH="$LOCAL/bin:$PATH"
export PATH="$HOMEBREW/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="$HOME/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# Git autocompletion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# Tab autocompletion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Pyenv SETUP
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Fnm Node Environment setup
eval "$(fnm env --use-on-cd --shell zsh)"

# Atuin zshrc history
eval "$(atuin init zsh)"

# Z easier `cd` navigation
eval "$(zoxide init zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# nvm loads and completions
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "~/.bun/_bun" ] && source "~/.bun/_bun"

# Yazi file/folder navigation inside terminal
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd "$cwd"
	fi
	rm -f -- "$tmp"
}

# Alias
alias l="ls -GTahlp"
alias y=yazi
alias lg='lazygit'
alias lg-config="vi $HOME/.config/lazygit/config.yml"
alias ssh-store='ssh -i ~/.ssh/hetzner_cloud root@159.69.199.60'
alias ssh-projects='ssh -i ~/.ssh/hetzner_cloud root@159.69.191.251'
alias ssh-analytics='ssh -i ~/.ssh/hetzner_cloud root@95.217.179.133'