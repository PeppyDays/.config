# homebrew bin directory
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# rust bin directory
set -gx fish_user_paths $HOME/.cargo/bin $PATH

# llvm bin directory
fish_add_path /opt/homebrew/opt/llvm/bin

# greeting message
set fish_greeting

# default editor to wrapper of helix
set -gx EDITOR nvim

# starship prompt configuration
starship init fish | source

# zoxide prompt configuration
zoxide init fish | source

# fuck prompt cohnfiguration
thefuck --alias | source

# wrap brew for brewfile
if test -f (brew --prefix)/etc/brew-wrap.fish
    source (brew --prefix)/etc/brew-wrap.fish
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
