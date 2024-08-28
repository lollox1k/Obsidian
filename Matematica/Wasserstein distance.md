---
tags: review
aliases:
cssclass:
---
 
> [!definition]
> Given two probability [[Misura[measures]]] $\mu$ and $\nu$, their **Wasserstein distance** $W_p$ is defined as
> $$
> W_p(\mu,\nu) := \left(\inf_{P \in \Gamma(\mu,\nu)} \int |x-y|^p P(dx,dy) \right)^{1/p}
> $$
> where $\Gamma(\mu,\nu)$ is the set of all joint probability distribution of $\mu$ and $\nu$, meaning $P$ has $\mu$ and $\nu$ as marginals.

> [!theorem]
> Let $K \subset \mathbb{R}^n$ be a compact set, denote by $\mathcal{P}(K)$ the set of all probability measures on $K$. Then $W_1$ is a [[Spazio metrico|metric]] on $\mathcal{P(K)}$ and $\mathcal{P(K)}$ is compact w.r.t. the topology induced by $W_1$. Furthermore convergence in $W_1$ is equivalent to weak $*$-convergence:
> $$
> \mu_n \rightharpoonup \mu \quad\iff\quad W_1(\mu_n,\mu) \to 0
> $$
> > [!proof]-
> > Suppose $W_1(\mu_n,\mu) \to 0$. Then thanks to the duality form we knot that for every $\varphi \in Lip_1(K)$:
> > $$
> > \int \varphi(d\mu_n-\mu) \to 0
> > $$
> > and by linearity, the same follows for every [[Lipschitz]] function. By density, for every $C(K)$. This shows that convergence in $W_1$ implies weak convergence.
> > To prove the converse, pick for every $n$, pick a function $\varphi_n \in Lip_1(K)$ such that
> > $$
> > W_1(\mu_n, \mu) \leq \int \varphi_n(d\mu_n-d\mu) + \frac{1}{n} 
> > $$
> > which exists by definition of $\sup$. Since $\varphi_n + c \in Lip_1(K)$ for any constant, we can assume that the $\varphi_n$ have zero mean, but $Lip_1(K)$ functions with zero mean are also bounded by $\mu(K)$ and _uniformly equicontinuous_, so we can apply [[Ascoli-Arzelà theorem]], and there exists a subsequence $\varphi_{n_k}$ which converges uniformly to $\varphi$. We are done, since
> > $$
> > \int\varphi_n(d\mu_n-d\mu) = \int(\varphi_n - \varphi) d\mu_n- \int (\varphi_n-\varphi) d\mu + \int \varphi (d\mu_n-d\mu)
> > $$
> > the first two terms on the right go to zero by uniform convegence, the last term by $\mu_n \rightharpoonup \mu$. $\square$


---

# Characterization

> [!proposition]
> **Kantorovich duality**
> $$
> W_1(\mu,nu) = \sup_{\varphi,\psi \in C(K), \varphi(x)+\psi(y) \leq |x-y|} \int \varphi d\mu + \int \psi d\nu
> $$
> > [!proof]-
> > Let $M$ be the set of probability measures on $K\times K$, clearly $\Gamma(\mu,\nu) \subseteq M$. Let $\gamma \in M$ and consider
> > $$
> > \sup_{\varphi,\psi \in C(k)} \int \varphi(x) \mu(dx) + \int \psi(y)\nu(dy) - \int \varphi(x)+\psi(y) \gamma(dx,dy).
> > $$
> > If $\gamma \in \Gamma(\mu,\nu)$ this expression is zero, if $\gamma \notin\Gamma(\mu,\nu)$ we can make the expression non-zero, and by scaling $\varphi$ and $\psi$ by a constant, arbitrary big so the $\sup$ is $+\infty$. We can use this fact to take the $\inf$ on $M$, with the added $+\infty$ cost if the constraint is not respected:
> > $$
> > W_1 = \inf_{\gamma \in M} \sup_{\varphi,\psi \in C(k)} \int |x-y| \gamma(dx,dy) + \int \varphi(x) \mu(dx) + \int \psi(y)\nu(dy) - \int \varphi(x)+\psi(y) \gamma(dx,dy)
> > $$
> > we exchange $\inf$ and $\sup$ without discussing why it's possibile $\dots$
> > The $\inf$ is now only in terms with $\gamma$:
> > $$
> > \inf_{\gamma \in M} \int |x-y| \gamma(dx,dy) - \int \varphi(x) + \psi(y) \gamma(dx,dy) 
> > $$
> > clearly if $\varphi(x)+\psi(y) \leq |x+y|$ the $\inf$ is with $\gamma = 0$, otherwise if $\varphi(x)+\psi(y) > |x+y|$ for some values, by concentrating the measure $\gamma$ on these values, and scaling we can get the inf to $-\infty$. Since after this we take the $\sup$, this is just another constraint on $\varphi$ and $\psi$. $\square$

