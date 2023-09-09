# based on:
#
# https://macos-defaults.com/
# https://github.com/ptb/mac-setup/blob/develop/mac-setup.command
# https://github.com/mathiasbynens/dotfiles/blob/main/.macos

# mkdir macos-bootstrap
# touch macos-bootstrap.sh
# ./macos-bootstrap.sh
# Permission denied

# source macos-bootstrap.sh
# OK

# TODO: after install, download Apps (.app) on Desktop
# log if cannot be downloaded

echo "=== macOS bootstrap ==="
#echo "enter password for sudo"

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

########################
# General UI/UX        #                                                       
########################

# Set computer name (as done via System Preferences → Sharing)
#sudo scutil --set ComputerName "Macbook Air (olek)"

# Set local host name (as done via System Preferences → Sharing)
# cannot contain "(", "." or spaces
# sudo scutil --set LocalHostName "Macbook-Air-olek"

########################
# Trackpad             #
########################

# enable tap to click for this user and for the login screen
#defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
#defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

# TODO: enable secondary click in right-corner of trackpad 

########################
# Finder               #
########################


########################
# Download Apps        #
########################

# TODO: how to download googlechrome.dmg from below link ?
#https://www.google.com/intl/pl/chrome/next-steps.html?statcb=0&installdataindex=empty&defaultbrowser=0#


########################
# Dock                 #
########################

# Disable the warning before emptying the Trash
#defaults write com.apple.finder WarnOnEmptyTrash -bool false

# remove all apps from Dock
#defaults delete com.apple.dock "persistent-apps"

# Do not display recent apps in the Dock
#defaults write com.apple.dock "show-recents" -bool "false"

# autohide Dock
#defaults write com.apple.dock "autohide" -bool "true"

# add apps to Dock:
#
# Google Chrome
# Photos
_dock_custom_apps() {
  # clear all default apps from Dock
  defaults write com.apple.dock persistent-apps -array

  for dockItem in {"/Applications/Google Chrome","/System/Applications/Photos"}.app; do
    defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>'$dockItem'</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
  done
}

_dock_custom_apps

# apply changes to Dock
killall Dock


########################
# System updates       #
########################


# Install software updates (Safari, etc)
#softwareupdate --install --all

echo "Done. Restart Mac"
