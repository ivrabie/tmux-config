#!/usr/bin/env sh
set -eu

TPM_DIR="${HOME}/.tmux/plugins/tpm"

if [ ! -d "${TPM_DIR}" ]; then
  mkdir -p "${HOME}/.tmux/plugins"
  git clone --depth 1 "https://github.com/tmux-plugins/tpm" "${TPM_DIR}"
fi

"${TPM_DIR}/bin/install_plugins"
