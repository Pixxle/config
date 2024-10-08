alias cd='z'

alias grep='rg'
alias cat='bat'
alias find='fd'
alias l='eza'
alias ls='eza -la'

alias vim='nvim'
alias v='nvim'
alias config='nvim ~/.config/'

alias k='kubectl'
alias kc='kubectl ctx'
alias kn='kubectl ns'
alias kreboot='k rollout restart deploy'

alias vl='fd --type f --hidden --exclude .git --exclude node_modules | fzf-tmux -p | xargs nvim'
alias cl='cd $(find . -t directory --ignore-file $HOME/.config/shell/dirignore | fzf)'

alias gitll='git log --pretty=format:"%C(yellow)%h%Cred%d\ %Creset%s%Cblue\ [%cn]" --decorate --numstat'
alias gitls='git log --pretty=format:"%C(green)%h\ %C(yellow)[%ad]%Cred%d\ %Creset%s%Cblue\ [%cn]" --decorate --date=relative'
alias gfz='git branch -a | fzf | xargs git checkout'
alias gitclean='git branch --merged | /usr/bin/grep -v \* | xargs git branch -D'
alias lg='lazygit'

alias pretty='prettier --write "**/*.{ts, tsx, js, jsx}"'

alias tree='erd'
alias config-source='source ~/.config/shell/load.sh'

alias chrome-debug='sudo /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222'

eval "$(zoxide init zsh)"


# Path: if work.sh does not exist, create it
# this is separated to ensure that i don't commit my work.sh file
workfile=~/.config/shell/functions.d/work.sh
if [ ! -f $workfile ]; then
  touch $workfile
fi
source $workfile

