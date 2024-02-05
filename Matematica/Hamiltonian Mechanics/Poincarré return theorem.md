
> [!theorem]
> Let $\Phi$ be a measurable bijection on the set $\Omega$, with measurable inverse and that preserves measures. Then for all measurable sets $A$ with positive measure, there exists $n > 0$ such that
> $$
> \mu(A \cap \Phi^n(A)) > 0
> $$
> in particular there exists $x \in A$ such that $x \in \Phi^n(A)$.
>> [!proof]-
>> By contradiction, suppose there exists a positive measure measurable set $A \subseteq \Omega$ such that $\mu(A \cap \Phi^k(A)) = 0$ for all $k > 0$. Since the sets $A, \Phi(A), \Phi^2(A),\dots$ are disjoint:
>> $$
>> \mu(\bigcup_{k\geq0} \Phi^k(A)) = \sum_{k=0}^\infty \mu(\Phi^k(A)) = \sum_{k=0}^\infty \mu(A) = +\infty
 >> $$
 >> which is a contradiction since $\mu(\Omega) < +\infty$. So there exists two distinct integers $h > m > 0$ such that
 >> $$
 >> \mu(\Phi^h(A) \cap \Phi^m(A)) > 0
 >> $$
 >> by applying the inverse $\Phi^{-m}$, which also preserves the measure we find:
 >> $$
 >> \mu(\Phi^{h-m}(A) \cap A) > 0
 >> $$
 >> we have found our integer $m = h-m$. $\square$

> [!theorem]
> Let $B \subseteq \Omega$, then the set $A \subset B$ of points of $B$ that do not return ($\Phi^n(x) \notin B$ for all $n > 0$) has zero measure.
> > [!proof]-
> > We look for a similar contraditction, first see that the sets $A, \Phi(A), \Phi^2(A),\dots$ are all disjoint, since otherwise we could find points that return. This implies:
> >$$
> > \mu(\bigcup_{k\geq0} \Phi^k(A)) = \sum_{k=0}^\infty \mu(\Phi^k(A)) = \sum_{k=0}^\infty \mu(A) < \infty
> >$$ 
> >which implies that $\mu(A) = 0$. $\square$

We can be more quantitve in a metric space using $\epsilon$-balls. 

## Poincarré return theorem (Arnold)

**Theorem** Let $g$ be a continuous, bijective transformation that preserves volumes defined in Euclidean space to itself. Suppose that there exists a finite measure region $D$  such that $gD = D$ ($g$ maps $D$ into itself). Then for every neighourhood $U$ of every point of $D$, there exists a point $x \in U$ that eventually returns in $U$, that is 
$$
g^n x \in U \qquad \text{ for some } n > 0
$$
**Proof** Consider the images of the neighborhood $U$:
$$
U, gU,\, \dots\,, g^nU
$$
since $g$ preserves volumes, they have the same (non-zero) volume. If they didn't intersetc, the volume of $D$ would be infinite, so there exists some $k, l \geq 0$, $k > l$ such that
$$
g^kU \bigcap g^lU \neq \emptyset
$$
since $g$ is bijective, we can define its inverse. Applying the inverse of $g^l$ we get
$$
g^{k-l}U \bigcap U \neq \emptyset
$$
since this set is non-empty, we have just showed that there exists an element $y \in g^{k-l}U \bigcap U$ that is inside the starting neighborhood $U$ and also in $g^{k-l}U$. One could pick $y = g^{k-l}x$. $\square$

