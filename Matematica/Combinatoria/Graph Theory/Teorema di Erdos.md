# Teorema di Erdos
In generale vale il lower bound:
$$
\omega(G) \leq \chi(G)
$$
**Oss** Per i cicli dispari vale $\omega(C_{2k+1}) < \chi(C_{2k+1})$.

**Domanda** Quando può essere grande il divario tra il numero di clique e il numero cromatico?
**Risposta** Può essere esponenzialmente più grande del numeri di clique.

Più precisamente:
Per $k \geq 4$, esiste un grafo $G$ con:
1. $\vert V(G)\vert \geq 2^{k/2}$;
2. $\alpha(G) < k$;
3. $\omega(G) < k$

Questo, sfruttando il [[Colorazione di grafi#Relazioni con gli altri invarianti| lower bound]]
$$
\frac{\vert V(G) \vert}{\alpha(G)} \leq \chi(G)
$$
mostra come il numero cromatico posso essere esponenzialmente più grande di quello di clique.

### Dim 

Sia $n = 2^{k/2}$, e $[n] = \{1,2,\dots, 2^{k/2}\}$.

Sia $\mathcal{G}_n := \{ G \;:\; V(G) = [n]\}$

l'insieme dei grafi etichettati su $[n]$.

Dati due grafi $G,G'$ su $[n]$ distinti, devono avere archi distinti.

