using Trapz, Plots
using LaTeXStrings

# Constants
ħ = 1.05457182e-34  # hbar
c = 2.998e8 # c
v_P = c/2  # vP
v_S = c/2  # VS
v_C = c/2  # VvC
γ_nl = 1.0 # gamma_nl
γ_S = 1.0e9  # gamma_S
γ_P = 1.0e9  # gamma_P
γ_C = 1.0e9  # gamma_C
ω_S = 2*pi*190e12  # omega_S
delta_ω = 2*pi*1e12 #omega diff
ω_P = ω_S + delta_ω
ω_C = ω_S - delta_ω
N_P = 1.0e8  # NP
N_C = 1.0e8  # NC
τ_P = 3.5e-9  # tauP
τ_C = 3.5e-9  # tauC
η_P = 0.5  # etaP
η_C = 0.5  # etaC
η_S = 0.5  # etaS
L = 2*pi*60e-6    # L
K_S = 2/c * ω_S  # KS
K_P = 2/c * ω_P # KP
K_C = 2/c * ω_C  # KC

prefactor = (-2 * im / ħ) * (-im * ħ * v_P * γ_nl * ω_S * v_S * γ_S * sqrt(N_P * N_C * v_P^2 * v_C^2 * τ_P * τ_C * γ_P * γ_C * η_P * η_C))/(pi * sqrt(pi) * L) * η_S



function build_integrand(k3, k2, k1)
    integrand = zeros(ComplexF64, length(k1), length(k2), length(k3))
    for i in 1:length(k1)
        term1 = 1 / (v_S * (K_S - k1[i]) - im * γ_S)
        for j in 1:length(k2)
            term2 = 1 / (v_S * (K_S - k2[j]) - im * γ_S)
            for k in 1:length(k3)
                term3 = 1 / (v_P * (K_P - k3[k]) - im * γ_P)
                term4 = 1 / (v_S * (k1[i] + k2[j]) + v_P * k3[k] + im * γ_C)
                exp1 = exp(-0.5 * ((k3[k] - K_P)^2 * v_P^2 * τ_P^2))
                exp2 = exp(-0.5 * ((v_S * (k1[i] + k2[j]) - v_P * k3[k] - v_C * K_C)^2 * τ_C^2))
                integrand[i,j,k] = prefactor *term1 * term2 * term3 * term4 * exp1 * exp2
            end
        end
    end
    return integrand
end

# Define the range for k_1 and k_2
delta_kmax = 50
k1 = LinRange(-delta_kmax+K_S, delta_kmax+K_S, 100)
k2 = LinRange(-delta_kmax+K_S, delta_kmax+K_S, 100)
k3 = LinRange(-delta_kmax+K_P, delta_kmax+K_P, 100)

# integral computation

integrand = build_integrand(k3, k2, k1)



int = zeros(ComplexF64, length(k1), length(k2))
for i in 1:length(k1)
    for j in 1:length(k2)
        int[i,j] = trapz(k3, integrand[i, j, :])
    end
end


J_ac_ac = contourf(abs.(int), c=cgrad(rev=false), clabels=false, levels=12, title=(L"Squeezing Matrix $J$ for two actual channels"), xlabel=(L"k_1"), ylabel = (L"k_2"))


#what are the coupling efficiencies for ph ph and ac ph? if everything is critically coupled, everything remains the same in each J plot. 

    

