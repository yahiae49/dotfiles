eval "$(/opt/homebrew/bin/brew shellenv)"

# export pyenv to path, relevant when using pyenv-installer
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Default Python version. Change this is if you want another default
export PYTHON_VERSION='3.10'
# Bash function that takes one or zero arguments.
new_venv() { pyenv virtualenv ${1:-$PYTHON_VERSION} $(basename "$PWD") && pyenv local $(basename "$PWD") ${1:-$PYTHON_VERSION}; }


# Enable auto-complete for pipx (global python library)
eval "$(register-python-argcomplete pipx)"

export VISUAL='/usr/bin/vim'
export EDITOR="$VISUAL"


# Autoload colors
# https://stackoverflow.com/questions/689765/how-can-i-change-the-color-of-my-prompt-in-zsh-different-from-normal-text
autoload -U colors && colors
PS1="%F{214}%m%F{015}:%F{039}%~%F{015}\$ "
#PS1="%F{214}%K{000}%m%F{015}%K{000}:%F{039}%K{000}%~%F{015}%K{000}\$ "
#PS1="%{%F{red}%}%n%{%f%}%m %{%F{yellow}%}%~ %{$%f%}%% "


## colors for ls
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx


zstyle ':completion:*' list-colors ${(s.:.)LSCOLORS}

# Prompt information on the right-hand side
#RPROMPT="%F{111}%K{000}[%D{%f/%m/%y}|%@]"

#alias la="ls -a"

## Add forward slash to wordchars
WORDCHARS="${WORDCHARS/\//}"
