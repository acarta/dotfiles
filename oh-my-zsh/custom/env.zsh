export EDITOR="$(which nvim)"

export CC="$(which clang)"
export CXX="$(which clang++)"

export LD_LIBRARY_PATH="${HOME}/.local/lib:${LD_LIBRARY_PATH}"
export LD_LIBRARY_PATH="${HOME}/julia/julia-1.0.1/lib:${LD_LIBRARY_PATH}"

export PATH="${HOME}/.local/bin:${PATH}"
export PATH="${HOME}/julia/julia-1.0.1/bin:${PATH}"

export PYTHONPATH="${HOME}/github/flowplots:${PYTHONPATH}"
export DISPLAY=:0