echo "macOS bootstrap"

# https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# https://github.com/artginzburg/MiddleClick-BigSur
brew install --cask --no-quarantine middleclick

# Make it open automatically when you log in
osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/MiddleClick.app", hidden:true}'
