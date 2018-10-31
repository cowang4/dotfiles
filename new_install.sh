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
sudo snap refresh

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

function optional_snap_install {
  print "Do you want to install $1?"
  select yn in "Yes" "No"; do
    case $yn in
        Yes ) yes | sudo snap install $1; break;;
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
#TODO bash

apt_install neovim
ln -sfv "$DOTFILES_DIR/.vimrc" ~
mkdir "$HOME/.local/share/nvim/site/autoload"
curl -fLo "$HOME/.local/share/nvim/site/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sfv "$HOME/.vimrc" "$HOME/.config/nvim/init.vim"

apt_install htop
apt_install python2
apt_install pip2
apt_install python3
apt_install pip3
apt_install sl
apt_install task
apt_install neofetch
apt_install lolcat

print "Do you want to install i3?"
select yn in "Yes" "No"; do
  case $yn in
      Yes )
        apt_install i3;
        mkdir "$HOME/.config/i3"
        ln -sfv "$DOTFILES_DIR/i3/i3.config" "$HOME/.config/i3/config"
        mkdir "$HOME/.config/i3status"
        ln -sfv "$DOTFILES_DIR/i3/i3status.config" "$HOME/.config/i3status/config"
        ln -sfv "$DOTFILES_DIR/i3/i3lock.service" "/etc/systemd/system/i3lock.service"
        apt_install nm-applet
        apt_install rofi
        apt_install breeze-icon-theme
        apt_install lxappearence
        apt_install kde-style-breeze-qt4
        apt_install arandr
        apt_install thunar
        apt_install compton
        ln -sfv "$DOTFILES_DIR/compton.conf" "$HOME/.config/compton.conf"
        apt_install dunst
        sudo ln -sfv "$DOTFILES_DIR/i3/i3lock.service" "/etc/systemd/system/i3lock.service"
        sudo systemctl enable i3lock
        break;;
      No ) break;;
  esac
done

optional_apt_install firefox
optional_apt_install shutter
optional_apt_install libreoffice
optional_snap_install spotifiy
optional_apt_install signal-desktop
sudo add-apt-repository ppa:webupd8team/atom
optional_apt_install atom

print "Installing Rust, fd, rg, exa, bpb, glitchcat"
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
cargo install cargo-update
cargo install fd-find
cargo install ripgrep
cargo install exa
cargo install bpb
cargo install glitchcat
cargo install bat

print "Installing fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
$HOME/.fzf/install

print "Do you want to install the backup script?"
select yn in "Yes" "No"; do
  case $yn in
      Yes )
        print "Installing cron, rsync, backup script"
        apt_install rsync
        apt_install cron
        ln -sfv "$DOTFILES_DIR/backup.sh" "$HOME/.backup.sh"
        if rg -q "backup.sh" /etc/crontab; then
          print "cron job already active"
        else
          print "Adding cron job"
          sudo su -c 'echo "0 22 * * * greg $HOME/.backup.sh" >> /etc/crontab'
        fi
        break;;
      No ) break;;
  esac
done

sudo add-apt-repository ppa:scribus/ppa
optional_apt_install scribus-ng
optional_snap_install tldr

sudo ln -sfv $HOME/dotfiles/diff-so-fancy /usr/local/bin/diff-so-fancy
optional_apt_install fonts-hack-ttf

print "Done Greg's setup script. You should probably restart the computer."
