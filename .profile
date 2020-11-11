# Add user bin directory.
test -d $HOME/.local/bin && export PATH="$HOME/.local/bin:$PATH"

# Set default config / data directories.
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# Ash variables.
export ENV="$XDG_CONFIG_HOME/ash/.ashrc"
export HISTFILE="$XDG_DATA_HOME/ash_history"
