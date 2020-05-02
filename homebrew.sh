#!/bin/sh

brew tap heroku/brew && \
brew install zsh \
    git \
    jq \
    heroku \
    pyenv \
    tree \
    wget

brew cask install anki \
    docker \
    dropbox \
    google-chrome \
    java \
    qlcolorcode \
    qlmarkdown \
    slack \
    visual-studio-code \
    vlc
