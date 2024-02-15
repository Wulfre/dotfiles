function brewnuke
    brew autoremove && brew cleanup -s --prune=all && rm -rf "$(brew --cache)"
end
