# Metodo di Richardson stazionario

Sono metodi iterativi della forma:
$$
x^{k+1} = x^k + \alpha P^{-1}r^k \qquad r^k := b - Ax^k, \quad \alpha > 0
$$
quindi metodi lineari stazionari del prim'ordine.
Il parametro reale $\alpha$ viene detto _parametro di accelerazione_, e la matrice $P \in \mathbb{C}^{n\times n}$ non singolare è detta _precondiziontore_.

Esplicitando il resto, il metodo assume la forma:
$$
x^{k+1} = (I-\alpha P^{-1}A)x^k + \alpha P^{-1}b
$$

