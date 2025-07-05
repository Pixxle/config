# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles configuration repository containing:
- **Neovim configuration** (`nvim/`) - Lua-based configuration with lazy.nvim plugin manager
- **Shell configuration** (`shell/`) - Bash/Zsh shell functions and utilities
- **Ghostty terminal configuration** (`ghostty/`) - Terminal emulator settings
- **Setup automation** - Shell scripts for installing common development tools

## Architecture

### Neovim Configuration (`nvim/`)
- Entry point: `init.lua` - sets up lazy.nvim plugin manager
- Core configuration: `lua/core/` - options, keymaps, and plugin configurations
- Plugin configurations: `lua/core/plugin_config/` - individual plugin setups
- TypeScript implementation: `lua/impl/tsconfig.lua`

### Shell Configuration (`shell/`)
- `load.sh` - Main loader that sources all shell functions
- `functions.d/` - Modular shell functions organized by category:
  - `setup.sh` - Tool installation and dependency management
  - `general.sh`, `git.sh`, `kubernetes.sh`, etc. - Domain-specific utilities
- `lib/shim.sh` - Shell compatibility layer

### Configuration Management
- Automated setup via `install.sh` script
- Installs development tools via Homebrew including: neovim, fzf, fd, ripgrep, bat, eza, ghostty
- Automatically backs up existing configurations
- Links dotfiles and sets up shell integration

## Setup Commands

**One-command setup** (recommended):
```bash
curl -fsSL https://raw.githubusercontent.com/Pixxle/config/main/install.sh | bash
```

**Manual setup** (if needed):
```bash
git clone https://github.com/Pixxle/config.git $HOME/.config
cd $HOME/.config
./install.sh
```

## Development Tools

The configuration includes setup for:
- **Neovim**: Configured with LSP, formatters, and modern plugins
- **Shell utilities**: fd, ripgrep, bat, fzf, eza, zoxide
- **Terminal**: Ghostty with tmux-like keybindings
- **Languages**: Go, Python, Node.js/npm, Terraform

## Key Features

- **One-command setup**: Complete installation with a single curl command
- **Automated backups**: Existing configurations are backed up before setup
- **Modular shell functions**: Each category of functionality is separated into its own file
- **Dependency checking**: `_query_setup()` function prompts for missing tool installation
- **Cross-shell compatibility**: Works with both bash and zsh
- **Modern terminal experience**: Ghostty with split management and tab navigation
- **Clean package management**: Organized installation of regular packages, taps, and casks
