# Set $USER variable
export USER=federicociner

# ------------------------- Application Settings ------------------------
# NVM settings
#
# Installation: https://github.com/nvm-sh/nvm#installing-and-updating
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

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
