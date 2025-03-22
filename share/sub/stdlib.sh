#!/usr/bin/env bash

# Prints the given message to STDERR and exits non zero.
#
# $1 - Message
abort() {
  warn "$(program_name): $1"
  exit 1
}
export -f abort

# Prints the current program name, eg: "sub" or "sub help".
program_name() {
  printf "%s\\n" "${0//*\/sub-/sub }"
}
export -f program_name

# Prints the given message to STDERR
#
# $1 - Message
warn() {
  echo "${1:-}" >&2
}
export -f warn

getopt() {
  "$_SUB_ROOT/contrib/getopt" "$@"
}
export -f getopt
