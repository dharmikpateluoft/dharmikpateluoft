using SpecialFunctions  # For the erf function

function calculate_parameters(λ1, λ2, λS, Q, τ1, τ2, L, vg, η, P1_peak, P2_peak, γ_nl, R, neff, tbar_min, tbar_max, dtbar)
    c = 3.0e8  # Speed of light in m/s

    omega1 = 2 * π * c / λ1
    omega2 = 2 * π * c / λ2
    omegaS = 2 * π * c / λS

    GammaS = omegaS / (2 * Q)
    GammaP1 = omega1 / (2 * Q)
    GammaP2 = omega2 / (2 * Q)
    GammaP = (GammaP1 + GammaP2) * 0.5

    beta1 = GammaP1 * τ1 / sqrt(8 * log(2))
    beta2 = GammaP2 * τ2 / sqrt(8 * log(2))

    T = L / vg + Q / omegaS

    z0 = -η^2 * sqrt(P1_peak * P2_peak) * vg^3 * τ1 * τ2 * γ_nl / (4 * log(2) * L * 2 * π * R)

    dl = 0.05e-9
    kS_max = 2 * π * neff / (λS - dl)
    kS_min = 2 * π * neff / (λS + dl)
    dk = 2 * π / L
    k1 = kS_min:dk:kS_max
    k2 = k1
    KS = 2 * π * neff / λS

    zeta_x = zeros(ComplexF64, length(k1), length(k2))

    for (idx1, k1_val) in enumerate(k1)
        x1 = vg * (k1_val - KS) / GammaS

        for (idx2, k2_val) in enumerate(k2)
            x2 = vg * (k2_val - KS) / GammaS
            zeta_x[idx1, idx2] = 1 / (1im * x1 + 1) * 1 / (1im * x2 + 1)
        end
    end

    tbar = tbar_min:dtbar:tbar_max

    zeta1_t = zeros(ComplexF64, length(tbar))
    zeta2_t = zeros(ComplexF64, length(tbar))

    for (idx1, tbar_val) in enumerate(tbar)
        a1 = 1 / (2 * beta1)
        z1 = beta1 - a1 * tbar_val
        zeta1_t[idx1] = exp(-(a1 * tbar_val)^2) * exp(z1^2) * (1 - erf(z1))

        a2 = 1 / (2 * beta2)
        z2 = beta2 - a2 * tbar_val
        zeta2_t[idx1] = exp(-(a2 * tbar_val)^2) * exp(z2^2) * (1 - erf(z2))
    end

    zeta = zeros(ComplexF64, length(k1), length(k2), length(tbar))

    for (idx1, tbar_val) in enumerate(tbar)
        zeta[:, :, idx1] = z0 * zeta_x * zeta1_t[idx1] * zeta2_t[idx1]
    end

    Delta = 1 * diagm(vg * (k1 - KS))

    return zeta, Delta
end
