#
# want ~/.local/bin at the FRONT of PATH (i.e. effectively overriding all others)
# export PATH="${HOME}/bin:${PATH}"
export PATH="${HOME}/anaconda3/bin:${PATH}"
export PATH="${HOME}/.local/bin:${PATH}"

export EDITOR="nvim"

# use latest clang; cleaner than copying into ~/.local?
export CC="$(which clang-12)"
export CXX="$(which clang++-12)"

export JULIA_NUM_THREADS="$(nproc)"
