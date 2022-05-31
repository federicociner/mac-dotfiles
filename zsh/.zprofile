# Source .zshrc
[[ ~/.zshrc ]] && source ~/.zshrc

# Prioritize Homebrew-installed applications
# On Apple silicon, Homebrew installs files into the /opt/homebrew/ folder, which is not part of
# the default shell $PATH.
arch=$(uname -m)
if [[ $arch == "arm64" ]]; then
    eval $(/opt/homebrew/bin/brew shellenv)
fi

export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

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

# jenv settings - only enabled if jenv is installed
# https://www.jenv.be/
jenv_path=$(which jenv)
if [[ ! -z "$jenv_path" ]]; then
    export PATH="$HOME/.jenv/bin:$PATH"
    eval "$(jenv init -)"
fi
