
eval "$(/opt/homebrew/bin/brew shellenv)"

# export pyenv to path, relevant when using pyenv-installer
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Default Python version. Change this is if you want another default
export PYTHON_VERSION='3.10'
# Bash function that takes one or zero arguments.
new_venv() { pyenv virtualenv ${1:-$PYTHON_VERSION} $(basename "$PWD") && pyenv local $(basename "$PWD") ${1:-$PYTHON_VERSION}; }


#command -v pipx > /dev/null && eval "$(register-python-argcomplete pipx)"
# Enable auto-complete for pipx (global python library)
#  this is what is behind the complete error
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
alias hcn="hendrix compute -n content-safety-analysis"

# ----------------------- pyenv ------------------------------
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yahiae/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/yahiae/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yahiae/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/yahiae/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Created by `pipx` on 2023-09-08 09:34:08
export PATH="$PATH:/Users/yahiae/.local/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
