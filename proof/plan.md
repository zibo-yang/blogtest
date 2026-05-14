## Strategy 🎯
Prove Conjecture 3 via explicit construction: the normalized 4×4 Hadamard matrix H satisfies ρ_r(H) = 4^{1/2−1/r} for all r ≥ 2 (so ρ_p < ρ_{p+1}), and zero-padding diag(H, 0_{n−4}) extends this to all n > 6.

## Plan
- ✅ **Section 1: Zero-padding preserves ρ_r** — *block-diagonal structure of scaled matrix; ℓ^r norm of diag(C,0)*
- ✅ **Section 2: Hadamard norm computation** — *Riesz-Thorin interpolation between p=2 and p=∞; sharpness via (1,1,1,1)*
- ✅ **Section 3: Scaling lower bound for H** — *row-functional lower bound + δ_max argument; yields 4^{1/2-1/r} independently of Δ*
- ✅ **Section 4: Conclusion (Conjecture 3)** — *assembly of Sections 1 + 3; strict monotonicity of 4^{1/2-1/r}*

All sections verified CLEAN. Running pessimistic final verification.
