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

# system
alias tailnf="tail -n20 -f"

# neovim
# alias nvim="${HOME}/nvim/nvim"

# python
# alias python="${HOME}/anaconda3/bin/python"
# alias ipython="${HOME}/anaconda3/bin/ipython"
# alias ipythonqt="ipython --pylab=qt"

# julia
# alias julia="${HOME}/julia/julia"
# alias julia-ns="julia --startup-file=no"
# alias julia-lts="${HOME}/julia/julia-lts"
# alias julia-lts-ns="julia-lts --startup-file=no"

# r
alias r="radian"
