# one-time run
echo "macOS bootstrap"

# terminal: change zhs to bash
chsh -s /bin/bash

# terminal - hide 'last login'
touch ~/.hushlogin

# install homebrew
# https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install vim
brew install vim

# install middleclick (tap 3 fingers to open tabs)
# https://github.com/artginzburg/MiddleClick-BigSur
brew install --cask --no-quarantine middleclick
# Make it open automatically when you log in
osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/MiddleClick.app", hidden:true}'

# mute macOS startup "chime"
# https://github.com/matteoacrossi/nobootsound
