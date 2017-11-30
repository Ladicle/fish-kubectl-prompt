function fish_prompt
    echo -sn (prompt_pwd)

    if set -l branch_name (git_branch_name)
        set -l branch_status

        if git_is_dirty
            set branch_status "*"
        else
            set branch_status "+"
        end

        echo -sn (set_color -o) " ($branch_name$branch_status) " (set_color normal)
    end
end
