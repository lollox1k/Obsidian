# Graph Isomorphism

Dua grafi $G = (V(G), E(G))$ e $H = (V(H), E(H))$ sono *isomorfi* se esiste una biiezione tra i vertici $f : V(G) \mapsto V(H)$ tale che $\forall u,v \in G$:

$$
\{u,v\} \in E(G) \iff \{f(u),f(v)\} \in E(H)  
$$
### Oss
Sia $f$ che $f^{-1}$ sono *omeomorfismi* (morfismo).

> Quindi per verificare che due grafi sono isomorfi devo trovare una biiezione che preserva le adiacenze.

**Remark** E' chiaro che $G \cong H$ se e solo se $G^c \cong H^c$.

# Graph Homomorphism
Dua grafi $G = (V(G), E(G))$ e $H = (V(H), E(H))$ sono *omeomorfi* se esiste una biiezione tra i vertici $f : V(G) \mapsto V(H)$ tale che $\forall u,v \in G$:

$$
\{u,v\} \in E(G) \implies \{f(u),f(v)\} \in E(H)
$$

### Def 
Un *Automorfismo* è un isomorfismo da $G$ in se.

### Oss
Il numero di biiezioni da un insieme finito $X$ in se stesso, sono le *permutazioni*, pertanto sono $\vert X \vert!$. Questo è un upperbound sugli automorfismi di un grafo.

## Classe di isomorfismo di G
L'insieme di tutti i grafi isomorfi a $G$.

## Problema di decisione

Dati due grafi $G$ e $H$, sono isomorfi? $G \cong H$ ?
Questo problema si rivela essere $NP$-complete. 

