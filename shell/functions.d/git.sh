alias gitclean='git branch --merged | /usr/bin/grep -v \* | xargs git branch -D'
alias gitcleanall='git branch | grep -v "master|main" | xargs git branch -D'

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
  git -c color.ui=always diff --name-only |
  fzf --multi \
    --preview 'git diff --color=always -- {-1}' \
    --bind 'ctrl-a:execute(git add {+})+reload(git diff --name-only)' \
    --bind 'ctrl-r:execute(git restore --staged {+})+reload(git diff --name-only)' \
    --bind 'ctrl-d:execute(git restore {+})+reload(git diff --name-only)' \
    --bind 'enter:accept'
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
