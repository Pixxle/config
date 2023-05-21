# shellcheck shell=bash

shim::funcname() {
  case "${CURSHELL}" in
    zsh)
      # shellcheck disable=SC2154
      echo "${funcstack[2]}"
      ;;
    bash)
      echo "${FUNCNAME[1]}"
      ;;
  esac
}

shim::read_array() {
  case "${CURSHELL}" in
    zsh)
      echo "-A"
      ;;
    bash)
      echo "-a"
      ;;
  esac
}
