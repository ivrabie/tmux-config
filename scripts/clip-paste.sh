#!/usr/bin/env sh
set -eu

if command -v wl-paste >/dev/null 2>&1; then
  wl-paste
elif command -v xclip >/dev/null 2>&1; then
  xclip -selection clipboard -out
elif command -v pbpaste >/dev/null 2>&1; then
  pbpaste
else
  tmux save-buffer -
fi
