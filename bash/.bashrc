# ------------------------- General Settings ------------------------
<<<<<<< HEAD
# Change prompt to use powerline-shell (install via Homebrew)
=======

# change prompt to use powerline-shell (install via Homebrew)
>>>>>>> 9673c65e0033e9b02b0f4d293013f642ac75110c
function _update_ps1() {
  PS1=$(powerline-shell $?)
}

if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
  PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# Add color
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Set default blocksize for ls, df, du
export BLOCKSIZE=1k

# Add color to commonly used commands
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Alias commonly used commands
alias ll='ls -FGlAhp'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ls='ls -GFh'

# The next line updates PATH for Netlify's Git Credential Helper.
if [ -f '/Users/federicociner/.netlify/helper/path.bash.inc' ]; then source '/Users/federicociner/.netlify/helper/path.bash.inc'; fi
