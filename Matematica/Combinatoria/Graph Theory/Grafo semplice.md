# Def
Un grafo semplice $G$ è una tupla $(V,E)$ con $V$ insieme *finito* e $E \subseteq \binom{V}{2}$.


### Notazione
il simbolo è lo stesso del coefficiente binomiale (la cardinalità massima è quella) ma intendiamo tutti i sottoinsieme di cardinalità esattamente 2 (è diverso dal prodotto cartesiano $V\times V$). In generale:
$$
\binom{X}{k} := \{ A \in 2^X \,\text{ t.c. }\, \vert A \vert = k\}
$$
$V = V(G)$ vertice del grafo $G$
$E = E(G)$ archi del grafo $G$

Se $\{u,v\} \in E$ si dice che i vertici $u$ e $v$ sono *adiacenti*.
Se $u \in e \in E$ si dice che il vertice $u$ è *incidente* sull'arco $e$.
Se $e = \{u,v\}$ i vertici $u$ e $v$ si dicono *estremi* dell'arco $e$.
L'*intorno* di un vertice $v$ è l'insieme dei vertici adiacienti. $\Gamma_G(v)$.
Il *grado di un vertice* $v$ è il numero di archi incidenti ovvero $d(v) = \vert \Gamma_G(v)\vert$.
Il *grado di un grafo* è il grado massimo dei suoi vertici: $d(G) = \max_v d(v)$
Un *vertice isolato* ha grado nullo.
Un grafo si dice *regolare, uniforme* se tutti i vertici hanno lo stesso grado.
Il numero di vertici $\vert V(G)\vert$ viene detto *ordine* di $G$.
Il numero di archi $\vert E(G)\vert$ viene detto *taglia* di $G$.
Es. il grafo vuoto ha ordine $n$ e taglia nulla.
Il grafo completo biprtito $K_{n,m}$ ha ordine $n+m$ e taglia $n\cdot m$.

## Passeggiate, Cammini, Circuiti, Cicli
Una *passeggiata* (*walk*)in $G$ dal vertice $x$ ad $y$ è una successione di vertici, archi alternata:
$$
W = x,e_1,z,\dots, e_n, y 
$$
> non aggiungo altre condizioni: posso ripetere vertici ed archi

La *lughezza* della passeggiata è il numero di archi che contiene.

Un *cammino* (*trail*) impongo che gli archi siano diversi. Se è $x=y$ si chiama *circuito*.

Un *cammino semplice* (*path*) è una *passeggiata* senza ripetizioni di vertici (quindi anche di archi). Se $x=y$ si parla di *ciclo*.


## Def Sottografi
Un *sottografo* di $G$ è un grafo $G'$ tale che $V(G') \subseteq V(G)$ e $E(G') \subseteq E(G)$.
Un sottografo viene detto *ricoprente* se $V(G') = V(G)$ (tolgo solo qualche arco).
Un sottografo $G'$ viene detto *indotto* se conservo tutti gli archi possibili, una volta tolto i vertici:
$$
E(G') = E(G) \bigcap \binom{V(G')}{2}
$$
il sottografo è indotto da $V'$, un sottoinsieme dei vertici.

## Def Grafo complementare
Il complementare $\overline G$ di un grafo $G$ è:
$$
V(\overline G) = V(G) \qquad E(\overline G) = \binom{V(G)}{2} \setminus E(G)
$$
ovvero ha archi "opposti". L'unione dei due grafi è il grafo completo.


## Relazione di raggiungibilità
Se tra i vertici $x$ e $y$ esiste un cammino dico che sono raggiungibili:
$$
x \sim y \iff \exists \text{ una passeggiata da $x$ a $y$}
$$
### Oss 
E' una relazione di equivalenza du $V$.

Le classi di equivalenza sono chiamate *componenti connesse*.
$$
V(G)/\sim = V_1 \cup V_2 \cup \dots V_n
$$
definisco $\lambda(G) = n$ il numero di componenti connesse di un grafo $G$.

### Propostizione
Se $x \sim y$ allora esiste un cammino semplice tra $x$ ed $y$.

#### Dim 
Costruisco il cammino semplice a partire dalla passeggiata da $x$ ad $y$, infatti se non è semplice significa che c'è una ripetizioni di archi, quindi di vertici, ovvero $\exists i < j$ tale che: $x_i = x_j =: z$

$$
\mathcal{C} = x,e_1, x_2, e_2, \dots x_i, e_i,\dots x_j,e_j,\dots y
$$
posso rimuovere il blocco compreso tra questo stesso vertice $z$, ottengo una nuova passeggiata senza che il vertice $z$ si ripetea. Faccio lo stesso per tutti i vertici ripetuti, per induzione arrivo ad un cammino senza ripetizioni di vertici, ovvero semplice. $\square$


## Metrica 
Definiamo una metrica sull'insieme dei vertici $V(G)$, ovvero $d: V(G)\times V(G) \mapsto \mathbb{N} \cup \{\infty\}$

$$
d_G(x,y) = 
\begin{cases}
+\infty \text{ se } x \nsim y \\
\min \{t : t \text{ lunghezza passeggiata da $x$ a $y$} \} 
\end{cases}
$$
quindi $(G, d_G)$ è uno spazio metrico.

### Oss
Sia $G'$ un sottografo di $G$, allora $d_{G'}(x,y) \geq d_G(x,y)$ 

### Oss
Se $d_G(x,y) = t$ allora esiste un cammino semplice che li collega: se non è semplice posso accorciarlo, ma è il minimo per definizione!


