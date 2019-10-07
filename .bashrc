export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export GOPATH="/Users/asetty/go"
set -o vi
bind -m vi-insert "\C-l":clear-screen
#export PS1="\[$(tput setaf 219)\]\u\[$(tput setaf 172)\]@\[$(tput setaf 33)\]\h\[$(tput setaf 162)\]:\W\[$(tput setaf 104)\]\$ \[$(tput sgr0)\]\n"
PS1="\[\033[0;35m\][\w]\[\033[0m\] \[\033[1;32m\]$(kubectl config current-context)\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]"
alias grepfiles="find . -type f | xargs grep"
alias gogit="cd /Users/asetty/work/git"
alias kc="kubectl"

function kls() {
    if [ "$#" -gt 0 ]; then
    kubectl get pods --namespace=$1
    return
    fi
    kubectl get pods
}

function kll() {
    if [ "$#" -gt 0 ]; then
    kubectl get pods -o wide --namespace=$1
    return
    fi
    kubectl get pods -o wide
}

function kssh() {
    if [ "$#" -gt 1 ]; then
    kubectl exec -ti --namespace=$2 "$1" bash
    return
    fi
    kubectl exec -ti "$1" bash
}

function kcat() {
    if [ "$#" -gt 1 ]; then
    kubectl describe po --namespace=$2 "$1"
    return
    fi
    kubectl describe po "$1"
}


function kuse() {
    kubectl config use-context "$1"
}

function sshcore() {
    ssh core@r123s${1}.sjc.aristanetworks.com
}
