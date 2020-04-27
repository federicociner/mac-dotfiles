# Source .bashrc
[[ ~/.bashrc ]] && source ~/.bashrc

# Anaconda3 2018.12
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/federicociner/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/federicociner/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/federicociner/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/federicociner/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
