export ENV="${HOME}/.ashrc"

# Add user bin directory
test -d $HOME/.bin && export PATH="$HOME/.bin:$PATH"
