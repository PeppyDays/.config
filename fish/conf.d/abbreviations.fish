# kubernetes
abbr --add k kubectl
abbr --add kc kubectx
abbr --add kn kubens

# aws sso
abbr --add asl aws sso login --profile
abbr --add aslh export AWS_PROFILE=hp-dev-prod-admin & aws sso login --profile hp-dev-prod-admin
abbr --add asls export AWS_PROFILE=hp-shared-admin & aws sso login --profile hp-shared-admin

# terraform
abbr --add tf terraform

# helix
abbr --add vi hx

# python
abbr --add ae source .venv/bin/activate.fish
abbr --add de deactivate

# git
abbr --add go git-open
abbr --add lg lazygit

# exa, replace of ls
abbr --add ls exa
abbr --add ll exa -alh

# zellij, terminal multiplexer
abbr --add zj zellij
abbr --add zja zellij attach

# rust
abbr --add cb cargo build
abbr --add cr cargo run
abbr --add ct cargo test

# just
abbr --add j just

# yabai and skhd
abbr --add ystop "yabai --stop-service; skhd --stop-service;"
abbr --add ystart "yabai --start-service; skhd --start-service;"

# favorite directories
abbr --add cdp cd /Users/arine/Documents/Code/Project
abbr --add cdl cd /Users/arine/Documents/Code/Learning
