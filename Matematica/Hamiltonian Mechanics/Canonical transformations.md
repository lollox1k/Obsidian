---
tags: review
aliases:
cssclass:
---
 
# Point transformations for Lagrangian

Recall that the Eulero-Lagrange equations are invariant under point transformations: let $L= L(q,\dot q, t)$ be a lagrangian and $s = s(q,t)$ new variables with inverse $q = q(s,t)$. Then the new variables $s$ solve the new lagrangian $\tilde L(s, \dot s, t) = L(q(s,t), \dot q(s, \dot s, t), t)$: 

The key observation is that 
$$
\dot q = \frac q s \dot s + \frac {\partial q}{\partial t}
$$
We now check
$$
\partial_s L = \partial_q L \partial_s q + \partial_{\dot q} L \partial_s \dot q  
$$
and 
$$
\begin{aligned}
\frac{d}{dt} \partial_{\dot s} L &= \frac {d}{dt} (
\partial_{\dot q}L \partial_{\dot s} \dot q) \\
	&=  
 \frac{d}{dt}(\partial_{\dot q}L)\partial_{\dot s} \dot q + (\partial_{\dot q}L)\frac{d}{dt}\partial_{\dot s} \dot q
  \\
 &= \partial_q L \partial_{\dot s} \dot q + (\partial_{\dot q}L)\frac{d}{dt}\partial_{\dot s} \dot q
 \end{aligned}
$$
since $L$ satisfied the lagrangian equations for $q$, plus some other equalites and we get
$$
\frac{d}{dt} \partial_{\dot s} L = \partial_s L
$$


# Canonical transformations

> [!definition]
> A transformation 
> $$
> \begin{cases}
> Q = Q(q,p,t) \\
> P = P(q,p,t)
> \end{cases}
> $$
> is said to be **canonical** if for every function $H(q,p,t)$ exists a function $K(Q,P,t)$ such that $(q,p)$ satisfies Hamilton equations for the hamiltonian $H$ if and only if $(Q,P)$ satisfies Hamilton equations for the hamiltonian $K$.

In the Lagrangian formalism any point transformation preserves the lagangian nature of motion, it's now true however that any transformation of coordinates and momenta preserves the hamiltonian nature of motion. We will see that canonical transformation are a bigger class than only coordinate point transformation, this is another advantage of the Hamiltonian formalism.  A simple example of a canonical transformation that is not a point transformation is the exchange:
$$
Q = -p \qquad P = -q
$$
Clearly any point transformation of the coordinates $q$ is a canonical transformation.

We can find an elegant condition for a transformation to be canonical starting from the [[principle of stationary action|variational principle]]. We can think of the action $S$ as the integral on the extended phase space $\mathbb{R}^{2n} \times \mathbb{R}$ along a curve that joins $(q_0, p_0, 0)$ to $(q_1, p_1, T)$ of the $1$-form:
$$
p\cdot dq - H dt
$$
Let $\lambda \mapsto (q(\lambda), p(\lambda), t(\lambda))$ one such curve with $\lambda \in [0, \overline \lambda]$, then
$$
S = \int_\gamma (p\cdot dq - H dt) = \int_0^{\overline \lambda} [p(\lambda) \partial_\lambda q(\lambda) - H(q(\lambda), p(\lambda), t(\lambda))\partial_\lambda t(\lambda) ]\,d\lambda
$$
with the physics assumption that $\lambda \mapsto t(\lambda)$ monotone, we can reparametrize all in function of $t$ and get the familiar action integral:
$$
S = \int_0^T [p(t) \dot q(t) - H(q(t),p(t),t)]\,dt
$$

If following a transformation the hamiltonian system $H$ transforms into another hamiltonian system $K$, then the two functionals:
$$
S = \int_0^T p \dot q - H\,dt \qquad \tilde S = \int_0^T P\dot Q - K dt
$$
must have the same stationary points if they have the same boundary values. A sufficient condition for that to happen is that 
$$
p\,dq - H dt = P dQ -Kdt + dG
$$
_the $1$-forms differ by an exact differential_:
$$
\int_\gamma (pdq-Hdt) = \int_{\tilde\gamma} (PdQ- Kdt) + \int_{\tilde\gamma} dG
$$
since 
$$
\int_{\tilde\gamma} dG = G(q_1, p_1, T) - G(q_0, p_0, 0)
$$
is a constant  (the endpoints values are fixed). Then $S$ and $\tilde S$ shares the same stationary points. 

> [!theorem] 
> If the transformation $(q,p) \mapsto (Q, P)$ given $H$ there exists functions  $K$ and $G$ such that:
> $$
> p dq - H dt = P dQ - Kdt + dG
> $$
> then the transformation sends the hamiltonian sytstem $H$ with variables $(q,p)$ to another hamiltonian system $K$ with variables $(Q,P)$.
> > [!proof]-
> > All the above discussion. $\square$

> [!theorem] 
> If the transformation $(q,p) \mapsto (Q, P)$ is such that for every fixed $t$:
> $$
> p dq  = P dQ  + dG
> $$
> then the transformation is canonical.
> > [!proof]-
> > Let's find a function $K$ that satisfies the hypothesis of the previous theorem by equating coefficients of $dt$ 
> > $$
> > -H = P \partial_t Q - K + \partial_t G
> > $$
> > this relation defines $K$. Note that if the transformation doesn't depend on time, then $K(Q,P,t)= H(q(Q,P), p(Q,P), t)$, so it's the same Hamiltonian written with the new variables. $\square$


