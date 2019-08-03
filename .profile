export TERM=xterm-256color
export VISUAL=nvim
export EDITOR="$VISUAL"
export GPG_TTY=$(tty)
export NNN_USE_EDITOR=1
export NNN_DE_FILE_MANAGER=thunar
export NNN_COPIER="$HOME/dotfiles/copier.sh"
export ONI_NEOVIM_PATH="/usr/bin/nvim"

export GOPATH="$HOME/Downloads/go"
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH:$HOME/Downloads/Velocidrone1.12:/usr/local/go/bin:${GOPATH//://bin:}/bin:/opt/betaflight/betaflight-configurator:/home/linuxbrew/.linuxbrew/bin"

# include Mycroft commands
source ~/.profile_mycroft

# include private profile
source ~/.private_profile
