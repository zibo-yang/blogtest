## Strategy 🎯
Factor out the common monomial prefactor using λ₃=-(λ₁+λ₂) to normalize the identity, handle degenerate boundary cases directly, compress the parity-restricted residue sums via a geometric series trick, then evaluate the resulting residues using the global residue theorem.

## Plan
- ⏳ **Section 1: Normalize the target identity** — *algebraic factorization of common monomial; verifying*
- ✅ **Section 2: Handle empty-sum boundary cases** — *direct enumeration: only (0,0,-2) and (0,-1,-1); both sums empty; identity checked*
- ⏳ **Section 3: Compress residue sums into one residue** — *factor k-dependent terms as powers of q_A, q_B; verifying*
- ⏳ **Section 4: Evaluate the compressed residue sum** — *generating (hard): closed-form Φ_n, global residue theorem*
