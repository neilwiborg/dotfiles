# Colored command output
eval "$(dircolors -b)"

# Disable legacy completions
zstyle ':completion:*' use-compctl false

# Cache completions
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/.zcompcache"

# Which completers to use
zstyle ':completion:*' completer _expand _extensions _complete

# Allow case-insensitive and relaxed symbol matching
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'

# Add descriptions to completions
zstyle ':completion:*' verbose true

# Don't overwrite what has already been typed
zstyle ':completion:*' keep-prefix true

# Colorize file and directory completions
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
# Don't colorize any other completions
zstyle ':completion:*' list-colors ''

# Add descriptions to completions
zstyle ':completion:*' verbose true

# Set command completion ordering
zstyle ':completion:*:*:-command-:*:*' group-order aliases functions builtins commands

# Group completion results
zstyle ':completion:*' group-name ''
zstyle ':completion:*' format '%F{green}-- %d --%f'

# Paginate completion results
zstyle ':completion:*' list-prompt '%S%F{blue}At %p%f%s'

# Use interactive menu for completion results
zstyle ':completion:*' menu select interactive

# Colorize completion messages
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}-- %d (errors: %e) --%f'
zstyle ':completion:*:*:*:*:descriptions' format '%F{blue}-- %D %d --%f'
zstyle ':completion:*:*:*:*:messages' format ' %F{purple}-- %d --%f'
zstyle ':completion:*:*:*:*:warnings' format ' %F{red}-- no matches found --%f'

# zsh completions
autoload -Uz compinit
compinit
