# Login
set -gx STARSHIP_CONFIG $HOME/.config/starship/starship.toml

switch (uname -s)
    case "Linux"
        set -gx PNPM_HOME $HOME/.local/share/pnpm
    case "Darwin" # MacOS
        set -gx PNPM_HOME $HOME/Library/pnpm
end

# Interactive
if status is-interactive
    contains -- $PATH $PNPM_HOME || set -gx PATH $PNPM_HOME $PATH

    fundle plugin "meaningful-ooo/sponge"
    fundle plugin "z11i/github-copilot-cli.fish"
    fundle init

    zoxide init fish | source
    starship init fish | source
end
