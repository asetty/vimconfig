#!/usr/bin/env bash

# install homebrew
if ! command -v brew &> /dev/null; then
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# install vundle
if [ ! -f ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

brew install tmux
brew install golang
brew install kubectl
brew install fzf

mkdir ~/.bashrc.d
chmod 700 ~/.bashrc.d

cp .vimrc ~/.vimrc
cp .tmux.conf ~
cp .bashrc ~
