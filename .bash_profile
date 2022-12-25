# https://github.com/feegloo/macos-scripts
export PS1="\[\e[0;32m\]\W \[\e[m\]"        # terminal - hide computer name and username, green cwd
export BASH_SILENCE_DEPRECATION_WARNING=1   # terminal - hide zhs deprecation message
export LC_ALL=en_US.UTF-8                   # ensure git (installed with homebrew) uses english

[[ "$PWD" = "$HOME" ]] && cd Desktop        # initial cwd (only if other process like VSCode didn't set it's own cwd) 
