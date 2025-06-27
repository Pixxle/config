alias k='kubectl'
alias kc='kubectl ctx'
alias kn='kubectl ns'
alias kreboot='k rollout restart deploy'

function ks() {
    kubectl ctx $1 && kubectl ns $1
}
