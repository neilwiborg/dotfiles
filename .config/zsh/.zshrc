CONFIG_DIR="$ZDOTDIR/config"

find "$CONFIG_DIR" -type f \( -name '*.sh' -o -name '*.zsh' \) -print0 | while IFS= read -r -d '' file; do
  source "$file"
done
