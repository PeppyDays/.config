# Helper function to switch between git worktrees while preserving relative path
function zworktree --argument-names target
    # Get git repository root
    set -l git_root (git rev-parse --show-toplevel 2>/dev/null)
    if test -z "$git_root"
        echo "Not in a git repository"
        return 1
    end

    # Get current directory relative to git root
    set -l current_dir (pwd)
    set -l relative_path (string replace "$git_root" "" "$current_dir" | string trim --left --chars="/")

    # Go to parent of git root and into target worktree
    set -l parent_dir (dirname "$git_root")
    set -l target_dir "$parent_dir/$target"

    if not test -d "$target_dir"
        echo "Worktree '$target' not found at $target_dir"
        return 1
    end

    # Navigate to target, preserving relative path if it exists
    if test -n "$relative_path" -a -d "$target_dir/$relative_path"
        cd "$target_dir/$relative_path"
    else if test -n "$relative_path"
        echo "Path '$relative_path' doesn't exist in '$target', going to root"
        cd "$target_dir"
    else
        cd "$target_dir"
    end
end
