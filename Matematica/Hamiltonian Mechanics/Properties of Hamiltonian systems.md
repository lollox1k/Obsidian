---
tags: review
aliases:
cssclass:
---
 
Hamilton equations are a system of ODEs in normal form in the _phase space_ $\mathbb{R}^n \times \mathbb{R}^n$.

1. Hamiltonian systems preserves volumes:
	**Proof** Using [[Liouville equation]], we Just need to compute the divergence:
	$$
	\text{ div }f = \partial_q (\partial_p H) + \partial_p(-\partial_qH) = 0
	$$
	so by Liouville's theorem volumes in the phase space are preserved under time evolution. $\square$
2. If $H$ doesn not depend on time, the system is [[Autonomous ODEs system|autonomus]]. Also $H$ itself is an integral of motion:
$$
\frac{d} {dt} H(q,p) = \dot q \partial_p H + \dot p \partial_q H = 0
$$

# One degree of freedom systems 

In this case the phase space is $\mathbb{R} \times \mathbb{R}$, is the Hamiltonian doesn't dependt on time and the starting condition is non-stationary, we can solve the system by integrating.
Since $H$ is an integral of motion, define the constant
$$
H_0 = H(q_0, p_0)
$$
suppose in the inital condition point $(q_0, p_0)$ is non-stationary, then at least one of the two derivatives is non-zero, wlog suppose $\partial_p H(q_0,p_0) \neq 0$. Then we can use te [[Implicit function theorem]], and find a function $q(p)$ such that 
$$
H(q, p(q)) = H_0 \qquad p(q_0) = p_0
$$
Then we need to solve the one variable autonomus system:
$$
\dot q = \partial_p H(q, p(q))
$$
which can be done by separation of variables:
$$
t = \int_{q_0}^{q(t)} \frac {dq}{\partial_p H(q, p(q))}
$$
