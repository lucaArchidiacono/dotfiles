# PROMPT adjustments
PROMPT='b1g %F{226}→%f %~: '

# Git autocompletion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# Tab autocompletion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# JAVA HOME SETUP
export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home"

# LOCAL SETUP
export LOCAL="/Users/lucaarchidiacono/.local"

# PATH
export PATH="$LOCAL/bin:/opt/homebrew/bin:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="$HOME/.ghcup/bin:$PATH"
export PATH="/usr/local/bin:$PATH"


# Alias for intel computed packages
#alias ibrew="arch -x86_64 /usr/local/bin/brew"
#alias ijupyter-lab="/usr/local/bin/jupyter-lab"

# Helpers
alias l="ls -GTahlp"
alias haskell_REPL="stack ghci"
alias zhaw="cd /Users/lucaarchidiacono/Library/CloudStorage/Dropbox/Documents/ZHAW"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/lucaarchidiacono/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/lucaarchidiacono/miniconda/etc/profile.d/conda.sh" ]; then
        . "/Users/lucaarchidiacono/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/Users/lucaarchidiacono/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Enable chruyb and set Ruby Env.
source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh
chruby ruby-3.2.2
