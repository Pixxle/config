alias grep='rg'
alias cat='bat'
alias find='fd'
alias ls='exa'
alias of='fd --type f --hidden --exclude .git --exclude node_modules | fzf-tmux -p | xargs nvim'
alias cl='cd $(find . -t directory --ignore-file $HOME/.config/shell/dirignore | fzf)'
alias vim='nvim'
alias v='nvim'
alias pretty='prettier --write "**/*.{ts, tsx, js, jsx}"'
alias gitls='git log --pretty=format:"%C(green)%h\ %C(yellow)[%ad]%Cred%d\ %Creset%s%Cblue\ [%cn]" --decorate --date=relative'
alias gitll='git log --pretty=format:"%C(yellow)%h%Cred%d\ %Creset%s%Cblue\ [%cn]" --decorate --numstat'
alias config='nvim ~/.config/'
alias cdconf='cd ~/.config/'

function pplog() {
  kubectl logs -nprod --follow $1
}

function ppgrep() {
  kubectl get pods -nprod | grep $1
}
