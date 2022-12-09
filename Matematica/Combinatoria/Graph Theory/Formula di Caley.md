# Formula di Caley

### Teorema 
Il numero di Alberi con vertici etichettati di ordine $n$, ovvero il numero di alberti di copertura di $K_n$, è $T(n) = n^{n-2}$.

### Dimostrazione con i codici di Prufer
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