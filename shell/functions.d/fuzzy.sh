
# Fuzzy vim finder
alias vl='fd --type f --hidden --exclude .git --exclude node_modules | fzf-tmux -p | xargs nvim'

# Fuzzy cd finder
alias cl='cd $(find . -t directory --ignore-file $HOME/.config/shell/dirignore | fzf)'

# Fuzzy history search
fzf_history() {
  local selected
  selected=$(fc -l 1 | awk '{$1=""; print substr($0,2)}' | sort | uniq | fzf --tac --no-sort)
  if [[ -n "$selected" ]]; then
    BUFFER="$selected"
    CURSOR=$#BUFFER
    zle redisplay
  fi
}
zle -N fzf_history
bindkey '^R' fzf_history


