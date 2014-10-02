#!/bin/sh

# Homesick
apt-get install rubygems-integration -y
gem install homesick
apt-get install git -y
homesick clone git://github.com/KevinPike/dotfiles.git
homesick pull --all
homesick symlink dotfiles

# Utilities
apt-get install tmux
