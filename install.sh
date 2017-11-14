#!/usr/bin/env bash
DOTFILES_DIR=$(pwd)

[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

ln -sfv "$DOTFILES_DIR/.aliases" ~
ln -sfv "$DOTFILES_DIR/.ansiweatherrc" ~
ln -sfv "$DOTFILES_DIR/.exports" ~
ln -sfv "$DOTFILES_DIR/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/.gitignore_global" ~
ln -sfv "$DOTFILES_DIR/.vimrc" ~
ln -sfv "$DOTFILES_DIR/.zshrc" ~
ln -sfv "$DOTFILES_DIR/i3/i3.config" "$HOME/.config/i3/config"
ln -sfv "$DOTFILES_DIR/i3/i3status.config" "$HOME/.config/i3status/config"
ln -sfv "$DOTFILES_DIR/i3/i3lock.service" "/etc/systemd/system/i3lock.service"
ln -sfv "$DOTFILES_DIR/.tmux.conf" "$HOME/.tmux.conf"
ln -sfv "$DOTFILES_DIR/dunstrc" "$HOME/.config/dunst/dunstrc"
