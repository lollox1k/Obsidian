---
tags: review
aliases:
cssclass:
---
 

# Stability of stationary points
Recall that an equilibrium/stationary point is a point $\overline y$ such that $f(\overline y) = 0$

A stationary point $\overline y$ is said to be:
1. **Lyapunov stable**, if for every $\epsilon > 0$ there exists a $\delta_\epsilon > 0$ such that if we start close enough $\Vert y(0) - \overline y\Vert < \delta$ then the system remains near: $\Vert y(t) - \overline y\Vert < \epsilon$ for all $y \geq 0$.
2. 1. **Asymptotically stable**, there exists a $\delta > 0$ such that if we start close enough $\Vert y(0) - \overline y\Vert < \delta$ then the system will approach the stationary point:  $\lim_{t \to \infty} \Vert y(t) - \overline y \Vert = 0$.

Given a ODEs system, a Lyapunov function is a scalar function used to study its equilibrium and stability.

> [!definition]
> A **Lyapunov function** for the ODEs:
> $$
> \dot y = f(y) \qquad f : \mathbb{R}^n \to \mathbb{R}^n
> $$
> with a stationary point $\overline y$, it's a scalar function $L : \mathbb{R}^n \to \mathbb{R}$ that is:
> 1. $C^1$
> 2. If $y \neq \overline y$ then $L(y) > 0$ and $L(\overline y) = 0$
> 3. $\dot L(y(t)) = \nabla L(y(t))\cdot f(y(t)) \leq 0$ in a neighbourhood of $\overline y$.

If we can fine a Lyapunov function for a stationary point $\overline y$, then it's _stable_. Furthermore, if condition $3$ is strengthened to $\dot L < 0$, then it's _asymptotically stable_.



