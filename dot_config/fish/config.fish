# Login
set -gx STARSHIP_CONFIG $HOME/.config/starship/starship.toml

set -gx USER_BIN "$HOME/.local/bin/"

# Interactive
if status is-interactive
    contains -- $PATH $USER_BIN || set -gx PATH $USER_BIN $PATH

    fundle plugin "meaningful-ooo/sponge"
    fundle init

    zoxide init fish | source
    starship init fish | source
end
