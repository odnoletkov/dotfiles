#!/bin/sh
set -e

sudo chsh -s /usr/bin/zsh "$USER"

mv .git "$HOME"
cd "$HOME"
git config status.showUntrackedFiles no
git checkout -- .
git submodule update --init

sudo apt-get update && sudo apt-get install -y tmux
