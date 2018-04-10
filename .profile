# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# vi bindings in shell
set -o vi

# use clang for c/c++ compiler
export CC=clang
export CXX=clang++
export OMPI_MPICC=clang
export OMPI_MPICXX=clang++

# if running bash
# if [ -n "$BASH_VERSION" ]; then
#     # include .bashrc if it exists
#     if [ -f "$HOME/.bashrc" ]; then
# 	. "$HOME/.bashrc"
#     fi
# fi

# # set PATH so it includes user's private bin if it exists
# if [ -d "$HOME/bin" ] ; then
#     PATH="$HOME/bin:$PATH"
# fi

# # include user's private .local if it exists
# if [ -d "$HOME/.local/bin"] ; then
#     PATH="HOME/.local/bin:$PATH"
# fi

export PATH="$HOME/channelflow/bin:$PATH"

alias firefox="/opt/mozilla/firefox/firefox"

alias ipython="ipython --autoindent --pylab=gtk --classic --color-info --gui=gtk --no-banner"
alias ipython3="ipython --autoindent --pylab=gtk --classic --color-info --gui=gtk --no-banner"
