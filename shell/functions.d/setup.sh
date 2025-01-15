# shellcheck shell=bash

_query_setup() {
  # Call this function with _query_setup("aws")
  ALL_PKG_INSTALLED=true
  for pkg in "$@"
  do
    if ! command -v "$pkg" > /dev/null; then
      ALL_PKG_INSTALLED=false
    fi
  done
  if [ "$ALL_PKG_INSTALLED" = "true" ]; then return 0; fi

  echo "We've noticed one or more missing dependencies required to run the called command"
  echo "Would you like to install commonly used tools?[y/n] "
  while true; do
    read -r yn # I'm using simple read instead of inline read -p since that is flaky in zsh since a few years back
    case $yn in
        [Yy]* ) install-common-tools; return 0;;
        [Nn]* ) return 2;;
        * ) echo "Please answer [y]es or [n]o.";;
    esac
done
}

# TODO: 
# Extend this to not only use brew but detect package manager available
# This should configure neovim itself and link dotfiles etc automatically also
install-common-tools() {
  declare -a DefaultPackages=(
        "jq" 
        "python"
        "go"
        "hashicorp/tap/terraform"
        "git"
        "fzf"
        "fd"
        "tmux"
        "neovim"
        "zsh"
        "ripgrep"
        "bat"
        "eza"
        "homebrew/cask-fonts"
        "iterm2"
        "htop"
        "kubectl"
        "nvm"
        "npm"
        "lazygit"
        "zoxide"
        "tokei"
        "erdtree"
        "ghostty"
        "yazi"
        "visual-studio-code"
    )

  for pkg in "${DefaultPackages[@]}"; do
    if [[ $pkg == *"tap"* ]]; then
      pk=$(echo "$pkg" | rev | cut -d "/" -f 1 | rev)
      tap=$(echo "$pkg" | rev | cut -d "/" -f 1 -f 2 | rev)
      if ! command -v "$pk" > /dev/null; then
        echo "$pk not found, installing..."
        brew tap "$tap"
        brew install "$pkg"
      fi
    else
      if ! command -v "$pkg" > /dev/null; then
        echo "$pkg not found, installing..."
        brew install "$pkg"
      fi
    fi
  done
}

setup-terminal() {
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    echo ". $HOME/.config/shell/load.sh" >> $HOME/.zshrc
    echo "source-file ~/.config/tmux/tmux.conf" >> $HOME/.tmux.conf
}

setup-kubectx() {
    brew install krew
    kubectl krew install ctx
    kubectl krew install ns
}

