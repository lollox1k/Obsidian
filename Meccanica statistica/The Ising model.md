


### Finite volume pressure

### Infinite volume pressure
**Proposition** In the thermodynamic limit the **pressure** 
$$
\psi(\beta, h) := \lim_{\Lambda_n \uparrow \mathbb{Z}^d} \frac{1}{|\Lambda_n|} \log Z_{\Lambda_n}^\#(\beta,h)   
$$
is well defined, indipendent of the sequence $\Lambda_n$ and the boundary conditions. Moreover $\psi$ is convex in $\mathbb{R}_{\geq 0} \times \mathbb{R}$ and symmetric in $h$ (like the finite volume pressure). 

**Proof** 
1. **A new Hamiltonian $\mathcal{\overline H}$**
First a trick to ensure that the interaction energy across boudaries is always positive:
writing $(\omega_i\omega_j -1)+1$ in the Hamiltonian one can write
$$
\mathcal{H}_{\Lambda, \beta,h}^\#(\omega) = \mathcal{\overline H}_{\Lambda, \beta,h}^\#(\omega) -\beta| E_\Lambda|
$$
Let $\Lambda_1 \cap \Lambda_2 = \emptyset$, then 
$$
\mathcal{\overline H}_{\Lambda_1 \cup \Lambda_2}(\omega) = \mathcal{\overline H}_{\Lambda_1}(\omega) + \mathcal{\overline H}_{\Lambda_2}(\omega) + R
$$
where the interaction energy $R$ is
$$
R = -\beta \sum_{i\sim j \,\,\, i\in\Lambda_1\,\,\, j \in \Lambda_2} (\omega_i\omega_j -1) \geq 0
$$
so that 
$$
\mathcal{\overline H}_{\Lambda_1 \cup \Lambda_2}(\omega) \geq \mathcal{\overline H}_{\Lambda_1}(\omega) + \mathcal{\overline H}_{\Lambda_2}(\omega)
$$
but this implies that the partition function is submultiplicative (it's also translation invariant by definition):
$$
\overline Z_{\Lambda_1 \cup \Lambda_2} \leq \overline Z_{\Lambda_1}\overline Z_{\Lambda_2}
$$
2. **Existence of the limit for sequences of boxes $\mathcal{R}$** 
so that the pressure is subadditive. Using [[Limite di successioni subadditive#Lemma Fekete|Fekete's lemma]] we know that the following limit exists:
$$
\lim_{n\to\infty} \frac{1}{|\Lambda_n|} \log \overline Z_{\Lambda_n, \beta, h} = \inf_n \frac{1}{|\Lambda_n|} \log \overline Z_{\Lambda_n, \beta, h}
$$
also since $\mathcal{\overline H} \leq -\beta(-2|E_\Lambda|) +|h||\Lambda|$ we can bound from below the partition function
$$
\overline Z_{\Lambda, \beta, h} \geq e^{\ln2 |\Lambda| +2\beta|E_\Lambda| + |h||\Lambda|}
$$
and the pressure
$$
\frac{1}{|\Lambda_n|} \log \overline Z_{\Lambda_n, \beta, h} \geq \ln 2 + |h| + 2\beta \frac{|E_{\Lambda_n}|}{|\Lambda_n|} \geq Const.
$$
note that the number of edges is bounded for example by $d|\Lambda|$ (view the lattice a a graph and use the [[Handshake Lemma]]).
So the $\inf$ is a finite number, and the limit exists.

Now the existence of this limit implies the existence of the pressure, since they differ by a term
$$
\lim_{n\to\infty}\frac{1}{|\Lambda_n|} \log Z_{\Lambda_n, \beta, h} = \lim_{n\to\infty}\frac{1}{|\Lambda_n|} \log \overline Z_{\Lambda_n, \beta, h}  - \beta\frac{|E_{\Lambda_n}|}{|\Lambda_n|}
$$

the last term (which also has a limit since we can apply Feket's lemma) can be computed and is equal to
$$
\lim_{n\to\infty} \frac{|E_{\Lambda_n}|}{|\Lambda_n|} = d
$$
So we have proven the existence of the pressure for any sequences of rectangles that converges to $\mathbb{Z}^d$. 

3. **estenzione a sequenze di volumi nel senso di Van Hove**
To extend this result to any sequence $\Lambda_n \uparrow \mathbb{Z}^d$ in the sense of Van Hove, the idea it to approximate any volumes by rectangles, the Van Hove condition ensures that in the limit the difference goes to zero.

![[Pasted image 20220909170512.png]]

Consider the simple sequence of cubes $B_n = \{-n,\dots,n\}^d$.  Since this is a sequence of rectangles such that $B_n \uparrow \mathbb{Z}^d$, we now that the limit
$$
\lim_{n\to\infty} \frac{1}{|B_n|} \log Z_{B_n,\beta,h} = \psi(\beta,h)
$$
We now decompose a generic volume $\Lambda_n$ in disjoint translates of boxes $B_k$, for a given $k$ such that $\Lambda_n \subset [\Lambda_n] := \cup D_k$

We need to show that in the limit the difference of the pressure goes to zero, i.e. we want to exstimate:
$$
\vert \psi_{\Lambda_n}  - \psi\vert \leq \vert \psi_{\Lambda_n} - \psi_{[\Lambda_n]}\vert + \vert \psi_{[\Lambda_n]}-\psi_{B_k}\vert + \vert \psi_{B_k}-\psi\vert
$$
Given ant $\epsilon > 0$, for any $k \geq k_1$ we now that the last term is less than $\epsilon$ since $\psi_{B_k} \to \psi$.

Let's compute $\mathcal{H}_{[\Lambda_n]}$:
$$
 \mathcal{H}_{[\Lambda_n]} = \sum_j  \mathcal{H}_{B_k^{(j)}} + W_n
$$
Where the term $W_n$ is the energy due to the interaction between the regions $B_k$. The interaction can be bounded by
$$
|W_n| \leq 2d\beta  \frac{| [\Lambda_n]|}{|B_k|}(2k+1)^{d-1} = 2d\beta |[\Lambda_n]|(2k+1)^{-1}
$$
so that 
$$
\frac{|[\Lambda_n]|}{|B_k|} \mathcal{H}_{B_k} - 2d\beta |[\Lambda_n]|(2k+1)^{-1}\leq\mathcal{H}_{[\Lambda_n]} \leq \frac{|[\Lambda_n]|}{|B_k|} \mathcal{H}_{B_k} + 2d\beta |[\Lambda_n]|(2k+1)^{-1}
$$
$$
\left| \mathcal{H}_{[\Lambda_n]} - \frac{|[\Lambda_n]|}{|B_k|} \mathcal{H}_{B_k} \right| \leq 2d\beta |[\Lambda_n]|(2k+1)^{-1}
$$
from this follows that the partition function is bounded by
$$
e^{-2d\beta |[\Lambda_n]|(2k+1)^{-1}} Z_{B_k}^{\frac{|[\Lambda_n]|}{|B_k|}} \leq Z_{[\Lambda_n]} \leq e^{+2d\beta |[\Lambda_n]|(2k+1)^{-1}} Z_{B_k}^{\frac{|[\Lambda_n]|}{|B_k|}}
$$
so that the pressure
$$
|\psi_{[\Lambda_n]} - \psi_{B_k}| \leq 2d\beta(2k+1)^{-1} < \epsilon
$$
for $k$ big enough, say $\forall k \geq k_2$.

Let us write $\Delta_n := [\Lambda_n] \setminus \Lambda_n$, then it's easy to see that 
$$
|\mathcal{H}_{[\Lambda_n]}(\omega) - \mathcal{H}_{\Lambda_n}(\omega|_{\Lambda_n})| \leq (2d\beta + |h|)|\Delta_n|
$$
so that for the partition function
$$
Z_{[\Lambda_n]} = \sum_{\omega \in \Omega_{[\Lambda_n]} } e^{-\mathcal{H}_{[\Lambda_n]}(\omega)} \leq \sum_{\omega \in \Omega_{[\Lambda_n]} } e^{-\mathcal{H}_{\Lambda_n}(\omega|_\Lambda) + (2d\beta + |h|)|\Delta_n|}
$$
$$
= 2^{|\Delta_n|} Z_{\Lambda_n}e^{(2d\beta + |h|)|\Delta_n|}
$$
the same can be down for a lower bound. This yields
$$
|\log Z_{\Lambda_n} - \log Z_{[\Lambda_n]}| \leq (2d\beta + |h|)|\Delta_n|
$$

we now use the Van Hove condition, since we can bound the number of spins in $\Delta_n$ by
$$
|\Delta_n| \leq |B_k||\partial^{in}\Lambda_n|
$$
from this
$$
\left|\psi_{\Lambda_n} - \frac{1}{|\Lambda_n|}\log Z_{[\Lambda_n]}\right| \leq (2d\beta + |h|)|B_k|\frac{|\partial^{in}\Lambda_n|}{|\Lambda_n|}
$$
for $n$ big enough, the right side is smaller than $\epsilon$. Also the term inside the absolute values approches the pressure $\psi_{[\Lambda_n]}$ since
$$
1 \leq \frac{|[\Lambda_n]|}{|\Lambda_n|} = 1 + \frac{|\Delta_n|}{|\Lambda_n|} \leq 1 + |B_k| \frac{|\partial^{in}\Lambda_n|}{|\Lambda_n|} \to 1 
$$

4. **Indipendence of boundary condition

This follows from the fact that
$$
| \mathcal{H}^\eta_\Lambda(\omega) - \mathcal{H}_\Lambda(\omega)| \leq (2d\beta + |h|)|\partial^{in}\Lambda|
$$
so the finite volume pressures differ by a $O(|\partial^{in} \Lambda| / |\Lambda|$) which vanishes in the termodinamic limit thanks to the Van Hove condition. $\square$




