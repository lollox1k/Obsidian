> [!definition]
> A matrix $A \in M_n(\mathbb{R})$ is *symplectic* if:
> $$
> A J A^t = J
> $$
> where $J$ is the fundamental symplectic matrix.

# Properties

First note that the fundamental symplectic matrix
$$
J^2 = -I_{2n} \qquad  J^{-1} = J^t = -J \qquad\det{J} = 1
$$
Let $A$ be a symplectic matrix. Then
1. $|\det{A}| = 1$, so $A$ is invertible ([[Binet]])
2. $A^t$ is symplectic 
$$
AJA^t JA = JJA = -A
$$
$$
JA^tJA = -I
$$
$$
A^t J A = J
$$
3. $A^{-1}$ is symplectic:
$$
J = A^{-1}AJA^t{(A^{-1})}^t = A^{-1} J {(A^{-1})}^t
$$
4. If $B$ is symplectic, then $AB$ is also symplecitc: _symplectic matrix are a sub group of $GL(n)$_:
$$
AB J (AB)^t = ABJB^tA = AJA = J
$$


We can define a bilinear antisymmetric form:
$$
[u,v]_J := u \cdot J v
$$
called *symplectic product*. It' easy to see that $A$ is a symplectic matrix iff $\forall u,v$ $$
[Au, Av]_J = [u,v]_J
$$
