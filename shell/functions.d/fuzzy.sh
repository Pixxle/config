
# Fuzzy history search
fzf_history() {
  local selected
  selected=$(fc -l 1 | awk '{$1=""; print substr($0,2)}' | sort | uniq | fzf --exact --tac)
  if [[ -n "$selected" ]]; then
    BUFFER="$selected"
    CURSOR=$#BUFFER
    zle redisplay
  fi
}
zle -N fzf_history
bindkey '^R' fzf_history

