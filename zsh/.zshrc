DISABLE_MAGIC_FUNCTIONS="true"

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

# Set default blocksize for ls, df, du
export BLOCKSIZE=1k

# Alias commonly used commands
alias ll='ls -FGlAhp'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ls='ls -GFh'

# Alias Docker commands
alias docker_rmd='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load pyenv
eval "$(pyenv init -)"

# Laod fzf fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load ZMV
autoload zmv

# The next line updates PATH for Netlify's Git Credential Helper.
test -f '/Users/fed/Library/Preferences/netlify/helper/path.zsh.inc' && source '/Users/fed/Library/Preferences/netlify/helper/path.zsh.inc'