#!/bin/sh

brew tap heroku/brew && \
brew install zsh \
    git \
    tree \
    heroku

brew cask install docker \
    dropbox \
    google-chrome \
    java \
    qlcolorcode \
    qlmarkdown \
    visual-studio-code \
