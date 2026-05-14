## Overall Insight

This is an algebraic identity in rational functions. The main difficulty is evaluating R_A + R_B by computing residues of rational functions involving Φ_n(q(h)) where Φ_n has a closed form as a geometric series.

### Subproblem 4: Evaluate the compressed residue sum

**Statement**: Prove R_A + R_B = (1/8)(λ₁^{l₁+1} λ₂^{l₂+1} λ₃^{l₃+1} - λ₁λ₂λ₃ Q).

**Key tools**:
- Closed form: Φ_n(z) = (z - z^{n+2})/(1-z²) for n odd; (z² - z^{n+2})/(1-z²) for n even.
- Global residue theorem: ∑_{all poles p} Res_{h=p}[f(h)] = 0 (for rational f vanishing at ∞).
- The constraint l₃ = -2 - l₁ - l₂ simplifies exponents.

**Strategy**:
1. Substitute the closed form for Φ_{l₁}(q_A(h)) into P_A(h)Φ_{l₁}(q_A(h)). Write this as a rational function F_A(h).
2. The poles of F_A(h) are at h=0 (the desired residue), and at the zeros of (1-q_A(h)²), plus poles coming from P_A.
3. Use the global residue theorem to compute Res_{h=0}[F_A] = -∑_{p≠0} Res_{h=p}[F_A].
4. The residues at other poles simplify because of the specific form of q_A and P_A; use l₃=-2-l₁-l₂ and σ(m)=m(m+1)/2 throughout.
5. After adding R_A + R_B, verify the sum equals (1/8)(λ₁^{l₁+1}λ₂^{l₂+1}λ₃^{l₃+1} - λ₁λ₂λ₃ Q).

**Key observation**: The product P_A(h)·(1-q_A(h)²)^{-1} · (q_A(h)^a - q_A(h)^b) for appropriate a,b (from the parity-closed form) should reduce to a rational function whose other poles are computable using the multinomial theorem or partial fractions.

**Important**: Work with λ₃ = -λ₁-λ₂ throughout and keep track of sign: (λ₁+λ₂)^{even} = λ₃^{even}, but (λ₁+λ₂)^{odd} = -λ₃^{odd}.

## Integration Sketch

This is the central computation. After Subproblem 1 normalizes and Subproblem 3 compresses, this subproblem establishes the key equality R_A + R_B = (1/8)(λ₁^{l₁+1}λ₂^{l₂+1}λ₃^{l₃+1} - λ₁λ₂λ₃ Q), completing the proof for l₁ ≥ 1.
