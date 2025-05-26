# Configure history file
HISTFILE="$ZDOTDIR/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

# History settings
setopt appendhistory # append to history instead of overwriting at the end of every session
setopt sharehistory # share history with other terminal sessions
setopt histignorealldups # ignore duplicate entries in history
