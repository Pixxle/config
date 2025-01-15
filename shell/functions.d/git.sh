alias gitll='git log --pretty=format:"%C(yellow)%h%Cred%d\ %Creset%s%Cblue\ [%cn]" --decorate --numstat'
alias gitls='git log --pretty=format:"%C(green)%h\ %C(yellow)[%ad]%Cred%d\ %Creset%s%Cblue\ [%cn]" --decorate --date=relative'
alias gitclean='git branch --merged | /usr/bin/grep -v \* | xargs git branch -D'
alias lg='lazygit'

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
