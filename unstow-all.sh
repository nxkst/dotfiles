#!/bin/bash
cd "$(dirname "$0")" || exit 1

echo "=== Unstowing nxkst/dotfiles ==="

PACKAGES=(alacritty bspwm picom polybar rofi sxhkd zsh tmux xinit)

for pkg in "${PACKAGES[@]}"; do
    echo "→ Unstowing $pkg..."
    stow --verbose --target="$HOME" -D "$pkg"
done

echo "✅ All unstowed."
