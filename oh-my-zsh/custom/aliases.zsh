#!/usr/bin/zsh

# set emacs aliases
function _set_emacs_aliases()
{
    if [ -x "$(which emacs)" ]; then
        alias ed="emacs --daemon"
        alias ec="emacsclient -nc"
        alias edc="ed && ec"
    fi
}

#set apt aliases
function _set_pkg_aliases()
{
	  if [ -x $(which apt) ]; then
		    alias pkgsearch='aptitude search'
		    alias pkgshow='apt show'
		    alias pkginst='sudo apt install -V'
		    alias pkgupd='sudo apt update'
		    alias pkgupg='sudo apt dist-upgrade -V && sudo apt autoremove'
		    alias pkgupgd='sudo apt update && sudo apt dist-upgrade -V && sudo apt autoremove'
		    alias pkgrm='sudo apt remove'
		    alias pkgpurge='sudo apt remove --purge'
		    alias pkgfiles='dpkg --listfiles'
	  fi
}

_set_emacs_aliases
_set_pkg_aliases

alias firefox="/opt/firefox/firefox"
alias ipythonqt="ipython --pylab=qt"
alias tailnf="tail -n20 -f"
# alias julia="julia --banner=no -O2 --track-allocation --compile=yes"
alias srx="source ${HOME}/.xinitrc"
alias ub="${HOME}/.config/i3/update_background.sh"
