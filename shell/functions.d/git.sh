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

# remove alias if it exists
if alias gc >/dev/null 2>&1; then
    unalias gc
fi

function gc() {
    # Check if there are staged changes to commit
    if git diff --cached --quiet; then
        echo "No staged changes to commit. Please stage your changes first with 'git add'."
        return 1
    fi
    
    # Check if OpenAI API key is set
    if [[ -z "$OPENAI_API_KEY" ]]; then
        echo "Error: OPENAI_API_KEY environment variable is not set."
        echo "Please add your OpenAI API key to ~/.config/shell/env.sh"
        return 1
    fi
    
    echo "Generating commit message with ChatGPT..."
    
    # Get git diff and status for context (staged changes only)
    local git_diff=$(git diff --cached --no-color)
    local git_status=$(git status --porcelain)
    
    # Prepare the prompt for ChatGPT
    local prompt="You are a helpful assistant that writes conventional commit messages. Based on the git diff and status below, write a single line commit message using conventional commit format (feat:, fix:, chore:, docs:, style:, refactor:, test:, etc.). Be concise and descriptive.

Git Status:
$git_status

Git Diff:
$git_diff

The first line should contain the type of change, such as feature, test, chore etc.
Following the second line should be a summary of changes performed.
Following the summary should be a list with all changes, one or more list items per file.
The list should specify what file was modified and what changes where made.
Respond with only the commit message, no explanation or additional text.
"
    
    # Call ChatGPT API
    local commit_message=$(curl -s -X POST "https://api.openai.com/v1/chat/completions" \
        -H "Content-Type: application/json" \
        -H "Authorization: Bearer $OPENAI_API_KEY" \
        -d "{
            \"model\": \"gpt-4.1-nano\",
            \"messages\": [{\"role\": \"user\", \"content\": $(echo "$prompt" | jq -R -s .)}],
            \"max_tokens\": 4096,
            \"temperature\": 0.7
        }" | jq -r '.choices[0].message.content // empty')
    
    # Check if API call was successful
    if [[ -z "$commit_message" ]]; then
        echo "Error: Failed to generate commit message from ChatGPT API"
        return 1
    fi
    
    # Create temporary file with commit message
    local temp_file=$(mktemp)
    echo "$commit_message" > "$temp_file"
    
    # Store original message and file timestamp for comparison
    local original_message="$commit_message"
    local original_timestamp=$(stat -f "%m" "$temp_file")
    
    # Open vim to edit the commit message
    vim "$temp_file"
    local vim_exit_code=$?
    
    # Check if vim exited abnormally or file wasn't modified
    local new_timestamp=$(stat -f "%m" "$temp_file")
    if [[ $vim_exit_code -ne 0 ]] || [[ $original_timestamp -eq $new_timestamp ]]; then
        echo "Commit aborted: vim exited without saving"
        rm "$temp_file"
        return 1
    fi
    
    # Read the edited commit message
    local edited_message=$(cat "$temp_file")
    rm "$temp_file"
    
    # Check if user left the message empty
    if [[ -z "$edited_message" || "$edited_message" == "" ]]; then
        echo "Commit aborted: empty commit message"
        return 1
    fi
    
    # Commit staged changes
    git commit -m "$edited_message"
    
    echo "Committed with message: $edited_message"
}
