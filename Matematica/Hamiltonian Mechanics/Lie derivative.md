> [!definition]
Let $M$ be a [[Differentiable manifold]], and $X, Y$ two smooth vector fields on $M$, let $\Phi$ be the flow of $X$, the **Lie derivative** of $Y$ w.r.t $X$ is the vector $(L_XY)_p$ at each $p \in M$, is defined as
$$
(L_XY)_p := \frac d {dt}\Big|_{t=0} (\Phi^{-t})^* Y(\Phi^t(p))
$$

This definition is local-coordinate invariant, it generalizes the intuitive
$$
(L_Xf)_p := X(p) \cdot \nabla f(p)
$$
which is the directional derivative of $f$ along $X$.


# Euclidean case, vector field commutator

If $M = \mathbb{R}^{n}$ then the lie derivatives is simply the operator that given a smooth vector field $v$, assigns to a smooth vector field $u$ the real value:
$$
L_vu(x) = v \cdot \nabla u|_x 
$$
i.e. the rescaled directional derivative along the direction of $v$. 

If we consider the commutator beetwen such operators:
$$
[L_v, L_w] = L_vL_w - L_wL_v
$$
we see that it's also a first order differential operator since double derivatives cancels out:
$$
L_vL_w f = \sum_{j=1}^n v_j \left[ \sum_{i=1}^n \frac{\partial w_i}{\partial x_j} \frac{\partial f}{\partial x_i} + w_i \frac{\partial^2 f}{\partial x_i \partial x_j}\right]
$$
so in the commutatore the second order terms cancels out in pairs like:
$$
v_jw_i \frac{\partial^2 f}{\partial x_i \partial x_j} - w_iv_j \frac{\partial^2 f}{\partial x_j \partial x_i} = 0
$$
Since every linear first order linear operator is given by a smooth vector field, there exists a field $u$ such that:
$$
L_vL_w - L_wL_v = L_u \iff [v,w]=u
$$
where we have defined the **commutator of a vector field**.
we can see that the $i$-component is:
$$
u_i = \sum_{j=1}^n v_j \frac{\partial w_i}{\partial x_j} - w_j\frac{\partial v_i}{\partial x_j}
$$

The Jacobi-identity can be written as
$$
L_{[u,[v,w]] + [v,[w,u]]+ [w,[u,v]]} = 0
$$
since $L_v$ linear. 

