# Grafi bipartiti
Un grafo $G$ si dice _bipartito_ se esiste una partizione dei suoi vertici $V(G) = V_1 \dot\cup V_2$  in due sottoinsiemi disgiunti tale che:
$$
\{x,y\} \in E(G) \quad\iff\quad x \in V_1, \;y \in V_2 \text{ o viceversa}
$$
quindi $V_1$ e $V_2$ sono _stabili_.
Questo concetto si estende in modo naturale a quello di grafo _n-partito_.

**Osservazione** Abbiamo visto che se $f$ è una colorazione di un grafo $G$ allora le controimmagini dei colori definiscono una partizione di V (G) in stabili [[Colorazione di grafi#Relazioni con gli altri invarianti| vedi qui]]. 
Quindi possiamo dire che _$G$ è bipartito se e solo se $\chi(G) \leq 2$_ (il minore uguale è per includere il caso di grafo stabile, con nessun arco che è 1-colorabile e 1-partito, quindi anche 2-partito).

**Osservazione** Data la dualità tra $n$-partizione in stabili e $n$-colorabilità, in generale vale:
$$
\chi(G) = n \text{ con n cardinalità della partizione minima}
$$
**Esempio** Consideriamo il grafo _ipercubo_ di dimensione $n$ $H_n$, dove i vertici sono stringhe $\{0,1\}^n$, e sono collegati se i vertici dell'ippercubo corrispondente hanno uno spigolo tra loro (gli archi), siccome può essere bipartito è due colorabile, indipendentemente dalla dimensione $n$:
$$
V_P := \{ v \in V \;:\; v \text{ ha un numero pari di 1}\}
$$
$$
V_D := \{ v \in V \;:\; v \text{ ha un numero dispari di 1}\}
$$
è chiaramente una partizione dei vertici, i due insiemi sono indipendenti infatti se $\{x,v\} \in E(H_n)$, cambia al più una cifra della stringa: un uno diventa zero o viceversa, di conseguenza se prima gli uni (zeri) erano pari, ora diventano dispari e viceversa. $\square$

