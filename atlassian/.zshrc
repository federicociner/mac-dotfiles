DISABLE_MAGIC_FUNCTIONS="true"

# Prioritize Homebrew-installed applications
# On Apple silicon, Homebrew installs files into the /opt/homebrew/ folder, which is not part of
# the default shell $PATH.
arch=$(uname -m)
if [[ $arch == "arm64" ]]; then
    eval $(/opt/homebrew/bin/brew shellenv)
fi
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

# rustup
export PATH="$HOME/.cargo/bin:$PATH"

# setsid
export PATH="/opt/homebrew/opt/util-linux/bin:$PATH"

# ---------------------- oh-my-zsh settings ---------------------- #
# Path to your oh-my-zsh installation.
export ZSH="/Users/$USER/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(docker docker-compose git zsh-autosuggestions zsh-syntax-highlighting virtualenv)

ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# --------------------------------------------------------------- #

# NVM settings
# Installation: https://github.com/nvm-sh/nvm#installing-and-updating
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pyenv and pyenv-virtualenv
# Installation: https://github.com/pyenv/pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# ---------------------- Atlassian settings --------------------- #
# jenv settings - only enabled if jenv is installed
# https://www.jenv.be/
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Load ZMV
autoload zmv
export PATH="/opt/homebrew/opt/util-linux/bin:$PATH"
export PATH="/opt/homebrew/opt/util-linux/sbin:$PATH"

# Add Automation codebase binaries to path
export PATH="$HOME/code/barrel/bin:$PATH"
# --------------------------------------------------------------- #

# Load fzf fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Alias commonly used commands
alias ll='ls -FGlAhp'
alias mv='mv -iv'
alias mkdir='mkdir -pv'

# Alias Docker commands
alias docker_rmd='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'

source ~/.afm-git-configrc

# Atlassian VPN
export ATLASSIAN_VPN_MFA_DEFAULT=push
