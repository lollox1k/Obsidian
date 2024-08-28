---
tags: review
aliases:
cssclass:
---
 
> [!theorem]
> The hamiltonian $H$ is invariant wrt a one parameter group of [[Symplectic transformations|symplectic]] diffeomorphism if and only if there exists a function $K$ such that the one parameter group is the [[Hamiltonian flows|hamiltonian flow]] of $K$ and $K$ is an integral of motion for $H$.
> > [!proof]-
> > Since every symplectic flow $\Psi$ is generated by an hamiltonian flow for some function $K$, we are left to prove that $K$ is also an integral of motion. 
> > The one-parameter group satisfies the flow equation:
> > $$
> > \frac{d}{ds} \Psi^s(z) = u(\Psi^s(z)) = J\partial_z K(\Psi^s(z))
> > $$
> > The invariance of $H$ wrt to $\Psi$ is just:
> > $$
> > \partial_s H(\Psi^s(z)) = 0
> > $$
> > computing this derivative and using the frist identity
> > $$
> > \partial_z H(\Psi^s(z)) \cdot J \partial_z K(\Psi^s(z)) = 0 \quad \forall s
> > $$
> > but this is just the [[Poisson's brackets]] computed at $\Psi^s(z)$, so that this is true iff
> > $$
> > \{H,k\} = 0 
> > $$
> > which implies that $K$ is a constant of motion. $\square$


To compute the integral of motion $K(z)$ given the flow $\Psi^s(z)$, solve the equation:
$$
\partial_z K(z) = -J \frac{d}{ds}\Psi^s(z)\big|_{s=0}
$$