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

**Proposizione** Sia $G$ un grafo con $\delta(G)\geq 2$ (grado minimo almeno $2$). Allora esiste un ciclo.
**Dim** Sia $P$ un cammino massimale, e $u\in V$ uno dei suoi estremi. Siccome $d(u) \geq \delta(G) \geq 2$,  $u$ ha almeno un altro vicino. Se questo vicno non fosse già nel cammino, potrei costruire un cammino più lungo, contro la massimalità. Dunque esiste almeno un ciclo. $\square$

Vediamo una semplice caratterizzazzione dei cicli $C_n$.
**Proposizione** Un grafo connesso $G$. Allora $G$ uniforme di grado $2$ se e solo se $G=C_n$.
**Dim** 
- ($\impliedby$) Banale.
- $(\implies)$ Per la proposizione precedente esiste un ciclo $C \subseteq G$. Supponiamo per assurdo che $\exists v \in V(G)$ tale che $v \notin C$. Siccome $G$ è connesso, risco a trovare un vertice $x \in C$ ed uno $y \notin C$ tali che $\{x,y\} \in E(G)$. Ma allora $d(x) \geq 3$, assurdo. $\square$

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


## Combinatoria estremale dei grafi

Vogliamo rispondere alla seguente domanda:
Qual è il numero massimo di archi $D(n)$ affinchè un grafo di ordine $n$ sia sconnesso?

Supponiamo abbia solo due componenti connesse, se infatti ne avesse di più, potrei aggiungere archi  collegando le compoenti connesse, mantenendo il grafo sconnesso. Le componenti connesse partizionano i veritci in due sottoinsiemi di cardinalità $x$ ed $n-x$. Supponiamo di aver massimizzato gli archi nelle due componenti, ovvero sono i grafi $K_n$ e $K_{n-x}$, il numero di archi è in totale:
$$
|E(K_x)| + |E(K_{n-x})| = \frac{x(x-1)}{2} + \frac{(n-x)(n-x-1)}{2}
$$
non ci resta che ottimizzare questa quantità rispetto ad $x$ vincolato a valori $0<x<n$.
Un punto stazionario del polinomio è $x=\frac{n}{2}$, (si può scegliere la parte intera superiore o inferiore), che tuttavia è un minimo! dalla convessità risulta che l'ottimo è sui bordi (si possono usare le [[Condizioni di ottimalità Duali KKT]])

![[Pasted image 20221207140030.png]]
**caso n = 4**

Si può far il ragionamento più smart minimizzando il numero di archi tolti che rendono possibile la sconnessione: $x(n-x)$, che ha minimo proprio in $x=1$ e $x=n-1$. In questi punti il numero di archi è:
$$
D(n) = \frac{(n-1)(n-2)}{2} = \binom{n-1}{2}
$$

**Corollario**
Se $G$ ha ordine  $> D(n)$ allora è connesso.

### Lemma connessione
  Un grafo connesso ad $n$ vertici ha almeno $n-1$ archi.
**Dim**
Per induzione:
$n=1$, niente da dimostrare. 
Supponiamo ora di avere un grafo connesso di ordine $n$, facciamo vedere che deve avere almeno $n-1$ archi. Costruiamo un suo sottografo rimuovendo un vertice $x \in V(G)$ $H = G \setminus \{x\}$. Il grafo ottenuto non è necessariamente connesso, siano $C_1,\dots,C_k$ le sue componenti connesse. In ogni componente connessa possiamo possiamo usare l'ipotesi induttiva:
$$
\forall i = 1,\dots,k \qquad |E(C_i)| \geq |V(C_i)|+1
$$
Ma tutte le $C_i$ sono connesse al vertice $\{x\}$, quindi ho soppresso almeno $k$ archi. Mettendo tutto insieme:
$$
|E(G)| \geq \sum_{i=1}^k |E(C_i)| +k \geq \sum_{i=1}^k (|V(C_i)|-1)+k = |V(G)|-1
$$
Dove il meno uno alla fine è il vertice $x$ che avevo rimosso. $\square$

Una domanda analoga: 
### Lemma aciclico
Qual è il numero massimo di archi per un grafo di ordine $n$ tale che sia aciclico: $n-1$.

**Dim** Per induzione:
$n=1$, niente da dimostrare.
Supponiamo $n>1$, in questo caso esiste almeno un vertice $v \in V(G)$ di grado uno, altrimenti avrei un ciclo per la [[Grafo semplice#Passeggiate, Cammini, Circuiti, Cicli|proposizione]] sopra (se il grafo non ha archi la disuguaglianza è soddisfatta). Creo un sottografo $H = G \setminus \{v\}$. $H$ continua ad essere aciclico, ma è di ordine $n-1$. Per ipotesi induttiva, vale $|E(H)| \leq |V(H)|-1$. Ma per come l'abbiamo costruito:
$$
|E(G)| = |E(H)|+1 \leq |V(H)| = |V(G)| - 1 \qquad \square
$$






