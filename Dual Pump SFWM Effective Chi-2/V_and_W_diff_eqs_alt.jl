using DifferentialEquations  # Make sure to have the DifferentialEquations package installed

function timestep(dt, zeta, Delta, V_old, W_old)
    n = size(zeta, 1)
    
    V_new = (I - 1im * Delta * dt) * V_old - 2im * zeta * dt * conj(W_old)
    W_new = (I - 1im * Delta * dt) * W_old - 2im * zeta * dt * conj(V_old)
    
    return V_new, W_new
end

function odefun(dydt, y, t, Zeta, Delta)
    n = size(Zeta, 1)
    
    tpos = round(interp1(t, 1:length(t), t))
    
    V_vec = y[1:n*n]
    W_vec = y[n*n+1:2*n*n]
    
    # Turn them back into nXn matrices
    V = reshape(V_vec, n, n)
    W = reshape(W_vec, n, n)
    
    dydt_V = -1im * Delta * V - 2 * 1im * Zeta[:, :, tpos] * conj(W)
    dydt_W = -1im * Delta * W - 2 * 1im * Zeta[:, :, tpos] * conj(V)
    
    dydt[1:n*n] = dydt_V[:]
    dydt[n*n+1:2*n*n] = dydt_W[:]
end
using LinearAlgebra  # Make sure to have the LinearAlgebra package installed

function calculate_parameters(tbar, zeta, Delta, tbar_min, tbar_max, GammaP)
    n = size(zeta, 1)
    
    V0 = I
    W0 = zeros(ComplexF64, n, n)
    
    y0 = vcat(vec(V0), vec(W0))
    
    prob = ODEProblem((dydt, y, t) -> odefun(dydt, y, t, zeta / GammaP, Delta / GammaP), y0, (tbar_min, tbar_max))
    sol = solve(prob, ode45)
    
    V = zeros(ComplexF64, n, n, length(sol.t))
    W = zeros(ComplexF64, n, n, length(sol.t))
    
    squeeze_parameter = zeros(ComplexF64, n, n, length(sol.t))
    rotation_parameter = zeros(ComplexF64, n, n, length(sol.t))
    
    for (idx, t_val) in enumerate(sol.t)
        V1 = reshape(sol[idx][1:n*n], n, n)
        W1 = reshape(sol[idx][n*n+1:2*n*n], n, n)
        
        V[:, :, idx] = V1
        W[:, :, idx] = W1
        
        # Check constraints
        c1_check = maximum(abs.(V1 * W1' - W1 * V1'))
        c2_check1 = 100 * maximum(abs.(diagm(V1 * V1' - W1 * W1' - I)))
        c2_check2 = maximum(abs.(V1 * V1' - W1 * W1' - diagm(diagm(V1 * V1' - W1 * W1'))))
        
        if c1_check > 1e-6
            println("c1 bad at GammaP t = ", t_val)
            break
        elseif c2_check1 > 1
            println("diag > 1 by 1% at GammaP t by = ", t_val)
            break
        elseif c2_check2 > 1e-6
            println("c2 bad at GammaP t by = ", t_val)
            break
        end

        coshu, exp_phi = polar(V1)

        F, coshr = schur(coshu)

        coshr_diag = diagm(coshr)

        coshr_check = real(diagm(coshr - I))
        coshr_diag[coshr_check .< 1e-10] .= 1.0

        F_check = maximum(abs.(F * F' - I))
        if F_check > 1e-12
            println("F is not unitary")
        end

        r_diag = acosh.(coshr_diag)
        r = diagm(r_diag)

        u = F * r * F'
        sinhr = diagm(sinh.(r_diag))
        sinhu = F * sinhr * F'

        Pinv_eig = [real(r_diag[i]) < 1e-12 ? 1.0 : r_diag[i] / sinhr[i, i] for i in 1:length(r_diag)]
        P_eig = [real(r_diag[i]) < 1e-12 ? 1.0 : sinhr[i, i] / r_diag[i] for i in 1:length(r_diag)]

        Pinv = F * diagm(Pinv_eig) * F'
        P = F * diagm(P_eig) * F'

        J = Pinv * (W1 * exp_phi')

        W_new = P * J * conj(exp_phi)

        Wcheck = 100 * 2 * abs.(W_new - W1) ./ abs.(W_new + W1)
        Wcheck = maximum(Wcheck)
        
        println("max percentage difference between W_new and W = ", Wcheck, " %")

        squeeze_parameter[:, :, idx] = r
        rotation_parameter[:, :, idx] = exp_phi
    end
    
    return V, W, squeeze_parameter, rotation_parameter
end
