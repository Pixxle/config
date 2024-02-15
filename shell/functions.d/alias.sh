alias grep='rg'
alias cat='bat'
alias find='fd'
alias ls='eza'

alias vim='nvim'
alias v='nvim'
alias config='nvim ~/.config/'

alias k='kubectl'
alias kc='kubectl ctx'
alias kn='kubectl ns'
alias kreboot='k rollout restart deploy'

alias of='fd --type f --hidden --exclude .git --exclude node_modules | fzf-tmux -p | xargs nvim'
alias cl='cd $(find . -t directory --ignore-file $HOME/.config/shell/dirignore | fzf)'

alias gitll='git log --pretty=format:"%C(yellow)%h%Cred%d\ %Creset%s%Cblue\ [%cn]" --decorate --numstat'
alias gitls='git log --pretty=format:"%C(green)%h\ %C(yellow)[%ad]%Cred%d\ %Creset%s%Cblue\ [%cn]" --decorate --date=relative'
alias gitclean='git branch --merged | /usr/bin/grep -v \* | xargs git branch -D'
alias lg='lazygit'

alias pretty='prettier --write "**/*.{ts, tsx, js, jsx}"'
