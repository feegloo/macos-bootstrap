# one-time run
echo "macOS bootstrap"

# terminal: change zhs to bash
chsh -s /bin/bash

# terminal - hide 'last login'
touch ~/.hushlogin

# install homebrew
# https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install python
brew install python
echo "alias python=/usr/bin/python3" >> ~/.bash_profile

# install pip
brew install pip
echo "alias pip=/usr/bin/pip3" >> ~/.bash_profile