> [!proposition]
> Let $Lip_1$ be the set $1$-Lipshitz function, then
> $$
> W_1(\mu,\nu) = \sup_{\varphi \in Lip_1} \int \varphi (d\mu-d\nu)
> $$
> > [!proof]-
> > We prove that this is equivalent to the Kantorovich duality. Let $\varphi \in Lip_1$, then
> > $$
> > \varphi(x) - \varphi(y) \leq |\varphi(x) - \varphi(y)| \leq |x-y|
> > $$
> > so if we choose $\varphi = \varphi$ and $\psi = -\varphi$ in the Kantorovich duality, we find that
> > $$
> > \sup_{\varphi,\psi \in C(K), \varphi(x)+\psi(y) \leq |x-y|} \int \varphi d\mu + \int \psi d\nu \geq \sup_{\varphi \in Lip_1} \int \varphi (d\mu-d\nu)
> > $$
> > We now prove the other inequality. Given $\varphi$ and $\psi$ such that $\varphi(x)+\psi(y) \leq |x-y|$, we define the function $\psi^*(x)$ as
> > $$
> > \psi^*(y) := \inf_x |y-x| -\psi(x)
> > $$
> > since $\varphi(x) \leq |y-x| - \psi(y)$, this holds also for the $\inf$, so that $\varphi \leq \psi^*$. We also see that 
> > $\psi(x) + \psi^*(y) \leq |y-x|$.
> > We go further and define
> > $$
> > \psi^{**}(y) := \inf_x |y-x| -\psi^*(x)
> > $$ 
> > and again using the previous inequality $\psi(x) \leq \psi^{**}(y)$. From this follows that
> > $$
> > \int \varphi d\mu + \int \psi d\nu \leq \int \psi^* d\mu + \int \psi^{**}d\nu
> > $$
> > It's easy to see that $\psi^* \in Lip_1$, furthermore $\psi^*(y) = -\psi(x)$. Taking the $\sup$ the desired inequality follows. $\square$  

> [!proposition]
> The function $W_1$ is a metric.
> > [!proof]-
> > - Symmetry is trivial.
> > - Suppose $W_1(\mu,\nu) = 0$. We can write that $\gamma$ is a transport plan for $\mu$ and $\nu$ using [[Pushforward measure]]:
> > $$
> > \mu = \gamma \circ Pr_1^{-1} \qquad \nu = \gamma \circ Pr_2^{-1}
> > $$
> > where $Pr_1$ and $Pr_2$ are projection maps. The key observation is that $\gamma$ is _concentrated along the diagonal_, call the function $f : x \mapsto (x,x)$. Then
> > $$
> > \mu \circ f^{-1} = \gamma \circ Pr_1^{-1} \circ f^{-1}
> > $$
> > but on the diagonal $D$ , $Pr_1^{-1} \circ f^{-1} = Id_D$. Then
> > $$
> > \nu = \gamma \circ Pr_2^{-1} = \mu \circ f^{-1} \circ Pr_2^{-1} = \mu
> > $$
> > since again $f^{-1} \circ Pr_2^{-1} = Id_X$. 
> > - The triangle inequality follows easily from the $Lip_1$ characterization, since the $\sup$ of the sum is less or equal to the sum of the $\sup$s. $\square$ 

---
# Empirical measure

Given $N$ samples $z=\{z_1,z_2,\dots, z_N\}$ their associated **empirical measure** is defined as:
$$
\pi(z) := \frac 1N \sum_{i=1}^N \delta_{z_i}
$$

It turns out that under suitable assumptions, any measure $\mu$ can be approximated by an empirical measure, meaning that $W_1(\pi,\mu)\to 0$ when the number of samples $N \to \infty$.

> [!theorem]
> Let $\mu$ be a probability measure with compact support $K \subset \mathbb{R}^d$, let $z_i \sim \mu$ be i.i.d. Then
> $$
> \int W_1(\pi(z), \mu) \mu^{\otimes N}(dz) \to 0
> $$
> that is, the expected balue of the wasserstein distance converges to zero.
> >[!proof]-
> > Since $K$ is compact, we cover it with $L = c \epsilon^{-d}$ subsets $Q_k$ of diamter of order $c\epsilon$, and write
> > $$
> > p_k := \int_{Q_k} \mu, \qquad \sum_k p_k = 1
> > $$
> > Pick $N$ $z_i$, and call the random variable "the number of $z_i \in Q_k$" $N_k$. Suppose now that $N_k > 0$. We build a new singular measure $\tilde \pi$ defined as
> > $$
> > \tilde \pi := \frac 1N \sum_{i=1}^N \frac {p_h}{N_h}\delta_{z_i} \qquad z_i \in Q_h 
> > $$
> > with this definition $\tilde\pi$ and $\mu$ assign the same mass to $Q_h$
> > Glivenko-Cantelli $\dots$ $\square$