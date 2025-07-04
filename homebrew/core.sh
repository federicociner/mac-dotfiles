#!/bin/sh

brew update && \
brew install \
    fzf \
    git \
    git-delta \
    git-lfs \
    jq \
    openssl \
    pure \
    pyenv \
    pyenv-virtualenv \
    readline \
    rectangle \
    ripgrep \
    tig  \
    tree \
    uv \
    wget \
    xz \
    zplug

brew install --cask \
    iterm2 \
    visual-studio-code
