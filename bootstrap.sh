# one-time run
echo "macOS bootstrap"

# terminal: change zhs to bash
chsh -s /bin/bash

# terminal - hide 'last login'
touch ~/.hushlogin

# terminal - hide 'The default interactive shell is now zsh.'
touch ~/.bash_profile && echo "export BASH_SILENCE_DEPRECATION_WARNING=1" >> ~/.bash_profile

# install homebrew
# https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install vim
brew install vim
