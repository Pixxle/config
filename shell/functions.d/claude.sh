install_claude_mcp() {
    echo "Installing Claude..."
    # Add your installation commands here
    claude mcp add context7 -- npx -y @upstash/context7-mcp
    claude mcp add sequential-thinking npx -- -y @modelcontextprotocol/server-sequential-thinking
    claude mcp add serena -- uvx --from git+https://github.com/oraios/serena serena-mcp-server --context ide-assistant --project $(pwd)
    echo "Claude installed successfully."
}

alias claude-yolo='claude --dangerously-skip-permissions'
