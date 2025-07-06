# My Dotfiles

This is my personal macOS development setup. It sets up everything I need to be productive.

## Installation

```bash
curl -fsSL https://raw.githubusercontent.com/Pixxle/config/main/install.sh | bash
```

That's it. The script will backup your existing config and install everything.

## What You Get

**Development stuff:**
- Neovim with LSP and plugins
- Docker, TypeScript, Python, Rust tooling
- Git aliases and fuzzy search functions
- Modern shell tools (ripgrep, fd, bat, etc.)

**Terminal setup:**
- Ghostty with tmux-style keybindings
- Shell functions for common tasks
- Aliases for better defaults

**Apps:**
- Cursor editor
- Various CLI tools for development

## Customization

Want to add your own functions? Edit `~/.config/shell/functions.d/gitignored.sh` - it won't be committed.

Need different packages? Modify the lists in `shell/functions.d/setup.sh`.

## After Install

Restart your terminal or run `source ~/.zshrc` and you're good to go.

---

*macOS only. Feel free to fork and make it your own.*
