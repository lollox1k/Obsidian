Note **heavily** based on [Kinetic Theory](https://www.damtp.cam.ac.uk/user/tong/kintheory/kintheory.pdf) by David Thong.

---
# From Liouville to BBKGY
Our starting point is simply the Hamiltonian dynamics for $N$ identical point particles:
$$
H = \sum_{i=1}^N \frac{p_i^2}{2m} +V(q_i) +\sum_{i < j} U(x_j-x_i)
$$
The Hamiltonian contains an external force $F =−\nabla V$ that acts equally on all particles. There are also two-body interactions between particles, captured by the potential energy $U(q_j − q_i)$.  At some point in our analysis we will need to assume that this potential is: **short-ranged**, meaning that $U(q) \simeq 0$ for $|q| >> d$ where, as in the last Section, $d$ is the atomic distance scale.

Our interest in this section will be in the evolution of a probability distribution, $f(q,p,t)$ over the $6N$ dimensional phase space. Since it's a probability distribution we require
$$
\int f(q,p,t)\,d\Gamma = 1 \qquad d\Gamma = \prod_{i=1}^N d^3q_i d^3p_i
$$
Since _probability is locally conserved_, it must obey a _continuity equation_:
$$
\partial_t f + \nabla \cdot (u f) = 0
$$
which is [[Liouville equation]]. Since $u = J\partial_z H$ is an [[Hamiltonian flows|hamiltonian flow]], which is incompressible ($\nabla \cdot u=0$), Liouville equations simplifies to a [[Equazione del trasporto|transport equation]]
$$
\partial_t f + \sum_{i=1}^N\partial_{p_i}H\partial_{q_i}f - \partial_{q_i}H\partial_{p_i}f = 0
$$
which can be rewritten using [[Poisson's brackets]] as
$$
\partial_t f + \{f,H\} = 0
$$
from this we see that $\frac{d}{dt}f = 0$. So in the case of hamiltonian flows, Liouville theorem can be stated as **probability density doesn't change along any trajectory in phase space**.

Doing computation with the hamiltonian defined at the beginning, and using variables $(x,v)$, excluding the external force, we find:
$$
\partial_t f + \sum_{i=1}^n\left[ v_i \cdot \partial_{x_i}f +\sum_{j \neq i} F(x_i-x_j)\cdot \partial_{v_i}f \right] = 0
$$

We’ll focus not on the probability distribution for all $N$ particles but instead on the _one-particle distribution function_, which is simply the marginal distribution
$$
f_1(q,p,t) = \int \prod_{i=2}^N d^3q_id^3p_i f
$$
Although we seem to have singled out the first particle for special treatment in the above expression, this isn’t really the case since all $N$ of our particles are identical.

The knowledge of $f_1$ captures many properties of the macroscopic system:
**Average number of particles** in $q$
$$
n(q,t) = N \int d^3p f_1(q,p,t)
$$
**Average velocity**
$$
u(q,t) = N \int d^3p \frac{p}{m} f_1(q,p,t)
$$

We’d like to derive an equation governing $f_1$. To see how it changes with time, we can simply integrate every particle $i > 1$ from liouville's equations:
$$
\partial_t f_1 = \int \prod_{i=2}^N d^3q_id^3p_i \,\partial_t f = \int \prod_{i=2}^N d^3q_id^3p_i \{H,f\}
$$
We will do this computation in general for the $j$-particle probability function $f_j$, defined in the obvious way:
$$
f_j(x_1,\dots,x_j; v_1,\dots, v_j) = \int \prod_{i=j+1}^N d^3x_id^3v_i f
$$
where we stared using $(x,v)$ as conjugate variables. 
With the assumption that $f$ is smooth and with compact support at $t=0$ and $U$ is smooth, we can see that $f(t)$ is still smooth and with compact support for every $t$, this justifies any derivative/integral exchange. 

To find the time depence of $f_j$ we integrate Liouville equation in $x_{j+1}$ and $v_{j+1}$. The term $\partial_t f$ becames $\partial_t f_j$, the second term is
$$
\int \prod_{i=j+1}^N d^3x_id^3v_i \sum_{k=1}^n\left[ v_k \cdot \partial_{x_k}f +\sum_{l \neq k} F(x_l-x_k)\cdot \partial_{v_k}f \right]
$$
f $k \geq j+1$, we can use integration by parts to move the derivatives of $f$ to the other variables, we then get a $f$ evaluated at the boundary, which is zero by our compact support assumption, and the integral is simply zero since $\partial_x v = \partial_v x = 0$.  When $k \leq j$ we simply exchange the derivative with the integral:
$$
 = \sum_{k=1}^{j} \int \prod_{i=j+1}^N d^3x_id^3v_i \, [v_k \cdot\partial_{x_k}f + \sum_{l \neq k} F(x_l-x_k)\cdot \partial_{v_k}f]
$$
we can take out the transport term
$$
\sum_{k=1}^k v_k \cdot \partial_{x_k}f_j
$$
the interaction term is trickier. Consider the interaction between the $j$-particles, meaning $l \leq k$ we can again exchange integrals and the derivative
$$
\sum_{k=1}^j \sum_{l \neq k, l \leq j} \int \prod_{i=j+1}^N d^3x_id^3v_i \,F(x_l-x_k) \cdot \partial_{v_k}f = \sum_{k=1}^j \sum_{l \neq k, l \leq j} F(x_l-x_k) \cdot \partial_{v_k}f_j
$$
while the interaction of the $j$-particles with the other $N-j$ is
$$
\sum_{k=1}^j \sum_{l > j} \int \prod_{i=j+1}^N d^3x_id^3v_i \,F(x_l-x_k) \cdot \partial_{v_k}f
$$
since $f$ is invariant for indices permutation, each term is indipendent of the particular $l$ (they are beeing integrated), just choose $l = j+1$, and integrate the other variable, so that we have $N-j$ terms
$$
\int \prod_{i=j+1}^N d^3x_id^3v_i \,F(x_{j+1}-x_k) \cdot \partial_{v_k}f = \int d^3x_{j+1}d^3v_{j+1} \,F(x_{j+1}-x_k) \cdot \partial_{v_k}f_{j+1}
$$
Putting all togheter we find:
$$
\partial_t f_j + \sum_{i=1}^j v_j \cdot \partial_{x_i} f_j + \sum_{i=1}^j \sum_{h\neq i}^j F(x_h-x_i)\cdot \partial_{v_i}f_j + \sum_{i=1}^j (N-j) \int d^3 x_{j+1} d^3 v_{j+1} F(x_{j+1}-x_i) f_{j+1}
$$

They are telling us that *any group of n particles evolves in a Hamiltonian fashion, corrected by interactions with one of the particles outside that group* 

The equation for $f_1$ reads:
$$
\partial_t f_1 + \{f_1,H_1\} + \left( \frac{\partial f_1}{\partial t}\right)_{\text{coll}}
$$
where we have defined the *one particle hamiltonian*:
$$
H_1 = \frac{p}{2m} + V(q)
$$
if there is no external force (as we assumed in the computations above) then
$$
\{f_1,H_1\} = \partial_x f_1 \cdot v
$$
which is the familiar transport term. The interesting (and complex) term is the **collision integral**

$$
\left( \frac{\partial f_1}{\partial t}\right)_{\text{coll}} = (N-1) \int F(x_2-x_1) \cdot \partial_{v_1} f_2(x_1,x_2;\,v_1,v_2) d^3x_2d^3v_2
$$
At first glance, it means that there’s no free lunch; if we want to understand everything in detail, then we’re going to have to calculate everything. We started with the Liouville equation governing a complicated function f of $N \sim O(10^{23})$ variables and it looks like all we’ve done is replace it with $O(10^{23})$ coupled equations.

However, there is an advantage is working with the hierarchy of equations because they isolate the interesting, simple variables, namely $f_1$ and other lower $f_n$. This means that the equations are in a form that is ripe to *start implementing various approximations*. Given a particular problem, we can decide which terms are important and, ideally, which terms are so small that they can be ignored, *truncating the hierarchy to something manageable*. Exactly how you do this depends on the problem at hand. Here we explain the simplest, and most useful, of these truncations: the Boltzmann equation.