# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
#  export ZSH="/home/ryougi1/.oh-my-zsh"
  export ZSH="/home/james/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="agnoster"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
#zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh


# export MANPATH="/usr/local/man:$MANPATH"

# Yarn 
#export PATH="$PATH:/opt/yarn-1.16.0/bin" 

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias eclipse="cd ~/eclipse/java-2019-03/eclipse && nohup ./eclipse &"
# alias monon="xrandr --output DP-2-1 --auto --left-of eDP-1"
alias volset50="amixer -D pulse set Master 50%"
alias volset75="amixer -D pulse set Master 75%"
alias voltoggle="amixer -D pulse set Master toggle"
alias vol="pavucontrol &"

alias touchoff='xinput disable "DLL07BF:01 06CB:7A13 Touchpad"'
alias touchon='xinput enable "DLL07BF:01 06CB:7A13 Touchpad"'

alias cdsb="cd ~/Projects/afry-signage-backend/"
alias cdsdp="cd ~/Projects/afry-signage-dp/"
alias cdcoursera="cd ~/IdeaProjects/Functional_Programming_Scala/Design"

alias gnomecc="env XDG_CURRENT_DESKTOP=GNOME gnome-control-center"
alias avdpixel="cd ~/Android/Sdk/emulator && ./emulator -avd PixelXL"

# For V8 debug
#export PATH=$PATH:~/Debug/depot_tools
#export PATH="$HOME/.cargo/bin:$PATH"
#alias d8=~/Debug/v8/v8/out.gn/x64.optdebug/d8
#alias export D8_PATH="~/Debug/v8/v8/out.gn/x64.optdebug"

# VIM
# XON/XOFF OFF
stty -ixon

# For Agnoster Terminal
# NOTE: Some additional font files required, see https://gist.github.com/renshuki/3cf3de6e7f00fa7e744a
eval `dircolors ~/.dir_colors/dircolors`

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
