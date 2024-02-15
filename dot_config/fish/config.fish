# login
set -gx GNU_SED /usr/local/opt/gnu-sed/libexec/gnubin
set -gx PNPM_HOME $HOME/.local/share/pnpm

contains -- $PATH $PNPM_HOME || set -gx PATH $PNPM_HOME $PATH

# interactive
if status is-interactive
    set -gx STARSHIP_CONFIG $HOME/.config/starship/starship.toml

    contains -- $PATH $HOME/.local/bin || set -gx PATH $HOME/.local/bin $PATH
    contains -- $PATH $GNU_SED || set -gx PATH $GNU_SED $PATH

    zoxide init fish | source
    starship init fish | source
    thefuck --alias | source
end
