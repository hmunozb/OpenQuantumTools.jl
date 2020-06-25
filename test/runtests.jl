using SafeTestsets

@time begin
    @time @safetestset "Bath" begin
        include("bath.jl")
    end
    @time @safetestset "Control datatypes" begin
         include("QControl/control_datatype.jl")
    end
    @time @safetestset "Solver utilies" begin
        include("QSolvers/solver_util.jl")
    end
    @time @safetestset "Schrodinger test" begin
        include("QSolvers/schrodinger_solver_test.jl")
    end
    @time @safetestset "Stochastic Schrodinger test" begin
        include("QSolvers/stochastic_schrodinger.jl")
    end
    @time @safetestset "Von Neumann test" begin
        include("QSolvers/von_neumann_solver.jl")
    end
    @time @safetestset "Unitary test" begin
        include("QSolvers/unitary_solver_test.jl")
    end
    @time @safetestset "AME test" begin
        include("QSolvers/ame_solver_test.jl")
    end
    @time @safetestset "Redfield test" begin
        include("QSolvers/redfield_solver_test.jl")
    end
    @time @safetestset "One over f (Stochastic Schrodinger) test" begin
        include("QSolvers/onef_ode_control.jl")
    end
end