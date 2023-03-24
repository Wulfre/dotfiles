function jp
    set location $(rg --line-number . | sk --delimiter ':' --preview 'bat --color=always --highlight-line {2} {1}' | awk -F ':' '{print $1":"$2}')

    if test -n "$location"
        code --goto "$location"
    end
end
