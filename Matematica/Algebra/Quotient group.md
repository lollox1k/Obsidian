> [!definition]
> Given a [[Normal subgroup]] $H$ of a group $G$, the _quotient group_ $G \setminus H$ is the set of cosets with the group operation:
> $$
> gH * fH := (gf)H
> $$

This definition works because it does not depend on the choice of representative: suppose $aH = xH$ and $bH = yH$. This means we can find $h_a, h_x, h_b, h_y \in H$ such that $ah_a = xh_x$ and $bh_b = yh_y$.
$$
(ab)H = (a\,h_b^{-1}yh_y)H = (ah_b^{-1} y)H = (h_a^{-1}x h_x h_b^{-1}y)H
$$
