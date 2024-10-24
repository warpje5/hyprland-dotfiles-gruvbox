ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern regexp)

typeset -A ZSH_HIGHLIGHT_REGEXP
typeset -A ZSH_HIGHLIGHT_PATTERNS

ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=#fb4934',bold  # Red
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=#fabd2f'  # Yellow
ZSH_HIGHLIGHT_STYLES[alias]='fg=#d3869b'          # Pink
ZSH_HIGHLIGHT_STYLES[suffix-alias]='fg=#d3869b'   # Pink
ZSH_HIGHLIGHT_STYLES[global-alias]='fg=#d3869b'   # Pink
ZSH_HIGHLIGHT_STYLES[builtin]='fg=#8ec07c'        # Green
ZSH_HIGHLIGHT_STYLES[function]='fg=#8ec07c'       # Green
ZSH_HIGHLIGHT_STYLES[command]='fg=#b8bb26'        # Light Green
ZSH_HIGHLIGHT_STYLES[precommand]='fg=#fe8019'     # Orange
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=#ebdbb2' # Light Gray
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=#8ec07c'  # Green
ZSH_HIGHLIGHT_STYLES[autodirectory]='fg=#b8bb26'   # Light Green
ZSH_HIGHLIGHT_STYLES[path]='fg=#83a598',underline            # Teal
ZSH_HIGHLIGHT_STYLES[path_pathseparator]='fg=#ebdbb2' # Light Gray
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=#83a598'     # Teal
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]='fg=#ebdbb2' # Light Gray
ZSH_HIGHLIGHT_STYLES[globbing]='fg=#d3869b'        # Pink
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=#fb4934' # Red
ZSH_HIGHLIGHT_STYLES[command-substitution]='fg=#8ec07c' # Green
ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]='fg=#8ec07c' # Green
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]='fg=#8ec07c' # Green
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]='fg=#ebdbb2' # Light Gray
ZSH_HIGHLIGHT_STYLES[process-substitution]='fg=#8ec07c' # Green
ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]='fg=#d3869b' # Pink
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=#83a598' # Teal
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=#fe8019' # Orange
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=#8ec07c' # Green
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#8ec07c' # Green
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#b8bb26' # Light Green
ZSH_HIGHLIGHT_STYLES[assign]='fg=#fb4934'          # Red
ZSH_HIGHLIGHT_STYLES[redirection]='fg=#fb4934'     # Red
ZSH_HIGHLIGHT_STYLES[comment]='fg=#ebdbb2'         # Light Gray
ZSH_HIGHLIGHT_STYLES[named-fd]='fg=#fabd2f'        # Yellow
ZSH_HIGHLIGHT_STYLES[numeric-fd]='fg=#fabd2f'      # Yellow
ZSH_HIGHLIGHT_STYLES[arg0]='fg=#ebdbb2'             # Light Gray
ZSH_HIGHLIGHT_STYLES[default]='fg=#ebdbb2'          # Light Gray

ZSH_HIGHLIGHT_STYLES[bracket-error]='fg=#cc241d',bold # Red
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]='fg=#b8bb26',bold # Green
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=#458588',bold # Blue
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=#d79921',bold # Yellow
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=#b16286',bold # Purple
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=#689d6a',bold # Aqua

ZSH_HIGHLIGHT_REGEXP+=('^sudo rm .*' 'fg=#ebdbb2,bold,bg=#fb4934') # White and Red
ZSH_HIGHLIGHT_REGEXP+=('^rm -rf.*' 'fg=#ebdbb2,bold,bg=#fb4934') # White and Red
ZSH_HIGHLIGHT_REGEXP+=('^rm .*' 'fg=#fabd2f,bg=#fb4934') # Yellow and Red
ZSH_HIGHLIGHT_REGEXP+=('\bsudo\b' 'fg=#fabd2f,bold,underline') # Yellow
ZSH_HIGHLIGHT_REGEXP+=('\bsu\b' 'fg=#fabd2f,bold,underline') # Yellow
