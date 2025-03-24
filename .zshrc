# PROMPT adjustments
PROMPT='W0RK %F{226}→%f %~: '

# Git autocompletion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# Tab autocompletion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# LOCAL SETUP
export LOCAL="$HOME/.local"

# HOMEBREW SETUP
export HOMEBREW="/opt/homebrew"

# RANCHER SETUP
export RANCHER="$HOME/.rd"

# PATH
export PATH="$LOCAL/bin:$PATH"
export PATH="$HOMEBREW/bin:$PATH"
export PATH="$RANCHER/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

# Python Environment setup
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Fnm Node Environment setup
eval "$(fnm env --use-on-cd --shell zsh)"

# Atuin zshrc history
eval "$(atuin init zsh)"
export PATH=$PATH:$HOME/.maestro/bin

# Z easier `cd` navigation
eval "$(zoxide init zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

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
alias lg='lazygit'
alias lg-config='vi ~/Library/Application\ Support/lazygit/config.yml'
alias l="ls -GTahlp"
