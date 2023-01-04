# Formula di Caley

### Teorema 
Il numero di Alberi con vertici etichettati di ordine $n$, ovvero il numero di alberti di copertura di $K_n$, è $T(n) = n^{n-2}$.

### Dimostrazione con i codici di Prufer
Prufer ha trovato una biiezione tra alberi etichettati e stringhe di lunghezza $n-1$ di $n$ caratteri, un insieme di cardinalità facile da calcolare.

The following is an algorithm to generate the prufer code of a given tree.

**Prufer's method to assign a code to a labeled tree**
Given a tree $T$, with labeled vertices $1,\dots,n$.
1. Let $i=0$, and let $T_0=T$.
2. Find the leaf on $T_i$ with the smallest label and call it $v$.
3. Record in the sequence of label of $v$'s  (only) neighbor.
4. Remove $v$ from $T_i$ and create a new $T_{i+1}$.
5. If $T_{i+1} = K_2$, then stop. Otherwise $i++$ and go back to step 2.



### Dimostrazione con la teoria delle specie

### Dimostrazione per ricorrenza con i coefficienti multinomiali
Sia $T(n; d_1, \dots d_n)$ il numero di alberi di copertura di $K_n$ con gradi dei vertici (etichettati) fissati. Siccome un albero è connesso deve valere $d_i \geq 1 \;\forall i \in [n]$. 
Quindi $T(n; d_1, \dots d_n) = 0$ se almeno uno dei $d_i = 0$.

Inoltre siccome è un albero sappiamo che:
$$
\sum_i d_i = 2(n-1)
$$
Ora sommiamo su tutte le sequenze di gradi ammissibili:
$$
T(n) = \sum_{(d_1,\dots,d_n)} T(n; d_1,\dots d_n) \quad \sum_i d_i = 2n-2 \text{ e } d_i \geq 1 \;\forall i
$$
**Osservazione** Si deve notare che la successione dei gradi in un albero etichettato (in generale, in un grafo qualunque), _non determina il grafo_ stesso.

Vogliamo trovare una relazione di ricorrenza su questi numeri, faremo vedere che vale:
$$
T(n;d_1,\dots\, d_n) = \sum_{i=1}^n-1 T(n-1; d_1, \dots d_{i-1}, \dots \,, d_n)
$$