function gdd() {
    local selected=$(git branch | fzf)
    selected=${selected// /}
    if [ -n "$selected" ]; then
        git branch -D "$selected"
    else
        echo "No branch selected, aborting..."
    fi
}

# remove alias if it exists
if alias gd >/dev/null 2>&1; then
    unalias gd
fi
function gd() {
  preview="git diff $@ --color=always -- {-1}"
  git diff $@ --name-only | fzf -m --ansi --preview $preview
}

if alias gs >/dev/null 2>&1; then
    unalias gs
fi
function gs() {
    local selected=$(git branch | fzf)
    selected=${selected// /}
    if [ -n "$selected" ]; then
        git checkout "$selected"
        git pull
    else
        echo "No branch selected, aborting..."
    fi
}
