#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../scripts/functions.sh

COMMENT=\#*

sudo -v

info "Installing oh-my-zsh"

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Add spaceship prompt initialization to .zshrc
# (installed through brew)
echo "source $(brew --prefix)/opt/spaceship/spaceship.zsh" >>! ~/.zshrc
