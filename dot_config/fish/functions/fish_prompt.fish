function fish_prompt
    echo "$(set_color black -b white) $(prompt_pwd -d 0) $(set_color normal)"
    echo "› "
end
