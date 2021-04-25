#!/bin/sh

brew update && \
brew tap homebrew/cask-versions && \
brew tap heroku/brew && \
brew install \
    fzf \
    git \
    git-delta \
    java \
    jesseduffield/lazydocker/lazydocker \
    jq \
    heroku \
    maven \
    pyenv \
    pyenv-virtualenv \
    sqlite \
    tig \
    tree \
    wget \
    zsh

brew tap homebrew/cask-fonts && \
brew install \
    anki \
    browserstacklocal \
    db-browser-for-sqlite \
    docker \
    dropbox \
    font-meslo-lg-nerd-font \
    google-chrome \
    iterm2 \
    mactex \
    postman \
    slack \
    visual-studio-code \
    vlc
