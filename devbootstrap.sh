#!/bin/sh

# Homesick
apt-get install rubygems-integration -y
gem install homesick
apt-get install git -y
homesick clone git://github.com/KevinPike/dotfiles.git
homesick pull --all
homesick symlink dotfiles

## Utilities
apt-get install tmux

# Docker
apt-get -y install docker.io
ln -sf /usr/bin/docker.io /usr/local/bin/docker
sed -i '$acomplete -F _docker docker' /etc/bash_completion.d/docker.io
update-rc.d docker.io defaults
