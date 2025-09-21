function load_env
    for line in (cat .env | grep -v '^#' | grep -v '^$')
        set -l parts (string split '=' $line)
        if test (count $parts) -eq 2
            set -gx $parts[1] $parts[2]
        end
    end
end
