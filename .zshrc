# If you come from bash you might have to change your $PATH.
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export GOPATH="$HOME/go"
export JAVA_HOME="/usr/lib/jvm/default/"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.config/emacs/bin:$PATH"
export PATH="$HOME/.spicetify:$PATH"
export PATH="$HOME/.local/bin:$PATH"
# export PATH="$HOME/warp/.dotnet/tools:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 1

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    archlinux
    aliases
    colorize
    docker
    docker-compose
    emacs
    eza
    fzf
    fzf-tab
    git
    golang
    kitty
    mvn
    poetry
    python
    rust
    starship
    you-should-use
    zoxide
    zsh-autosuggestions
    zsh-history-substring-search
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ####### User configuration #######

# For starship in emacs env shells
if [ "$TERM" = "dumb" ]; then
    export TERM=xterm-kitty
fi

# vi mode
bindkey -v

# Add "jk" shortcut to enter NORMAL mode
bindkey -M viins 'jk' vi-cmd-mode

# Yank to the system clipboard
function vi-yank-xclip {
    zle vi-yank
    echo "$CUTBUFFER" | wl-copy -n
}

zle -N vi-yank-xclip
bindkey -M vicmd 'y' vi-yank-xclip

# You may need to manually set your language environment
export LANG=ru_RU.UTF-8

# Preferred editor for local and remote sessions

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='emacsclient -t'
    export VISUAL='emacsclient -t'
else
    export EDITOR='emacsclient -t'
    export VISUAL='emacsclient -t'
fi

# Fzf gruvbox theme
export FZF_DEFAULT_OPTS='--color=fg:#ebdbb2,bg:#282828,hl:#d79921,fg+:'
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS'#fbf1c7,bg+:#3c3836,hl+:#d79921,"
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS'info:#b8bb26,prompt:#fe8019,"
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS'spinner:#fb4934,header:#83a598'"

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
alias zshconfig="emacsclient -t ~/.zshrc"
alias ohmyzsh="emacsclient -t ~/.oh-my-zsh"

# Source configs
source ~/.zsh/zsh-highlight-config.zsh
