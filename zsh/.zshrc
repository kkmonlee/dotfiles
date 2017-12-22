# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

defined () {
        local varname="$1" 
        typeset -p "$varname" > /dev/null 2>&1
}

print_icon () {
        local icon_name=$1 
        local ICON_USER_VARIABLE=POWERLEVEL9K_${icon_name} 
        if defined "$ICON_USER_VARIABLE"
        then
                echo -n "${(P)ICON_USER_VARIABLE}"
        else
                echo -n "${icons[$icon_name]}"
        fi
}

# Oh My Zsh path
export ZSH=/home/aa/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
POWERLEVEL9K_MODE='awesome-fontconfig'
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_FOLDER_ICON=" "
POWERLEVEL9K_HOME_SUB_ICON=''
POWERLEVEL9K_HOME_ICON=''
POWERLEVEL9K_BACKGROUND_JOBS_ICON="$(print_icon "ANDROID_ICON") "
POWERLEVEL9K_EXECUTION_TIME_ICON="$(print_icon "EXECUTION_TIME") "
POWERLEVEL9K_RAM_ICON=""

# Background jobs
POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=true

# Newline after prompt
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='\uf0da'
#POWERLEVEL9K_VCS_GIT_ICON='\ue60a'

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
#POWERLEVEL9K_VCS_UNTRACKED_ICON='?'

POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4

#POWERLEVEL9K_CUSTOM_TIME_FORMAT="%D{\uf017 %H:%M:%S}"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M \uf073 %d.%m.%y}"
#
#POWERLEVEL9K_STATUS_VERBOSE=false

# Context segment color.
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='066'
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND='130'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='235'
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND=${POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND}

# Directory segment color.
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=${POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND}
POWERLEVEL9K_DIR_HOME_BACKGROUND=${POWERLEVEL9K_DIR_DEFAULT_BACKGROUND}
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=${POWERLEVEL9K_DIR_DEFAULT_BACKGROUND}

# Virtualenv segement color.
POWERLEVEL9K_VIRTUALENV_BACKGROUND='023'

# VCS segement color.
POWERLEVEL9K_VCS_BACKGROUND='029'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='130'

# Status segment color.
POWERLEVEL9K_STATUS_OK_BACKGROUND='029'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='088'
POWERLEVEL9K_STATUS_OK_FOREGROUND='000'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='250'

# History segment color.
POWERLEVEL9K_HISTORY_BACKGROUND='235'
POWERLEVEL9K_HISTORY_FOREGROUND='245'

# Time segment color.
POWERLEVEL9K_TIME_BACKGROUND='236'
POWERLEVEL9K_TIME_FOREGROUND=${POWERLEVEL9K_HISTORY_FOREGROUND}

# Background jobs colour
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND="white"
POWERLEVEL9K_RAM_ICON="$(print_icon "RAM_ICON") "

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator status battery dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time background_jobs command_execution_time root_indicator ram)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Plugin hotloader
plugins=(git composer cp golang go python laravel npm rust sudo)

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# -------------------------------------------------------------------
# Navigation
# -------------------------------------------------------------------
alias l='ls -lah'
alias la='ls -lAh'
alias lh='ls -a | egrep "^\."'
alias ll='ls -lh'
alias ls='ls --color=tty'
alias lsa='ls -lah'
alias loadzsh='source ~/.zshrc'
alias cdo='cd ..'


# -------------------------------------------------------------------
# make some commands (potentially) less destructive
# -------------------------------------------------------------------
alias 'rm=rm -i'

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias gta='git tag -a -m'
alias gf='git reflog'


# Environment variables
source /home/aa/Downloads/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/home/aa/.composer/vendor/bin:$PATH"
export PATH="/home/aa/bin/android-studio/bin:$PATH"
export M2_HOME=/opt/apache-maven-3.5.0
export M2=$M2_HOME/bin
export MAVEN_OPTS="-Xms256m -Xmx512m"
export PATH=$M2:$PATH

export GOPATH=/usr/bin/go
export PATH="/home/aa/Downloads/google-cloud-sdk/bin:$PATH"
export PATH="/home/aa/.local/bin:$PATH"
export PATH="/home/aa/Downloads/arduino-1.8.5:$PATH"
export PATH="/home/aa/.cargo/bin:$PATH"

function myip() {
    ifconfig wlo1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "wlo1       : " $2}'
	ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
	ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}
