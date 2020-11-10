# set emacs aliases
# function _set_emacs_aliases()
# {
#     if [ -x "$(which emacs)" ]; then
#         alias ed="emacs --daemon"
#         alias ec="emacsclient -nc"
#         alias edc="ed && ec"
#     fi
# }

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

# _set_emacs_aliases
_set_pkg_aliases

alias ipythonqt="ipython --pylab=qt"
alias tailnf="tail -n20 -f"
alias julia="${HOME}/julia/julia-1.5.2/bin/julia"
alias julia-ns="julia --startup-file=no"
alias julia-lts="${HOME}/julia/julia-1.0.5/bin/julia"
alias julia-lts-ns="julia-lts --startup-file=no"
