# homebrew bin directory
fish_add_path /opt/homebrew/bin

# go bin directory
fish_add_path ~/go/bin

# greeting message
set fish_greeting

# default editor to wrapper of nvim
set -gx EDITOR nvim

# starship prompt configuration
starship init fish | source

# rust
set -gx fish_user_paths $HOME/.cargo/bin $PATH

# yazi
function yy
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Setting PATH for Python 3.12
# The original version is saved in /Users/arine/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.12/bin" "$PATH"
