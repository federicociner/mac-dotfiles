#!/bin/sh

brew tap heroku/brew && \
brew install \
    zsh \
    git \
    jq \
    heroku \
    pyenv \
	pyenv-virtualenv \
    tree \
    wget

brew tap homebrew/cask-fonts && \
brew cask install \
    adoptopenjdk/openjdk/adoptopenjdk8 \
    anki \
    docker \
    dropbox \
    font-meslolg-nerd-font \
    font-saucecodepro-nerd-font \
    font-ubuntu-nerd-font \
    google-chrome \
    java11 \
	mactex \
    maven \
	postman \
	qlcolorcode \
    qlmarkdown \
    slack \
    visual-studio-code \
    vlc
