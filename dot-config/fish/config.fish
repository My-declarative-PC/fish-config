function fish_greeting
    if command -sq fastfetch
        clear
        fastfetch
    end
end

#
# Aliases
#

### ls
function ls
    if command -sq eza
        eza -1 --icons $argv
    else
        bash -c ls $argv
    end
end

function ll
    ls -lh $argv
end

function la
    ll -a $argv
end

function tree
    if command -sq eza
        ls -T $argv
    else
        bash -c tree $argv
    end
end

#
# Initializations
#
if command -sq starship
    starship init fish | source
end

if command -sq zoxide
    zoxide init --cmd cd fish | source
end

if command -sq fzf
    fzf --fish | source
end
