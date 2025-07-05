# shellcheck shell=bash

# Setup dotfiles and configuration linking
setup_dotfiles() {
    local config_dir="$HOME/.config"
    
    echo "Setting up dotfiles and configurations..."
    
    # Backup existing configurations
    _backup_existing_configs
    
    # Link specific configurations
    _link_ghostty_config
    _link_nvim_config
    
    # Setup gitignored shell functions
    _setup_gitignored_functions
    
    echo "Dotfiles setup complete!"
}

# Backup existing configurations
_backup_existing_configs() {
    local backup_dir="$HOME/.config_backup_$(date +%Y%m%d_%H%M%S)"
    
    # List of configurations to backup
    local configs=(
        "$HOME/.config/ghostty"
        "$HOME/.config/nvim"
        "$HOME/.zshrc"
        "$HOME/.bashrc"
        "$HOME/.bash_profile"
    )
    
    local needs_backup=false
    for config in "${configs[@]}"; do
        if [ -e "$config" ] && [ ! -L "$config" ]; then
            needs_backup=true
            break
        fi
    done
    
    if [ "$needs_backup" = true ]; then
        echo "Creating backup at $backup_dir..."
        mkdir -p "$backup_dir"
        
        for config in "${configs[@]}"; do
            if [ -e "$config" ] && [ ! -L "$config" ]; then
                local config_name=$(basename "$config")
                cp -r "$config" "$backup_dir/$config_name"
                echo "Backed up $config"
            fi
        done
    fi
}

# Link Ghostty configuration
_link_ghostty_config() {
    local ghostty_config_dir="$HOME/.config/ghostty"
    local source_config="$HOME/.config/ghostty/config"
    
    if [ ! -L "$ghostty_config_dir" ]; then
        echo "Ghostty configuration already in place"
    else
        echo "Ghostty configuration linked"
    fi
}

# Link Neovim configuration
_link_nvim_config() {
    local nvim_config_dir="$HOME/.config/nvim"
    local source_config="$HOME/.config/nvim"
    
    if [ ! -L "$nvim_config_dir" ]; then
        echo "Neovim configuration already in place"
    else
        echo "Neovim configuration linked"
    fi
}

# Setup gitignored shell functions file
_setup_gitignored_functions() {
    local gitignored_file="$HOME/.config/shell/functions.d/gitignored.sh"
    
    if [ ! -f "$gitignored_file" ]; then
        echo "Creating gitignored shell functions file..."
        cat > "$gitignored_file" << 'EOF'
# shellcheck shell=bash

# Personal/work-specific functions that should not be committed
# Add your private functions, aliases, and environment variables here

# Example:
# export WORK_API_KEY="your-key-here"
# alias work-connect="ssh user@work-server"

EOF
        echo "Created $gitignored_file"
    else
        echo "Gitignored shell functions file already exists"
    fi
}