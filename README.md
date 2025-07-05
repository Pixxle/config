# Personal Dotfiles Configuration

A modern, automated dotfiles setup for macOS focused on development productivity.

## Features

- **One-command setup**: Complete installation with a single curl command
- **Neovim configuration**: Modern Lua-based setup with lazy.nvim plugin manager
- **Shell enhancements**: Modular bash/zsh functions with modern CLI tools
- **Ghostty terminal**: Custom keybindings and configuration
- **Automatic backups**: Existing configurations are safely backed up
- **Clean package management**: Organized Homebrew package installation

## Quick Start

### Automated Installation (Recommended)

```bash
curl -fsSL https://raw.githubusercontent.com/Pixxle/config/main/install.sh | bash
```

This will:
- Install Homebrew (if not present)
- Clone this repository to `~/.config`
- Install all development tools
- Set up shell integration
- Configure Neovim and Ghostty
- Backup existing configurations

### Manual Installation

```bash
git clone https://github.com/Pixxle/config.git $HOME/.config
cd $HOME/.config
./install.sh
```

## What's Included

### Development Tools
- **Languages**: Python, Rust, Node.js, TypeScript
- **Shell utilities**: fd, ripgrep, bat, fzf, eza, zoxide
- **Version control**: Git with custom aliases and functions
- **Containers**: Docker, Docker Compose, LazyDocker
- **Frontend**: ESLint, Prettier
- **Kubernetes**: kubectl, k9s
- **Infrastructure**: Terraform

### Applications
- **Editor**: Neovim with LSP and modern plugins
- **Terminal**: Ghostty with tmux-like keybindings
- **IDE**: Cursor (VS Code fork)

### Shell Configuration
- **Aliases**: Modern replacements (`cat` → `bat`, `ls` → `eza`, etc.)
- **Functions**: Git workflows, fuzzy finding, navigation helpers
- **Cross-shell**: Works with both bash and zsh

## Configuration Structure

```
.config/
├── install.sh              # Main installation script
├── ghostty/                # Terminal configuration
│   └── config
├── nvim/                   # Neovim configuration
│   ├── init.lua
│   └── lua/
└── shell/                  # Shell configuration
    ├── load.sh             # Main loader
    ├── functions.d/        # Modular functions
    └── lib/                # Utilities
```

## Customization

### Adding Personal Functions
Create or edit `~/.config/shell/functions.d/gitignored.sh` for personal/work-specific functions that won't be committed.

### Modifying Package Lists
Edit `shell/functions.d/setup.sh` to customize the packages installed during setup.

## Key Keybindings (Ghostty)

- **Splits**: `Cmd+H/J/K/L` to navigate, `Ctrl+A + S/V` to create
- **Tabs**: `Ctrl+A + 1/2/3/4` to switch, `Ctrl+A + Q` for new tab
- **Quick Terminal**: `Ctrl+Q` (global)

## Post-Installation

After installation, restart your terminal or run:
```bash
source ~/.zshrc  # or ~/.bashrc
```

## Requirements

- macOS (Intel or Apple Silicon)
- Internet connection for package downloads
- Terminal with bash or zsh

## License

MIT License - feel free to fork and customize for your own use.
