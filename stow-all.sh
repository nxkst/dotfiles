#!/bin/bash
cd "$(dirname "$0")" || exit 1

echo "=== Stowing nxkst/dotfiles ==="

PACKAGES=(alacritty bspwm picom polybar rofi sxhkd zsh tmux xinit)

for pkg in "${PACKAGES[@]}"; do
    echo "→ Stowing $pkg..."
    stow --verbose --target="$HOME" --restow "$pkg"
done

echo "✅ Done! Run 'source ~/.zshrc' to reload."
