# https://github.com/feegloo/macos-scripts
export PS1="\[\e[0;32m\]\W \[\e[m\]"        # terminal - hide computer name and username, green cwd
export BASH_SILENCE_DEPRECATION_WARNING=1   # terminal - hide zhs deprecation message
export LC_ALL=en_US.UTF-8                   # ensure git (installed with homebrew) uses english

cd ~/Desktop                                # initial path

                                            # remap "+-" left top key to "`" (Macbook Air 11-inch, Early 2015)
                                            # TODO: run every time after login
hidutil property --set '{"UserKeyMapping": [{"HIDKeyboardModifierMappingSrc":0x700000064, "HIDKeyboardModifierMappingDst":0x700000035}] }' > /dev/null

sudo nvram SystemAudioVolume=%01            # disable boot sound
                                            # TODO: run once ? or every time after login?
                
                                            # install Homebrew
                                            # https://brew.sh/index_pl
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sudo pmset standby 0                        # fixes problems with non-original SSD on macOS (kernel crash with "IONVMcontroller" message)

# customize MacOS
# https://medium.com/swlh/top-mac-os-default-behaviors-you-should-consider-changing-419b679fe290
