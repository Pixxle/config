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

# Automatically load yabai on startup
. $HOME/.config/yabai/yabairc
