## Overall Insight

This is an algebraic identity in rational functions. The natural technique is to treat each residue as a coefficient extraction and sum the k-dependence by a finite parity-filtered geometric series. Each integrand A(l₁,l₂,l₃,k) factors as P_A(h) · q_A(h)^k where P_A is k-independent.

### Subproblem 3: Compress each parity-restricted residue sum into one residue

**Statement**: Show that the parity-filtered sum ∑_{1≤k≤l₁, k≡l₁(mod 2)} A(l₁,l₂,l₃,k) equals Res_{h=0}[P_A(h) Φ_{l₁}(q_A(h))], and similarly for B.

**Key factorization**: In A(l₁,l₂,l₃,k), each factor with k-dependent exponent factors as a k-th power:
- h^{-k} = (1/h)^k ... wait, but we also have k in other exponents
- (h+λ₂)^{k+l₂} = (h+λ₂)^{l₂} · (h+λ₂)^k
- (h+λ₁-λ₂)^{k+l₃} = (h+λ₁-λ₂)^{l₃} · (h+λ₁-λ₂)^k
- (h-λ₁+λ₂)^{l₁-l₂-k} = (h-λ₁+λ₂)^{l₁-l₂} · (h-λ₁+λ₂)^{-k}
- (h-2λ₁-λ₂)^{l₁-l₃-k} = (h-2λ₁-λ₂)^{l₁-l₃} · (h-2λ₁-λ₂)^{-k}
- (h-2λ₁)^{k-2-2l₁} = (h-2λ₁)^{-2-2l₁} · (h-2λ₁)^k

So q_A(h)^k = [(h+λ₂)(h+λ₁-λ₂)(h-2λ₁)]^k / [h · (h-λ₁+λ₂)(h-2λ₁-λ₂)]^k
= [(h+λ₂)(h+λ₁-λ₂)(h-2λ₁) / (h(h-λ₁+λ₂)(h-2λ₁-λ₂))]^k

**Approach**: Factor A(l₁,l₂,l₃,k) = Res_{h=0}[P_A(h) · q_A(h)^k]. Then use linearity of residue (finite sum):
∑_k A(l₁,l₂,l₃,k) = ∑_k Res_{h=0}[P_A(h) q_A(h)^k] = Res_{h=0}[P_A(h) ∑_k q_A(h)^k] = Res_{h=0}[P_A(h) Φ_{l₁}(q_A(h))].

## Integration Sketch

Subproblem 3 converts the original many-term definition into at most two single-residue expressions for use in Subproblem 4.
