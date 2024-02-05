We can give a more algebric characterziation of [[Canonical transformations]]. First some notation
$$
z = \begin{pmatrix}
q \\ p 
\end{pmatrix}
\qquad 
\partial_z = \begin{pmatrix}
\partial_q \\ \partial_p 
\end{pmatrix}
$$
we can write hamilton equations as
$$
\dot z = J \partial_z H
$$
where $J$ is called the _fundamental symplective matrix_:
$$
J = \begin{pmatrix}
0 & I_n \\
-I_n & 0 
\end{pmatrix}
$$
where $I_n$ is the $n\times n$ identity matrix in $\mathbb{R}^n$.
Consider a time-independent transformation $Z = Z(z)$, call $K = H(z(Z))$.
If $Z$ is canonical, we know that the system $K$ with variables $Z$ will still be hamiltonian. Let's check this 
$$
\dot Z = (\partial_z Z) \dot z = (\partial_z Z) J \partial_z H
$$
$$
\partial_Z K = (\partial_Z z)^t \partial_z H 
$$
where $(\partial_z Z)$ and $(\partial_Z z)$ are the Jacobian matrix of $Z(z)$ and its inverse, respectively. Then
$$
\dot Z = (\partial_z Z) J (\partial_z Z)^t \partial_Z K
$$
so that $K$ with variables $Z$ is hamiltonian iff:
$$
(\partial_z Z) J (\partial_z Z)^t = J
$$
that is, the Jacobian is a [[symplectic matrix]] for any $z$. 
We will call a transformation $Z(z)$ _symplectic_ if its Jacobian is symplectic for all $z$. 
> [!theorem]
> A symplectic time-indipendent transformation is canonical and the new Hamiltonian is the old one written with the new variables.

We will show that the condtion of symplectic Jacobian is equivalent to the differential condition at fixed time used in [[Canonical transformations]].

> [!theorem]
> A transformation $Q = Q(q,p,t)$ $P = P(q,p,t)$ is symplectic at fixed time $t$ iff $pdq - PdQ$ is an exact differential at fixed time $t$.
> > [!proof]-
> > We can write this differential as the sum of an exact differential and
> > $$
> > pdq - qdp - (PdQ- QdP)
> > $$
> > so we need to check only that this is an exact differential. Written with the compact variables:
> > $$
> > 	Jz\cdot dZ - JZ\cdot dZ
> > $$
> > but $dZ = \partial_z Z dz$, so this $1$-form is
> > $$
> > (Jz - JZ\partial_zZ)\cdot dz
> > $$
> > this is locally exact iff it's locally closed:
> > $$
> > \partial_i(Jz - JZ\partial_zZ)_j = \partial_j(Jz - JZ\partial_zZ)_i
> > $$
> > computing these derivatives we obtain
> > $$
> > J_{ji} -(\partial_zZ^t J \partial_zZ)_{ji} = J_{ij} -(\partial_zZ^t J \partial_zZ)_{ij}
> > $$
> > but $J$ and $\partial_zZ^t J \partial_zZ$ are both antisymmetric matrices, and this contraint is satisfied only if it equals zero:
> > $$
> > J = \partial_zZ^t J \partial_zZ
> > $$
> > which is equivalent to $Z$ symplecitc. $\square$
> 

This also implies that symplectic transformation dependent on time are also canonical.
