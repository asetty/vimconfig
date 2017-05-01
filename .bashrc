export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
set -o vi
bind -m vi-insert "\C-l":clear-screen
#export PS1="\[$(tput setaf 219)\]\u\[$(tput setaf 172)\]@\[$(tput setaf 33)\]\h\[$(tput setaf 162)\]:\W\[$(tput setaf 104)\]\$ \[$(tput sgr0)\]\n"
PS1="\[\033[0;35m\][\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]"
alias grepfiles="find . -type f | xargs grep"
alias cse223="ssh cse223_asetters@vm158.sysnet.ucsd.edu"
