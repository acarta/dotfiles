# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/acarta/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="fishy"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
bindkey -v

bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward

export EMAIL="acarta.math@gmail.com"
export NAME="Aaron D. Carta"

# some programs want EDITOR for default editor 
export EMACSCLIENT=/usr/local/bin/emacsclient
alias emacsclient=$EMACSCLIENT
export EMACSCLIENT=emacsclient
alias ec="$EMACSCLIENT -c -n"
export EDITOR="$EMACSCLIENT -c"
export ALTERNATE_EDITOR=""
export VISUAL=$EDITOR
export GIT_EDITOR=$EDITOR

# # Test connection type:
# if [ -n "${SSH_CONNECTION}" ]; then
#     CNX=${Green}        # Connected on remote machine, via ssh (good).
# elif [[ "${DISPLAY%%:0*}" != "" ]]; then
#     CNX=${ALERT}        # Connected on remote machine, not via ssh (bad).
# else
#     CNX=${BCyan}        # Connected on local machine.
# fi

# # Test user type:
# if [[ ${USER} == "root" ]]; then
#     SU=${Red}           # User is root.
# elif [[ ${USER} != $(logname) ]]; then
#     SU=${BRed}          # User is not login user.
# else
#     SU=${BCyan}         # User is normal (well ... most of us are).
# fi

# NCPU=$(grep -c 'processor' /proc/cpuinfo)    # Number of CPUs
# SLOAD=$(( 100*${NCPU} ))        # Small load
# MLOAD=$(( 200*${NCPU} ))        # Medium load
# XLOAD=$(( 400*${NCPU} ))        # Xlarge load

# # Returns system load as percentage, i.e., '40' rather than '0.40)'.
# function load()
# {
#     local SYSLOAD=$(cut -d " " -f1 /proc/loadavg | tr -d '.')
#     # System load of the current host.
#     echo $((10#$SYSLOAD))       # Convert to decimal.
# }

# # Returns a color indicating system load.
# function load_color()
# {
#     local SYSLOAD=$(load)
#     if [ ${SYSLOAD} -gt ${XLOAD} ]; then
#         echo -en ${ALERT}
#     elif [ ${SYSLOAD} -gt ${MLOAD} ]; then
#         echo -en ${Red}
#     elif [ ${SYSLOAD} -gt ${SLOAD} ]; then
#         echo -en ${BRed}
#     else
#         echo -en ${Green}
#     fi
# }

# # Returns a color according to free disk space in $PWD.
# function disk_color()
# {
#     if [ ! -w "${PWD}" ] ; then
#         echo -en ${Red}
#         # No 'write' privilege in the current directory.
#     elif [ -s "${PWD}" ] ; then
#         local used=$(command df -P "$PWD" |
#                    awk 'END {print $5} {sub(/%/,"")}')
#         if [ ${used} -gt 95 ]; then
#             echo -en ${ALERT}           # Disk almost full (>95%).
#         elif [ ${used} -gt 90 ]; then
#             echo -en ${BRed}            # Free disk space almost gone.
#         else
#             echo -en ${Green}           # Free disk space is ok.
#         fi
#     else
#         echo -en ${Cyan}
#         # Current directory is size '0' (like /proc, /sys etc).
#     fi
# }

# # Returns a color according to running/suspended jobs.
# function job_color()
# {
#     if [ $(jobs -s | wc -l) -gt "0" ]; then
#         echo -en ${BRed}
#     elif [ $(jobs -r | wc -l) -gt "0" ] ; then
#         echo -en ${BCyan}
#     fi
# }

# # Adds some text in the terminal frame (if applicable).


# # Now we construct the prompt.
# PROMPT_COMMAND="history -a"
# case ${TERM} in
#   *term | rxvt | linux)
#         PS1="\[\$(load_color)\][\A\[${NC}\] "
#         # Time of day (with load info):
#         PS1="\[\$(load_color)\][\A\[${NC}\] "
#         # User@Host (with connection type info):
#         PS1=${PS1}"\[${SU}\]\u\[${NC}\]@\[${CNX}\]\h\[${NC}\] "
#         # PWD (with 'disk space' info):
#         PS1=${PS1}"\[\$(disk_color)\]\W]\[${NC}\] "
#         # Prompt (with 'job' info):
#         PS1=${PS1}"\[\$(job_color)\]>\[${NC}\] "
#         # Set title of current xterm:
#         PS1=${PS1}"\[\e]0;[\u@\h] \w\a\]"
#         ;;
#     *)
#         PS1="(\A \u@\h \W) > " # --> PS1="(\A \u@\h \w) > "
#                                # --> Shows full pathname of current dir.
#         ;;
# esac



export TIMEFORMAT=$'\nreal %3R\tuser %3U\tsys %3S\tpcpu %P\n'
export HISTIGNORE="&:bg:fg:ll:h"
export HISTTIMEFORMAT="$(echo -e ${BCyan})[%d/%m %H:%M:%S]$(echo -e ${NC}) "
export HISTCONTROL=ignoredups
export HOSTFILE=$HOME/.hosts    # Put a list of remote hosts in ~/.hosts

#-------------------
# Personal Aliases
#-------------------


test -s ~/.alias && . ~/.alias || true

# always start julia with:
# 	* no splash screen
# 	* as many processes as there are threads on the system
# 	* init file (if it exists)
#
# further, julia will always save:
# 	* all REPL commands 
# 	* memory allocations of functions (line-by-line)

alias julia='julia -q -p$(nproc) --optimize --startup-file=yes --history-file=yes --track-allocation'

# start some programs fullscreen

# alias terminator='terminator -f'
# alias emacs='emacs --fullscreen'


# -> Prevents accidentally clobbering files.

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'

alias h='history'
alias j='jobs -l'
alias which='type -a'
alias ..='cd ..'

# Pretty-print of some PATH variables:
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'


alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'

# Convenience functions


#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -h --color'
alias lx='ls -lXB'         #  Sort by extension.
alias lk='ls -lSr'         #  Sort by size, biggest last.
alias lt='ls -ltr'         #  Sort by date, most recent last.
alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lv --group-directories-first"
alias lm='ll |more'        #  Pipe through 'more'
alias lr='ll -R'           #  Recursive ls.
alias la='ll -A'           #  Show hidden files.
alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...


#-------------------------------------------------------------
# Tailoring 'less'
#-------------------------------------------------------------

alias more='less'
export PAGER=less
export LESSCHARSET='latin1'
export LESSOPEN='|/usr/bin/lesspipe.sh %s 2>&-'
                # Use this if lesspipe.sh exists.
export LESS='-i -N -w  -z-4 -g -e -M -X -F -R -P%t?f%f \
:stdin .?pb%pb\%:?lbLine %lb:?bbByte %bb:-...'

# LESS man page colors (makes Man pages more readable).
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'
