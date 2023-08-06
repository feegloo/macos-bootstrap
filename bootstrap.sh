# one-time run
echo "macOS bootstrap"

# terminal: change zsh to bash
chsh -s /bin/bash

# terminal - hide 'last login'
touch ~/.hushlogin

# install homebrew
# https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Run these two commands in your terminal to add Homebrew to your PATH:
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.bash_profile
eval "$(/opt/homebrew/bin/brew shellenv)"
