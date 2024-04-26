# homebrew bin directory
fish_add_path /opt/homebrew/bin

# go bin directory
fish_add_path ~/go/bin

# default editor to wrapper of nvim
set -gx EDITOR nvim

# starship prompt configuration
starship init fish | source

# rust
set -gx fish_user_paths $HOME/.cargo/bin $PATH

# pfetch configuration
set -gx PF_INFO ascii title os shell editor memory uptime
set -gx PF_ASCII Catppuccin
set -gx PF_COL1 9
set -gx PF_COL2 9
set -gx PF_COL3 3
set -gx PF_ALIGN 10

if status is-interactive
    # Commands to run in interactive sessions can go here
    pfetch
end
