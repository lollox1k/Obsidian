>[!definition]
>A subgroup $H$ of a group $G$ is called _normal subgroup_ if it's invariant under conjugation:
>$$
>gNg^{-1} = N \qquad \forall g \in G
>$$
>usually denoted by $H \lhd G$.

This definition is equivalent to saying the left and right cosets are equal, $gN = Ng$.

It turns out that the kernel of some group homomorphism is a normal subgroup. Let $\phi : G \to S$ be an homomorphism, consider $a \in Ker(\phi)$, then
$$
\phi(gag^{-1}) = \phi(g)\phi(a)\phi(g^{-1}) =  \phi(g)e\phi(g^{-1}) = e
$$
which also implies $gag^{-1} \in \ker(\phi)$. 

