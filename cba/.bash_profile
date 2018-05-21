# Source .bashrc
[[ ~/.bashrc ]] && source ~/.bashrc

# bash-completion via Homebrew (brew install bash-completion)
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# ----------------------- System-specific ---------------------------
# Java
export JAVA_HOME=$(/usr/libexec/java_home)

# CNTLM Proxy for CBA
export HTTP_PROXY=http://127.0.0.1:3128
export http_proxy=$HTTP_PROXY
export HTTPS_PROXY=$HTTP_PROXY
export https_proxy=$HTTPS_PROXY
