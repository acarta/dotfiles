#!/usr/bin/zsh

# set emacs aliases
function _set_emacs_aliases()
{
	  if [ -x "$(which emacs)" ]; then
		    alias ed="emacs --daemon"
		    alias ec="emacsclient -nc"
	  fi
}

# set apt aliases
function _set_pkg_aliases()
{
	  if [ -x $(which apt) ]; then
		    alias pkgsearch='aptitude search'
		    alias pkgshow='aptitude show'
		    alias pkginst='sudo aptitude install -V'
		    alias pkgupd='sudo aptitude update'
		    alias pkgupg='sudo aptitude dist-upgrade -V && sudo aptitude autoremove'
		    alias pkgupgd='sudo aptitude update && sudo aptitude dist-upgrade -V && sudo aptitude autoremove'
		    alias pkgrm='sudo aptitude remove'
		    alias pkgpurge='sudo aptitude remove --purge'
		    alias pkgfiles='dpkg --listfiles'
	  fi
}

_set_emacs_aliases
_set_pkg_aliases
