# Configure history file
HISTFILE="$ZDOTDIR/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

# History settings
setopt share_history # share history with other terminal sessions
setopt hist_ignore_all_dups # ignore duplicate entries in history (in memory)
setopt hist_save_no_dups # don't save duplicate entries in history (in file)
setopt hist_reduce_blanks # remove extra blanks from history entries
setopt hist_verify # show command before executing when using history expansion
