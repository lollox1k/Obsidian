
### Definitions
**Def** Let $I \subseteq \mathbb{R}$ be an interval and $P = \{x_1,\dots,x_n\} \subset I$ a _partition_. We define the _variation_ of a funtion $f: I \to \mathbb{R}$ w.r.t. partition $P$ as
$$
V(f,P) := \sum_{i=1}^{n-1} |f(x_{i+1}) - f(x_i)|
$$
and the _total variation_ of $f$ as the supremum on all partitions
$$
Var(f,I) := \sup_{P \text{ part. of}\, I} V(f,P)
$$
If this quantity is finite, we say that $f$ has _bounded variation_ and we denote the set of all bounded variation functions on $I$ as $BV(I)$.

If $I = [a,b]$ then we write $V_a^b[f]$ (notation from Kolmogorov-Fomin).

### Properties
Let $f : [a,b] \to \mathbb{R}$.
1. If $f$ is monotone, then $f \in BV([a,b])$ and $V_a^b[f] = |f(b)-f(a)|$, since if w.l.o.g. $f$ is non-decreasing we can drop the absolute values and get a telescopic sum
$$
V(f,P) = \sum_{i=1}^{n-1} f(x_{i+1}) -f(x_i) = f(x_n) -f(x_i) \leq f(b) - f(a)
$$
2. If $f$ is [[Lipschitz]] with constant $L$ then $V_a^b[f] \leq L(b-a)$, since
$$
V(f,P) \leq L \sum_{i=1}^{n-1}|x_{i+1}-x_i| \leq L(b-a)
$$
3. If $f \in C^1[a,b]$ then 
$$
V_a^b[f] = \int_a^b |f'(x)|dx
$$
if we use the [[Teorema di Lagrange|mean value theorem]] 
$$
Var(f,P) = \sum_{i=1}^{n-1} |f'(\xi_i)|(x_{i+1}-x_i)
$$
but the supremum on all partitions of $[a,b]$ is the definition of the Riemann-Darboux intergral of $|f'|$. 

4. Let $a < b < c$, then
$$
V_a^b[f] + V_b^c[f] = V_a^c[f]
$$
since 
$$
Var(f,P) = \sum_{i=1}^r |f(x_{i+1}) -f(x_i)| + \sum_{i=r+1}^{n-1} |f(x_{i+1}) -f(x_i)| \leq V_a^b[f] + V_b^c[f]
$$
where we have split the sum such that $\{x_1,\dots x_{r+1}\} \subset [a,b]$ and $\{x_{r+1}, \dots x_n\} \subset [b,c]$.

Let $P_1$ and $P_2$ be two partitions of the intervals $[a,b]$ and $[b,c]$ such that $\forall \epsilon > 0$
$Var(f, P_1) > V_a^b[f] - \epsilon$ and $Var(f, P_2) > V_b^c[f] - \epsilon$. Since $P_1 \cup P_2$ is a partition for $[a,c]$ 
$$
V_a^c[f] \geq Var(f,P_1 \cup P_2) > V_a^b[f] + V_b^c[f] -2\epsilon
$$
since $\epsilon$ was arbitrary the claim follows.

This implies, since the total variation is a non-negative quantity, that the function $v : [a,b] \to [0,\infty]$ defined as
$$
x \mapsto V_a^x[f]
$$
is _monotonic non-decreasing_. 
From this follows a cool decomposition theorem.

**Theorem** (Jordan's decomposition of BV functions) Let $f : I \to \mathbb{R}$ be a function of bounded variation, $f \in BV() 



**Oss** The set $BV(I)$ forms a linear space (with sum and scalar multiplication defined in the obbious way), since
1. $Var(\alpha f, I) = |\alpha|Var(f,I)$ 
2. $Var(f+g, I) \leq Var(f,I) + Var(g,I)$ since $\sup(A+B) \leq \sup(A) + \sup(B)$.

**Oss** Since $Var(f,I) = 0$ iff $f$ is a constant function, $Var(\cdot,I)$ is a _seminorm_ on this linear space. 