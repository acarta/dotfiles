using OhMyREPL
using DelimitedFiles
using LinearAlgebra

atreplinit() do repl
    try
        @eval using Revise
        @async Revise.wait_steal_repl_backend()
    catch
    end
end

push!(LOAD_PATH, "$(homedir())/github")
