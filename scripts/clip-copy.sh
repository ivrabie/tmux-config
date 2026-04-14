#!/usr/bin/env sh
set -eu

if command -v wl-copy >/dev/null 2>&1; then
  wl-copy
elif command -v xclip >/dev/null 2>&1; then
  xclip -selection clipboard -in
elif command -v pbcopy >/dev/null 2>&1; then
  pbcopy
fi
