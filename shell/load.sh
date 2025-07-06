# shellcheck shell=bash

if [[ -n "${ZSH_VERSION}" ]]; then
  export CURSHELL="zsh"
  __DIR__="$( cd "$( dirname "${(%):-%N}" )" > /dev/null && pwd )"
elif [[ -n "${BASH_VERSION}" ]]; then
  export CURSHELL="bash"
  __DIR__="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null && pwd )"
else
  echo "ERROR: WHAT THE SHELL?"
fi

# shellcheck source=lib/shim.sh
source "${__DIR__}/lib/shim.sh"

# Create env.sh if it doesn't exist
if [[ ! -f "${__DIR__}/env.sh" ]]; then
  cat > "${__DIR__}/env.sh" << 'EOF'
# Environment Variables
# This file is not committed to git - safe place for API keys and secrets

# OpenAI API Key for ChatGPT integration
# export OPENAI_API_KEY="your-api-key-here"

# Other common environment variables
# export GITHUB_TOKEN="your-github-token"
# export ANTHROPIC_API_KEY="your-anthropic-key"
# export DOCKER_HOST="your-docker-host"

# Custom environment variables
# export MY_CUSTOM_VAR="value"
EOF
fi

# Source environment variables
# shellcheck source=env.sh
source "${__DIR__}/env.sh"

# loop through all function source files
function::load() {
  for file in "${__DIR__}/functions.d/"*.sh; do
    if [[ ! -f "${file}" ]]; then
      continue
    fi

    # shellcheck source=/dev/null
    source "${file}"
  done
}

function::load
unset -f "function::load"
