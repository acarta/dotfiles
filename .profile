# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# use vi commands in shell
set -o vi

if [ -z "$SSH_CONNECTION" ]; then
    case $OSTYPE in
        darwin*)
            export EMACSCLIENT=/Applications/Emacs.app/Contents/MacOS/bin/emacsclient
            alias emacsclient=$EMACSCLIENT
            ;;
        *)
            export EMACSCLIENT=emacsclient
            ;;
    esac
    alias ec="$EMACSCLIENT -c -n"
    export EDITOR="$EMACSCLIENT -c"
    export ALTERNATE_EDITOR=""
else
    export EDITOR=$(type -P emacs || type -P vim || type -P vi)
fi
export VISUAL=$EDITOR

# Add channelflow bin dir to path
export PATH="$HOME/channelflow/bin:$PATH"

# Add julia bin dir to path
export PATH="$HOME/julia/bin:$PATH"

# Set clang as default for c and c++
export CC="clang"
export CXX="clang++"

# added by Anaconda3 installer
export PATH="$HOME/anaconda3/bin:$PATH"

# add dedalus to python path
export PYTHONPATH="${HOME}/mercurial/dedalus:$PYTHONPATH"

# add flowplots to python path
export PYTHONPATH="$HOME/github/flowplots:$PYTHONPATH"

# start julia with parallelization, optimization, and a startup file
alias julia='julia -q -p$(nproc) --optimize --startup-file=yes --history-file=yes --track-allocation'

export PATH="$HOME/.cargo/bin:$PATH"

alias python="/usr/bin/python3"
alias python2="/usr/bin/python"

alias vtop="vtop --theme monokai"

alias firefox="/opt/mozilla/firefox/firefox"

#FIXME: Hack for parallel chflow
export HDF5_DISABLE_VERSION_CHECK=2

alias ipython="ipython --autoindent --pylab=qt4 --classic --color-info --no-banner"
alias ipython3="ipython --autoindent --pylab=qt4 --classic --color-info --no-banner"

export OMP_NUM_THREADS="$(nproc)"
