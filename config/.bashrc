# ------------------------- General Settings ------------------------
# change prompt
export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => "
export PS2="| => "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# set default blocksize for ls, df, du
export BLOCKSIZE=1k

# add color to commonly used commands
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# alias commonly used commands
alias ll='ls -FGlAhp'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ls='ls -GFh'

# function: create ZIP archive
zipf () { zip -r "$1".zip "$1" ; }

# full recursive directory listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'