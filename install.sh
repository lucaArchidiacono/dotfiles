#!/bin/bash

# Install git
brew install git

# Install bash-completion -> used for autocompletion
brew install bash-completion

# Install gh -> command line tool from github
brew install gh
gh auth login
# Install extension to gh-cli
gh extension install dlvhdr/gh-dash

# Install fuzzy search tool
brew install fzf

# Install Aerospace window manager
brew install --cask nikitabobko/tap/aerospace

# Install ghostty terminal
brew install --cask ghostty

# Install zoxide -> smarter `cd`
brew install zoxide

# Install new symbol-fonts (better looking yazi)
brew install font-symbols-only-nerd-font
# Install new fonts
brew install font-hack-nerd-font

# Install FFMPEG -> always needed
brew install ffmpeg

# Install for yazi (Finder inside Terminal) - and dependencies
brew install yazi sevenzip jq poppler fd ripgrep imagemagick 

# Install bun (faster JS runtime)
brew install oven-sh/bun/bun

# Install fast Node Manager
brew install fnm

# Install atuin
brew install atuin
brew services start atuin

# Install border highlight
brew tap FelixKratz/formulae
brew install borders
brew services start felixkratz/formulae/borders

# Install neovim
brew install neovim

# Install xcode-build-server to communicate swift-lsp with xcode
brew install xcode-build-server

# Install Multiplexing manager
brew install tmux
