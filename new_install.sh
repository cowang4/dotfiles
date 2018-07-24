#!/bin/bash

function print {
  echo "### $1"
}

print "Starting Greg's System Setup Script"


DOTFILES_DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

print "Updating the dotfiles"
[ -d "$DOTFILES_DIR/.git" ] && git --work-tree="$DOTFILES_DIR" --git-dir="$DOTFILES_DIR/.git" pull origin master

print "Updating and Upgrading packages"
sudo apt-get update
yes | sudo apt-get upgrade

function apt_install {
  print "apt installing $1"
  yes | sudo apt-get install $1
}

function optional_apt_install {
  print "Do you want to install $1?"
  select yn in "Yes" "No"; do
    case $yn in
        Yes ) yes | sudo apt-get install $1; break;;
        No ) break;;
    esac
  done
}

apt_install git
ln -sfv "$DOTFILES_DIR/.gitconfig" ~
ln -sfv "$DOTFILES_DIR/.gitignore_global" ~

print "Do you want to install zsh?"
select yn in "Yes" "No"; do
  case $yn in
      Yes )
        apt_install zsh;
        ln -sfv "$DOTFILES_DIR/.aliases" ~
        ln -sfv "$DOTFILES_DIR/.exports" ~
        ln -sfv "$DOTFILES_DIR/.zshrc" ~
        print "Changing default login shell to zsh"
        chsh -s $(which zsh) $USER
        export SHELL=$(which zsh)
        git submodule init    # for zsh-git-prompt
        git submodule update
        break;;
      No ) break;;
  esac
done

apt_install neovim
ln -sfv "$DOTFILES_DIR/.vimrc" ~
# TODO add vim-plug plugin to install plugins

apt_install firefox
apt_install htop
apt_install python2
apt_install pip2
apt_install python3
apt_install pip3
apt_install thunar
apt_install sl
apt_install task
apt_install neofetch

print "Do you want to install i3?"
select yn in "Yes" "No"; do
  case $yn in
      Yes )
        apt_install i3;
        ln -sfv "$DOTFILES_DIR/i3/i3.config" "~/.config/i3/config"
        ln -sfv "$DOTFILES_DIR/i3/i3status.config" "~/.config/i3status/config"
        ln -sfv "$DOTFILES_DIR/i3/i3lock.service" "/etc/systemd/system/i3lock.service"
        apt_install nm-applet
        apt_install rofi
        apt_install breeze-icon-theme
        apt_install lxappearence
        apt_install kde-style-breeze-qt4
        apt_install arandr
        apt_install thunar
        apt_install compton #TODO config
        apt_install dunst
        break;;
      No ) break;;
  esac
done

optional_apt_install shutter
optional_apt_install libreoffice
optional_apt_install spotifiy-client #TODO fix
optional_apt_install signal-desktop
optional_apt_install atom #TODO fix

#TODO rust, fd, rg, exa
