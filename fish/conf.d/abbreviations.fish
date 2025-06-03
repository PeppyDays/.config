# kubernetes
abbr --add k kubectl
abbr --add kc kubectx
abbr --add kn kubens

# aws sso
abbr --add asl aws sso login --profile
abbr --add aslh aws sso login --profile hp-dev-prod-admin
abbr --add asls aws sso login --profile hp-shared-admin

# terraform
abbr --add tf terraform

# nvim
abbr --add nv nvim

# git
abbr --add lg lazygit

# exa, replace of ls
abbr --add ls eza
abbr --add ll eza -alh
abbr --add lt eza -alh --tree

# tmux, terminal multiplexer
abbr --add tm tmux
abbr --add tma tmux attach
abbr --add tmd tmux detach

# !!
function last_history_item
    echo $history[1]
end
abbr -a !! --position anywhere --function last_history_item

# rust
abbr --add cb cargo build
abbr --add cr cargo run
abbr --add ct cargo nextest run

# yabai and skhd
abbr --add ystop "yabai --stop-service; skhd --stop-service;"
abbr --add ystart "yabai --start-service; skhd --start-service;"

# favorite directories
abbr --add cdp cd /Users/arine/Documents/Code/Project
abbr --add cdl cd /Users/arine/Documents/Code/Learning
abbr --add cdh cd /Users/arine/Documents/Code/healingpaper
