ENV["JULIA_NUM_THREADS"] = 8
ENV["JULIA_PKG_DEVDIR"] = joinpath(homedir(), "projects")
ENV["EDITOR"] = joinpath(homedir(), "nvim", "nvim")
# ENV["PYTHON"] = "python"

import Pkg
let
    pkgs = [
            "OhMyREPL",
            "Revise",
           ]
    for pkg in pkgs
        if Base.find_package(pkg) == nothing
            Pkg.add(pkg)
        end
    end
end

using OhMyREPL
atreplinit() do repl
    try
        @eval using Revise
        @async Revise.wait_steal_repl_backend()
    catch
    end
end

using DelimitedFiles
using LinearAlgebra
# using Plots
using Statistics
# using GraphRecipes

push!(LOAD_PATH, "$(homedir())/projects")
push!(LOAD_PATH, "$(homedir())/julia")
push!(LOAD_PATH, "$(homedir())/.julia/dev")

# update packages in a worker process
# import Distributed
# let
#     pkg_worker = Distributed.addprocs(1)[end]
#     Distributed.remotecall(pkg_worker) do
#         redirect_stdout() # silence everything, only on this worker
#         Pkg.update()
# 
#         # remove worker and output done
#         remotecall(1) do
#             eval(quote
#                      Distributed.rmprocs($(pkg_worker))
#                      printstyled("\n Pkg.update() complete \n"; colore = :light_black)
#                  end)
#         end
#     end
# end
