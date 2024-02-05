The power of the hamiltonian formalism resides in it's [[Canonical transformations]]. If we can find the right transformation, maybe the equations of motions are trivial, for example:
$$
\begin{cases}
\dot Q = 0 \\
\dot P = 0 \\
\end{cases}
$$
is there a method to find such transformations? One could search for a [[Generating functions]] $S$ such that the new hamiltonian is zero:
$$
K = H + \partial_tS  = 0
$$
where $S(q,P,t)$ is a genereting function of type $2$, so that $\partial_q S = p$. 
We find the PDE:
$$
H(q, \partial_q S(q,P,t),t) + \partial_tS(q,P,t) = 0
$$
which is the **Hamilton-Jacobi equation**, a first-order partial differential equations. We can see that the $P_i$s are constant of integration, we can use this freedoom to our advantage. 

# Hamilton characteristic function 

In the case of time independent hamiltonian, we can use separation of variables, and try to find solution of the form
$$
S(q,P,t) = W(q,P) - tP_n
$$
where the $P_n$ is the last momentum. Substituting this into HJ we find
$$
H(q, \partial_qW(q,t)) = P_n
$$
from this we see that $P_n = E = H(q_0,p_0)$. Our goal is to assign to each new momentum $P$ an integral of motion, we start with the one we know for sure, the energy $E$. If we find such $W$, we have a generating function that gives us new canonical variables:
$$
\begin{aligned}
Q_i &= \partial_{P_i} W(q,P) \\
p_i &= \partial_{q_i} W(q,P)
\end{aligned}
$$
which can be inverted if $\det{\partial_{q, P}^2 W} \neq 0$.
in these new variables the motion is trivial since the new hamiltonian $K = P_n$
$$
\begin{aligned}
\dot Q_i = 0 \\
\dot Q_n =  1 \\
\dot P_i = 0
\end{aligned}
$$
