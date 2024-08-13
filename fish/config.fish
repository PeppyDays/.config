# homebrew bin directory
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# go bin directory
fish_add_path ~/go/bin

# rust bin directory
set -gx fish_user_paths $HOME/.cargo/bin $PATH

# greeting message
set fish_greeting

# default editor to wrapper of helix
set -gx EDITOR hx

# starship prompt configuration
starship init fish | source

# zoxide prompt configuration
zoxide init fish | source

# fuck prompt cohnfiguration
thefuck --alias | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end
