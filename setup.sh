#!/usr/bin/env bash

set -euo pipefail

REPO_RAW="https://raw.githubusercontent.com/zakrzaq/min-fyle/main"

# List of files to download and their target locations
declare -A FILES=(
  [".zshrc"]="$HOME/.zshrc"
  [".bashrc"]="$HOME/.bashrc"
  [".aliases"]="$HOME/.aliases"
  [".gitconfig"]="$HOME/.gitconfig"
  ["nvim/init.lua"]="$HOME/.config/nvim/init.lua"
)

# Create directories if needed and download files
for path in "${!FILES[@]}"; do
  local_path="${FILES[$path]}"
  remote_url="$REPO_RAW/$path"

  echo "📥 Downloading $remote_url → $local_path"
  mkdir -p "$(dirname "$local_path")"
  curl -fsSL "$remote_url" -o "$local_path"
done

echo "✅ All files downloaded and placed."

# Optional: Source .bashrc or .zshrc if interactive
if [[ $- == *i* ]]; then
  if [[ -n "${ZSH_VERSION:-}" ]]; then
    echo "🔁 Sourcing .zshrc"
    source "$HOME/.zshrc"
  elif [[ -n "${BASH_VERSION:-}" ]]; then
    echo "🔁 Sourcing .bashrc"
    source "$HOME/.bashrc"
  fi
fi
