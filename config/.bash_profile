# ------------------------- General Settings ------------------------
# change prompt
export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => "
export PS2="| => "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# set default blocksize for ls, df, du
export BLOCKSIZE=1k

# alias commonly used commands
alias ll='ls -FGlAhp'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias ls='ls -GFh'
alias edit='sublime'
alias finder='open -a Finder ./'

# function: create ZIP archive
zipf () { zip -r "$1".zip "$1" ; }

# full recursive directory listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

# ----------------------- System-specific ---------------------------
# Java
export JAVA_HOME=$(/usr/libexec/java_home)

# CNTLM Proxy for CBA
export HTTP_PROXY=http://127.0.0.1:3128
export http_proxy=$HTTP_PROXY
export HTTPS_PROXY=$HTTP_PROXY
export https_proxy=$HTTPS_PROXY
