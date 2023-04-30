# Global always-use config
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

if status is-interactive
    # Linux-only interactive-only config
    if test $(uname -s) = "Linux"
        set -gx PNPM_HOME "$HOME/.local/share/pnpm"
        if not string match -q -- $PNPM_HOME $PATH
            set -gx PATH "$PNPM_HOME" $PATH
        end
    end

    # MacOS-only interactive-only config
    if test $(uname -s) = "Darwin"
        set -gx PNPM_HOME "$HOME/Library/pnpm"
        if not string match -q -- $PNPM_HOME $PATH
            set -gx PATH "$PNPM_HOME" $PATH
        end
    end

    # Global interactive-only config
    fundle plugin "meaningful-ooo/sponge"
    fundle plugin "jethrokuan/z"
    fundle plugin "z11i/github-copilot-cli.fish"
    fundle init

    starship init fish | source
end
