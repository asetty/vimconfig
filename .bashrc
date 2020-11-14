for file in ~/.bashrc.d/*.bashrc;
do
source "$file"
done

export BASH_SILENCE_DEPRECATION_WARNING=1
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$GOPATH/bin:${HOME}/bin:$PATH"
export GOPATH="/Users/asetty/go"
set -o vi
bind -m vi-insert "\C-l":clear-screen
#export PS1="\[$(tput setaf 219)\]\u\[$(tput setaf 172)\]@\[$(tput setaf 33)\]\h\[$(tput setaf 162)\]:\W\[$(tput setaf 104)\]\$ \[$(tput sgr0)\]\n"
export PS1="\[\033[0;35m\][\w]\[\033[0m\] \[\033[1;32m\]\$(kubectl config current-context) (\$(kubens -c))\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]"
alias grepfiles="find . -type f | xargs grep"
alias prodLogs="logcli --addr http://loki-stack.monitoring.svc.cluster.local:3100"
alias tmux="TERM=screen-256color-bce tmux"
alias gt="git log --all --graph --oneline --decorate"
alias gu="git pull -r origin master"

# kubectl aliases and functions
alias kc="kubectl"
# Use this + awk and grep to filter as needed
alias kpg="kubectl get pods --all-namespaces -o wide"

alias hnPods="kubectl get pods --all-namespaces -o=jsonpath=\"{range .items[?(@.spec.hostNetwork)]}{.metadata.name}{'\n'}\""

function kls() {
    kubectl get pods $@
}

function kll() {
    kubectl get pods -o wide $@
}


function kssh() {
    local cmd="bash"
    if [ "$#" -gt 2 ]; then
        cmd=${3}
    fi
    if [ "$#" -gt 1 ]; then
    kubectl exec -ti --namespace=$2 "$1" -- ${cmd}
    return
    fi
    kubectl exec -ti "$1" -- ${cmd}
}

function kcat() {
    kubectl describe pods $@
}

function kuse() {
    kubectl config use-context "$1"
}

function kresources() {
    kubectl get po -o=jsonpath='{.spec.containers[0].resources}' $@
}

function stashpull() {
    git stash
    git pull --rebase origin master
    git stash apply
}


