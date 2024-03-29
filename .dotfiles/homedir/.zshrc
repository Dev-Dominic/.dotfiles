# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Linux Configurations
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# MacOS NVM Configuration
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Exporting pattoo config path
alias _calico='/opt/Calico'
alias _pattoo='/opt/Calico/pattoo'
alias _pattoo_web='/opt/Calico/pattoo-web'

# Aliases
alias vim=nvim
alias pip=pip3

# Folder Aliases
alias programFolder="~/Documents/Programming_Folder"

# Norus Project Aliases
alias NorusTech="~/Documents/Programming_Folder/NorusTech"
alias blueprint="~/Documents/Programming_Folder/NorusTech/Blueprint"
alias blueprint-backend="~/Documents/Programming_Folder/NorusTech/Blueprint/blueprint-backend"
alias blueprint-frontend="~/Documents/Programming_Folder/NorusTech/Blueprint/blueprint-frontend"
alias jjway-accred="~/Documents/Programming_Folder/NorusTech/JJwayAccred"
alias jjway-accred-backend="~/Documents/Programming_Folder/NorusTech/JJwayAccred/JJWay-accreditation-backend"
alias jjway-accred-frontend="~/Documents/Programming_Folder/NorusTech/JJwayAccred/JJWay-accreditation-frontend"
alias sage="~/Documents/Programming_Folder/NorusTech/SAGE"

# Blog
alias blog="~/Documents/Programming_Folder/Dev-Dominic-Blog"

# Open file Aliases
alias evim='vim ~/.config/nvim/init.vim' # Opens for edits to neovim config
#alias qvim='vim ~/.config/qtile/config.py'  # Opens for edits to qtile config
alias qvim='vim ~/.config/i3/config'  # Opens for edits to i3 config
alias tvim='vim ~/.config/alacritty/alacritty.yml' # Opens for edits to neovim config

# Python aliases
alias start_venv='source venv/bin/activate' # start virtual environment

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="pi"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Auto Correction
ENABLE_CORRECTION="true"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    archlinux
    vi-mode
    sudo
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="/usr/local/opt/openjdk/bin:$PATH"
