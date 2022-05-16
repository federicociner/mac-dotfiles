#!/bin/sh

brew update && \
brew tap homebrew/cask-versions && \
brew install \
    fzf \
    git \
    git-delta \
    jq \
    openssl \
    readline \
    tig  \
    tree \
    wget \
    xz \
    zsh

brew tap homebrew/cask-fonts && \
brew install \
    font-meslo-lg-nerd-font \
    iterm2 \
    mactex \
    visual-studio-code \
    vlc
