export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

if status is-interactive
    fundle plugin "meaningful-ooo/sponge"
    fundle plugin "jethrokuan/z"
    fundle init

    starship init fish | source
end

# pnpm
set -gx PNPM_HOME "/home/sean/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
