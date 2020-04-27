# Set $USER variable
export USER=federicociner

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
