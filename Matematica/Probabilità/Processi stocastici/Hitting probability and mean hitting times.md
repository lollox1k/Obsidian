Let $(X_n)_{n \geq 0}$ be a Markov chain with transition matrix $P$. 
The _first hitting time_ of a subset of states $A \subseteq I$ is the random variable $H^A: \Omega \to \mathbb{N} \cup \{\infty\}$ defined by
$$
H^A = \inf \{n \in \mathbb{N} \,:\, X_n \in A\}
$$
with the usual convenction that the infimum of the empty set is $\infty$.
**Remark** Note that it's a [[Stopping times|stopping time]].

The probability starting from state $i$ that $(X_n)_{n\geq 0}$ ever hits $A$ is
$$
h_i^A := \mathbb{P}_i(H^A < \infty)
$$
when $A$ is a closed class, $h_i^A$ is called an _absorption probability_.

The _mean hitting time_ for $(X_n)_{n\geq 0}$ reaching $A$ is given by
$$
k_i^A := \mathbb{E}_i(H^A) = \sum_{n \geq 0} n \mathbb{P}_i(H^A = n) + \infty \mathbb{P}_i(H^A = \infty)
$$
### Computing $h_i^A$ and $k_i^A$ 

Consider the example
![[Pasted image 20230313180833.png]]

it's a $4$ state Markov chain with absorptin states $0$ and $3$.
Let $h_i = \mathbb{P}_i(\text{hit }3)$ and  $k_i = \mathbb{E}_i(\text{time to hit } \{0,3\})$. 
Clearly,

- $h_0 = 0$
- $h_1 = \frac{1}{2}h_0 + \frac{1}{2}h_2$
- $h_2 = \frac{1}{2}h_1 + \frac{1}{2}h_3$
- $h_3 = 1$

and
- $k_0 = 0$
- $k_1 = 1+ \frac{1}{2}k_0 + \frac{1}{2}k_2$
- $k_2 = 1+\frac{1}{2}k_1 + \frac{1}{2}k_3$
- $k_3 = 0$
these linear systems can be solved to obtain $h_1 = 1/3$, $h_2 = 2/3$ and $k_1=k_2 = 2$.

**Theorem** The vector of hitting probabilities $h^A = (h_i^A)_{i \in I}$ is the minimal non-negative solution to the system of linear equations
$$
\begin{cases}
h_i^A = 1 \quad \text{ for } i \in A \\
h_i^A = \sum_j p_{ij}h_j^A \quad \text{ for } i \notin A \\
\end{cases}
$$
In matrix form $h^A = \tilde P h^A$ where $\tilde P$ is the matrix obtained by removing  
the $i$-th row and column when $i \in A$.

**Proof** We first show that $h^A$ satisfies this equations. If $X_0 = i \in A$ then $H^A = 0$, so $h_i^A = 1$ (is finite a.s.).
If $i \notin A$ 
$$
h_i^A = \mathbb{P}_i(H^A < \infty) = \sum_{j \in I} \mathbb{P}_i(H^A < \infty \,\cap\, X_1 = j)
$$
since the events $X_1 = j$ form a partition of $\Omega$. Using the definition of conditional probability
$$
= \sum_{j \in I} \mathbb{P}_i(H^A < \infty \vert x_1 = j) \mathbb{P}_i(X_1 = j)
$$
note that $\mathbb{P}_i(X_1 = k) = p_{ij}$. 
Given that $i \notin A$, $H^A \geq 1$. Then 
$$
H^A = \inf \{n \geq 0 \,:\, X_n \in A\} = \inf \{n \geq 1 \,:\, X_n \in A\}
$$
We can define a "new" Markov chain $\tilde X_n := X_{n+1}$ that w.r.t $\mathbb{P}_i(\cdot \,|\, X_1 = j)$ is $Markov(\delta_j, P)$ by the [[Markov property]].

$$
\mathbb{P}_i(H^A < \infty \vert X_1=j) = \mathbb{P}_j(H^A < \infty) = h_j^A
$$
so that 
$$
h_i^A = \sum_{j \in I} p_{ij}h_j^A
$$
Suppose now that $x = (x_i)_{i \in I}$ is any solution, then $h_i^A = x_i = 1$ for $i \in A$. Suppose $i \notin A$, then
$$
x_i = \sum_{j \in I} p_{ij}x_j = \sum_{j \in A} p_{ij} + \sum_{j \notin A} p_{ij}x_j
$$
substitute for $x_j$ to obtain
$$
x_i = \sum_{j \in A} p_{ij} + \sum_{j \notin A} p_{ij}\left(\sum_{k \in A} p_{jk} + \sum_{k \notin A} p_{jk}x_k\right)
$$
$$
= \mathbb{P}_i(X_1 \in A) + \mathbb{P}_i(X_1 \notin A,\, X_2 \in A) + \sum_{j \notin A}\sum_{k\notin A} p_{ij}p_{jk}x_k
$$
we can reiterate the substitution, after $n$ steps one gets
$$
= \mathbb{P}_i(X_1 \in A) + \mathbb{P}_i(X_1 \notin A,\, X_2 \in A)+ \dots + \sum_{J_1 \notin A}\dots \sum_{j_n \notin A} p\dots x_{j_n}
$$
since $x$ is non-negative, so is the last term. Notice that the remaining terms add to the probability of $\mathbb{P_i}(H^A \leq n)$ (each term is the probability of $H^A = l$). Then
$$
x_i \geq \mathbb{P}_i(H^A \leq n)
$$
we can take the limit as $n\to\infty$ on both sides to get the desired inequality. $\square$

