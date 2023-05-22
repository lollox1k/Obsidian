### Definitions
Let $(X_n)_{n\geq 0}$ be a [[Discrete time Markov chains|Markov chain]] with transition matrix $P$. Define
$$
H_i = \inf\{n \geq 0\,:\, X_n = i\} \quad \text{hitting time on } i
$$
$$
T_i = \inf\{n \geq 1\,:\, X_n = i\} \quad \text{first passage time to } i
$$
using the convention $\inf{\emptyset} = \infty$.
**Remark** They are different only if $X_0 = i$.

We can definte the $r$-th passage time to $i$, setting $T_i^{(0)}=0$ and for $r \geq 1$
$$
T_i^{(1)} = T_i \qquad T_i^{(r+1)} := \inf \{n > T_i^{(r)}\,:\, X_n = i\}
$$
and the excursion time beetween visits
$$
S_i^{(r)} := 
\begin{cases}
T_i^{(r)} - T_i^{(r-1)} \quad\text{ if } \quad T_i^{(r-1)} < \infty\\
0 \qquad \qquad \qquad\text{ otherwise }
\end{cases}
$$
this explain our choice for $T_i^{(0)}$.

The following lemma should be obvious.
**Lemma** For $r = 2,3,\dots$ the random variable $S_i^{(r)}$ is independent of $H_{T_i^{(r-1)}}$ and for all $n\geq 0$ 
$$
P_i(S_i^{(r)} = n\,|\, T_i^{(r-1)}< \infty) = P_i(S_i^{1}=n) = P_i(T_i = n)
$$
**Proof** Since $T_i^{r-1}$ is a [[Stopping times|stopping time]], by the [[Markov property|strong Markov property]] 
$$
\tilde X_n := X_{T_i^{(r-1)}+n} \quad Markov(\delta_i,P) 
$$
$$
\tilde T_i = \inf \{n \geq 1 \,:\, \tilde X_n = i\}
$$
using the definition of the excurtion time
$$
\{S_i^{(r)} = n\} = \{T_i^{(r)} - T_i^{(r-1)}=n \,,\, T_i^{(r-1)} < \infty\}
$$
$$
= \{\tilde T_i = n, T_i^{(r-1)} < \infty\}
$$
so the probability
$$
P_i(\{\tilde T_i = n\} \,|\, T_i^{(r-1)} < \infty) = P_i(T_i = n) = P_i(S_i^{(1)} = n) \quad\square
$$

Other useful definitions are:
$$
V_i = \sum_{n=0}^\infty \mathbb{1}_{X_n=i} \quad \text{number of visits to } i
$$
$$
f_i = P_i(T_i < \infty) \text{ return probability to }i
$$
$$
m_i = \mathbb{E}[T_i] \text{ mean return time to }i
$$
**Def** (Recurrent state) We say that the state $i$ is _recurrent_ if 
$$
i \text{ recurrent} \iff P_i(V_i = \infty) = 1
$$
a non-recurrent state is called _transient_.

There is a link beetween recurrent and and return probability.

**Lemma** For all $r \geq 0$, $P_i(V_i > r) = f_i^r$.
**Proof** By induction. The base case $r=0$ is true (with the convention $0^0 = 1$). Assume it holds for $r$. 
$$
P_i(V_i > r+1) = P_i(T_i^{(r+1)} < \infty) = P_i(T_i^{(r+1)}< \infty,\, T_i^{(r)}< \infty)
$$
or equivalently using the excurtion time
$$
= P_i(S_i^{(r+1)}< \infty, \, T_i^{(r)}< \infty)
$$
using the definition of conditional probability
$$
= P_i(S_i^{(r+1)}< \infty \,|\, T_i^{(r)}< \infty)P_i(T_i^{(r)}< \infty)
$$
$$
= \sum_{n\geq 0}  P_i(S_i^{(r+1)} = n \,|\, T_i^{(r)}< \infty)P_i(T_i^{(r)}< \infty)
$$
using the strong Markov property
$$
= \sum_{n \geq 0} P_i(T_i=n)P_i(T_i^{(r)}< \infty)
$$
$$
= P_i(T_i < \infty)P_i(T_i^{(r)}< \infty) = f_i\,f_i^r = f_i^{r+1} \quad \square
$$
since $T_i^{(r)} < \infty$ is the same event as $V_i > r$.

**Theorem** the dicotomy...