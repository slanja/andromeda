#!/bin/bash

# Define the source and target directories
DOTFILES_DIR="$HOME/.dotfiles"
CONFIG_DIR="$HOME/.config"
WALLPAPERS_DIR="$HOME/wallpapers"

# Create the wallpapers directory
mkdir -p "$WALLPAPERS_DIR"

# Function to create symlinks for a directory
create_symlink() {
    local source="$1"
    local target="$2"

    if [ -e "$target" ]; then
        echo "Target $target already exists. Removing it..."
        rm -rf "$target"  # Remove the existing file or directory
    fi

    ln -s "$source" "$target"
    echo "Created symlink: $target -> $source"
}

# Symlink home directory files
create_symlink "$DOTFILES_DIR/.vscode" "$HOME/.vscode"
create_symlink "$DOTFILES_DIR/.themes" "$HOME/.themes"
create_symlink "$DOTFILES_DIR/.icons" "$HOME/.icons"

# Symlink config directories directly
create_symlink "$DOTFILES_DIR/config/hypr" "$CONFIG_DIR/hypr"
create_symlink "$DOTFILES_DIR/config/rofi" "$CONFIG_DIR/rofi"
create_symlink "$DOTFILES_DIR/config/spicetify" "$CONFIG_DIR/spicetify"
create_symlink "$DOTFILES_DIR/config/nautilus" "$CONFIG_DIR/nautilus"
create_symlink "$DOTFILES_DIR/config/kitty" "$CONFIG_DIR/kitty"
create_symlink "$DOTFILES_DIR/config/gtk-3.0" "$CONFIG_DIR/gtk-3.0"
create_symlink "$DOTFILES_DIR/config/waybar" "$CONFIG_DIR/waybar"

echo "Dotfiles installation complete!"