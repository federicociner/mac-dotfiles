#!/bin/sh

brew tap heroku/brew && \
brew install zsh \
    git \
    jq \
    heroku \
    pyenv \
    tree \
    wget

brew tap homebrew/cask-fonts && \
brew cask install anki \
    docker \
    dropbox \
    font-meslolg-nerd-font \
    font-saucecodepro-nerd-font \
    font-ubuntu-nerd-font \
    google-chrome \
    java \
	mactex \
	qlcolorcode \
    qlmarkdown \
    slack \
    visual-studio-code \
    vlc
