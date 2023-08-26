# homebrew bin directory
fish_add_path /opt/homebrew/bin

# default editor to wrapper of helix
# refer to /usr/local/bin/ewrap
set -gx EDITOR ewrap

# starship prompt configuration
starship init fish | source

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
