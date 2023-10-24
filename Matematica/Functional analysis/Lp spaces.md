Let $\mu$ be a positive measure on the set $E$, and $u : E \to \mathbb{C}$ a measurable function, then we can define
$$
\Vert u \Vert_{L^p} := \left( \int_E |u|^p d\mu\right)^\frac 1p, \quad p \in (0, +\infty),
$$
$$
\Vert u \Vert_{L^\infty} := \inf \{C \,:\, |u| \leq C\quad a.e.\}
$$


For $p \in [1,+\infty]$ these functions are a _norm_. The only non-trivial condition to check is the triangle inequality: [[Minkowsky's inequality]].

Also $\Vert u \Vert  = 0$ if $u = 0$ a.e., so it's a semi-norm. Just work with the equivalence classes, where $u \sim v$ iff $u=v$ a.e.

In the case of finite measure space, there is a nice inclusion property:
**Proposition** Suppose $(X,\mathcal{A}, \mu)$ is a finite measure space $(\mu(X) < \infty)$ and $0 < p < q < \infty$. Then
$$
\Vert u \Vert_p \leq \mu(X)^{\frac{q-p}{pq}} \,\Vert u \Vert_q
$$
in particular $L^q \subseteq L^p$.

**Proof** Let $u \in L^q$, Apply [[Holder inequality]] to $u^p$ and $1$. Since we want on the right the $q$ norm, use as  indices $\frac{q}{p}$ and its conjugated:
$$
\Vert u^p \cdot 1 \Vert_1 \leq \Vert u \Vert_q^p \cdot \Vert 1 \Vert_{\frac{q}{q-p}}
$$
$$
\Vert u \Vert_p^p \leq \Vert u \Vert_q^p \,\mu(X)^{\frac{q-p}q} \quad \square
$$


**Proposition** Let $p \in [1, +\infty]$. The space $L^p(\mu)$ is complete: suppose that $\{f_n\}$ is a sequence such that $\forall \epsilon > 0$, there exists $N \geq 0$ such that
$$
\Vert f_j - f_k \Vert_p < \epsilon, \quad \forall i,k \geq N
$$
(The sequence is Cauchy). Then there exists an element $f \in L^p$ such that
$$
\lim_{n\to\infty} \Vert f- f_n\Vert_p =0
$$

**Proof** 


