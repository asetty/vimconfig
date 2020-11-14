#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
brew install tmux
brew install golang
brew install kubectl
brew install fzf

mkdir ~/.bashrc.d
chmod 700 ~/.bashrc.d

cp packvimrc ~/.vimrc
cp .tmux.conf ~
cp .bashrc ~
