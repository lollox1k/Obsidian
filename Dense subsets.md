---
tags: review
aliases:
cssclass:
---
 
**Proposition** A subset $Y \subseteq X$ is dense iff for every non-empty open set $O \subseteq X$ we have that $Y \cap O \neq \emptyset$.

**Proof** $(\implies)$ Since $Y$ is dense, this menas that the closure of $Y$ is the entire set $X$:
$$
\overline Y = X
$$
pick any non-empty open set $O$, then this is an open neighborhood of one of its elements. By definition of the closure, $O \bigcap Y \neq \emptyset$.
$(\impliedby)$ Suppose that $x \notin \overline Y$. Then there exists a neighborhood of $x$ such that $N(x) \cap Y = \emptyset$. $\square$

