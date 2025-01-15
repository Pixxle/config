
# Fuzzy vim finder
alias vl='fd --type f --hidden --exclude .git --exclude node_modules | fzf-tmux -p | xargs nvim'

# Fuzzy cd finder
alias cl='cd $(find . -t directory --ignore-file $HOME/.config/shell/dirignore | fzf)'


