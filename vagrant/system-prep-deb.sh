#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

## Developer tools
sudo apt-get install -y vim git
# Some of my more personal stuff. Comment it out if you do not like it
sudo apt-get install -y zsh tree tmux curl
pushd ~
git clone https://github.com/mgla/dotfiles /home/vagrant/dotfiles && sudo -u vagrant /home/vagrant/dotfiles/deploy
popd
sudo chsh vagrant -s /bin/zsh

## Dependencies
sudo apt-get install -y libjson-perl
