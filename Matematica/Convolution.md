---
tags: review
aliases:
cssclass:
---
 
> [!definition]
> Let $u,v \in L^1(\mathbb{R}^n)$, then is well defined the function
> $$
> (u * v) (x) := \int u(x-y)v(y)\,dy
> $$
> called the **convolution product** of $u$ and $v$.


> [!proposition]
> (Young's inequality) Let $p,q,r \in [1,\infty]$ such that $p^{-1} + q^{-1} = 1+r^{-1}$. Then for all $u \in L^p(\mathbb{R}^n)$, $v \in L^q(\mathbb{R}^n)$ their convolution $u*v$ is well defined and 
> $$
> \Vert u*v \Vert_{L^r} \leq \Vert u \Vert_{L^p} \,\Vert v \Vert_{L^q}
> $$
> > [!proof]-
> > Since $|u*v| \leq |u|*|v|$ we need to prove it for $u,v$ non-negative a.e. 
> > 1. If $r=1$ then also $p=q=1$, the inequality follows from [[Fubini-Tonnelli's theorem]]:
> > $$
> > \int(\int u(x-y)v(y)dy)dx = \int(\int u(x-y)dx)v(y)dy = \Vert u \Vert_{L^1} \Vert v \Vert_{L^1} 
> > $$
> > 2. $q = +\infty$, then $p =1$ and $r = +\infty$. We can use [[Holder's inequality]] and then take the $\sup$.
> > $$
> > (u*v)(x) = \int u(x-y)v(y)dy \leq \Vert u \Vert_{L^1}\, \Vert v \Vert_{L^\infty}
> > $$
> > 3. $r \in (1,\infty]$ and $p,q \in [1,\infty)$. We can write
> > $$
> > u(x-y)v(y) = [u(x-y)^p v(y)^q]^{1/r} [u(x-y)^p]^{1/p - 1/r} [v(y)^q]^{1/q-1/r}
> > $$
> > notice that on the right we have conjugate exponents, use [[Holder's inequality]]:
> > $$
> > (u*v)(x) \leq [u^p*v^q]^{1/r} \Vert u \Vert_{L^p}^{1-p/r} \Vert v \Vert_{L^q}^{1-q/r}
> > $$
> > if $r=\infty$ just take the supremum. If $r < \infty$ elevate to $r$ and integrate and use case $1.$
> > $$
> > \Vert u*v \Vert_{L^r}^r \leq \Vert u^p*v^q \Vert_{L^1} \Vert u \Vert_{L^p}^{r-p} \Vert v \Vert_{L^q}^{r-q} \leq  \Vert u \Vert_{L^p}^r \Vert v \Vert_{L^q}^r \quad \square
> > $$

# Regularization properties 

> [!proposition]
> Let $u \in C_c(\mathbb{R}^n)$ and $v \in L^1(\mathbb{R}^n)$, then $u * v$ is continuous.
> > [!proof]-
> > We have 
> > $$
> > \tau_h (u * v)(x) - (u*v)(x) = (\tau_h u)*v(x)- (u*v)(x) = (\tau_h u - u)* v 
> > $$
> > since $u$ is uniformly continuous (continuous with compact support), $\tau_h u \to u$ uniformly, use Young's inequality with $r=\infty$ to conclude $\square$.
 

> [!proposition]
> Let $p \in L^1$ with $\int p dx = 1$, and call $p_\epsilon(x) := \epsilon^{-n} p(\epsilon^{-1}x)$. Then for $\epsilon \to 0$:
> 1. If $u \in L^p$ for some $p \in [1,\infty)$, then $p_\epsilon * u \to u$ in $L^p$;
> 2. If $u \in L^\infty$ and is uniformly continuous, then $p_\epsilon * u \to u$ uniformly (in $L^\infty$). 
> 
> > [!proof]-
> > Case $p \neq \infty$
> > Using the definition and a change of variables:
> > $$
> > p_\epsilon * u(x) - u(x) = \int p(z)[u(x-\epsilon z)-u] dz
> > $$
> > taking the $L^p$ norm, and using [[Minkowsky's inequality|Minkowsky's integral inequality]] we find
> > $$
> > \Vert p_\epsilon * u - u \Vert_{L^p} \leq \int |p(z)| \Vert \tau_{\epsilon z} u - u \Vert_{L^p} dz
> > $$
> > but in $L^p$ with $p \neq \infty$ the translation operator $\tau$ is continuous, so the integrand goes to zero. To pass the limit inside we use the [[Dominated convergence theorem]], noting that 
> > $$
> > |p(z)| \Vert \tau_{\epsilon z} u - u \Vert_{L^p} \leq |p(z)| 2\Vert u \Vert_{L^p}
> > $$
> > Case $p = \infty$. Now we need that $u$ is uniformly continuous to make sure that $\Vert \tau_h u - u\Vert_{L^\infty} \to 0$ as $h\to 0$. Again use the same argument. $\square$


We can use this regularization property to show that $c_c^\infty(\Omega)$ is dense in $L^p(\Omega)$ for $p \in [1, \infty)$.

> [!proposition]
> (Density of test functions in $L^p$). Let $\Omega \subseteq \mathbb{R}^n$ open. Then $C_c^\infty(\Omega)$ is a dense subset of $L^p(\Omega)$ for any $p \in [1,\infty)$.
> > [!proof]-
> > Let $u \in L^p(\Omega)$ and fix $\delta > 0$. Let $K_i$ be a sequence of compact sets such that $\cup_i K_i = \mathbb{R}^n$, consider the restrictions $u_i := \chi_{K_i} u$. Then
> > $$
> > \Vert u_i - u \Vert_{L^p} = \int |u|^p \chi_{\Omega \setminus K_i}\,dx
> > $$
> > using [[Dominated convergence theorem]] it's easy to see that $u_i \to u$ in $L^p$. 
> > Now fix $i$ such that $\Vert u_i - u \Vert_{L^p} < \delta/2$. The next step is to regularize $u_i$: since $(u_i)_\epsilon \to u_i$ in $L^p$ we can find an $\epsilon > 0$ small enough such that
> > $$
> > \Vert (u_i)_\epsilon - u_i \Vert_{L^p} < \delta/2
> > $$
> > with support in $\Omega$.
> > We know that $\psi := (u_i)_\epsilon \in C_c^\infty(\Omega)$, and using the triangle inequality we find:
> > $$
> > \Vert \psi - u \Vert_{L^p} \leq \Vert \psi - u_i \Vert_{L^p} + \Vert u_i - u \Vert_{L^p} < \delta \quad \square
> > $$
> 
