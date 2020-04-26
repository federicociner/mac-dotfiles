# Path to your oh-my-zsh installation.
export ZSH="/Users/federicociner/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
#
# Install the following custom plugins:
# 1. https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
# 2. https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md
plugins=(git zsh-autosuggestions zsh-syntax-highlighting virtualenv)

source $ZSH/oh-my-zsh.sh

# User configuration

# Set default blocksize for ls, df, du
export BLOCKSIZE=1k

# Alias commonly used commands
alias ll='ls -FGlAhp'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ls='ls -GFh'

# Anaconda3 2018.12
__conda_setup="$('/Users/federicociner/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/federicociner/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/federicociner/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/federicociner/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
