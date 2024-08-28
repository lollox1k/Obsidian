---
tags: review
aliases:
cssclass:
---
 
One of the advantages of the Hamilton formulation over the Lagrangian is the reduction of degrees of freedom given a cyclic coordinate. Recall that a generalized position $q_i$ is said to be cyclic if $\partial_{q_i}H = 0$, i.e. the Hamiltonian/Lagrangian doesn't depend on $q_i$. 

>  [!definition]
>  A generalized position $q_i$ is said to be **cyclic** if the Hamiltonian/Lagrangian does not depend on $q_i$:
> $$
> \partial_{q_i} H = 0 \qquad \partial_{q_i}L = 0
> $$ 

# Lagrangian vs Hamiltonian: reduction of DOF

> [!example] 
> Consider the lagrangian of the Kepler problem in  the plane in polar coordinates:
> $$
> L(\rho, \theta, \dot\theta) = \frac 12 \dot \rho^2 + \frac 12 \rho^2 \dot\theta^2 - V(\rho)
> $$
> Applying the [[Lagrage equations]] we find 
> $$
> \begin{cases}
> \ddot\rho = \rho \dot \theta^2 - V'(\rho)\\
> \frac d {dt} (\rho^2\dot \theta) = 0
> \end{cases}
> $$
which shows that the quantity $\rho \dot \theta^2$ (angular momentum) is an integral of motion. Sadly, we can't use this information to help us solve the equation for $\rho$. 
If we use insted the Hamilitonian formalism:
>$$
>H(\rho, p_\rho, \theta, p_\theta) = \frac 12 p_\rho^2 + \frac 1{2\rho^2} p_\theta^2 + V(\rho)
>$$
>and equations of motions
>$$
>\begin{cases}
>\dot\rho = p_\rho \\
>\dot p_\rho = \frac {p^2_\theta}{\rho^3} - V'(\rho) \\
>\dot \theta = \frac {p_\theta}{\rho^2} \\
>\dot p_\theta = 0
>\end{cases}
>$$
>Again the conjugate moment of $\theta$ is an integral of motion, but now we can use this fact to solve the previous equation, using $p_\theta$ as a parameter which depends on initial conditions.








