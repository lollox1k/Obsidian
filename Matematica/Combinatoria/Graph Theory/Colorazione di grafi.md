# Colorazione di grafi

### Alcune definizioni

### Colorazione
Una **colorazione** di un [[Grafo semplice]] $G$ è una funzione $f : V(G) \mapsto C$ che mappa i vertici del grafo in un insieme finito $C$, con la proprietà che se $\{u,v\} \in E(V)$, ovvero due vertici sono adiacenti, allora $f(u) \neq f(v)$, hanno un "colore" diverso.

### Numero cromatico
Il numero cromatico di una grafo $\chi(G)$ è definito come la _minima cardinalità possibile_  di una colorazione del grafo $G$:
$$
\chi(G) := \min\{ \;\vert f(V(G))\vert \; : \; f \text{ colorazione di } G\}
$$
**Osservazione**
Se $F \subseteq G$ è sotto grafo, allora $\chi(F) \leq \chi(G)$. Infatti la restrizione della colorazione di $G$ ai vertici di $F$ è ancora una colorazione per $F$, ma il viceversa non è sempre vero. Quindi il minimo è fatto su un insieme più grande. Data una colorazione ottimale $h$ di $G$ e la sua restrizione:
$$
\chi(F) \leq \vert h(V(F))\vert \leq \vert h(V(G))\vert = \chi(G)
$$
## Relazioni con gli altri invarianti
1. **Clique**
Se un grafo $G$ ha numero di clique $\omega(G) = k$, ovvero contiene una $k$-clique, il suo numero cromatico dovrà essere maggiore di $k$: 
$$
\omega(G) \leq \chi(G)
$$
infatti ho bisogni di  $k$ colori per colorare $K_k$, che è sottografo di $G$, quindi per l'osservazione precedente
$$
\omega(G) = n = \chi(K_k) \leq \chi(G) \qquad \square
$$
2. **Stabile**
O indipendet set. Il numero di stabilità di un grafo $\alpha(G)$ è la massima cardinalità di un indipendet set contenuto in $G$. Vale $\alpha(G) = \omega (\overline G)$. Dalla definizione di colorazione, segue che le preimmagini della colorazione fissato un colore siano un insieme stabile. Quindi una colorazione è una decomposizione di un grafo in insiemi stabili.

Sia $\alpha(G)$ il numero di stabilità del grafo $G$ (l'ordine dell'insieme stabile massimo che contiene), allora vale il seguente lower-bound per il numero cromatico di $G$:
$$
\frac{\vert V(G) \vert}{\alpha(G)} \leq \chi(G)
$$
($\alpha(G \geq 1$ per ogni grafo non vuoto).
### Dim 
sfrutto il fatto che la preimmagine di una colorazione è un insieme stabile, e tutte le preimmagini sono una partizione dei veriti:
$$
V(G) = \dot\bigcup_{c \in C} f^{-1}(c) \qquad |V(G)| = \sum_{i=1}^{\chi(G)} |f^{-1}(c_i)| \leq \chi(G)\alpha(G) \quad \square
$$
**Osservazione** Se ho una $n$-partizione del grafo $G$, allora $\chi(G) \leq n$.

## Algoritmo greedy e upper bound
Da un algoritmo greedy, che procede colorando uno stabile e poi rimuovendolo dal grafo, si ottiene l'upper bound:
$$
\chi(G) \leq d(G) + 1
$$
### Lemma 
Sia $V = V_1 \dot\cup V_2$ e $G_i = G[V_i]$ i due grafi indotti. Allora:
$$
\chi(G) \leq \chi(G_1) + \chi(G_2)
$$
### Dim 
"Incollo" le due colorazioni, creando una colorazione valida sul grafo di partenza:
$$
f : V_1 \dot\cup V_2 \mapsto C_1 \cup C_2
$$
suppongo di avere colori diversi, ovvero $C_1 \cap C_2 = \emptyset$.
$$
f(v) := 
\begin{cases} 
f_1(v) \text{ se } v \in V_1 \\ 
f_2(v) \text{ se } v \in V_2 \\
\end{cases}
$$
$f$ è una colorazione di $G$ con $|f(V)| = \chi(G_1) + \chi(G_2)$, ma non è necessariamente ottima. $\square$

Dimostriamo l'upperbound per induzione sul grado del grafo.
### Dim 
**Base** $d=0$  $G$ è fatto di punti isolati, è $1$-colorabile:
$$
\chi(G) = 1 \leq 0 + 1
$$
**Ipotesi induttiva** Sia $G$ un grafo di grado $k < d$, allora $\chi(G) \leq k + 1 \leq d$.

**Passo induttivo** Facciamo vedere che se $d(G) = d$ allora vale $\chi(G) \leq d + 1$.

L'idea è costruire la colorazione in modo greedy:
1. Coloro un vertice $v$;
2. Coloro dello stesso colore tutti i veritici $w$ tali che $\{v,w\} \notin E(G)$: _costruisco uno stabile $S$ che contiene $v$_.
3. Rimuovo tutto lo stabile, cambio colore e ripeto.

**Claim** $d(G\setminus S) < d(G) = d$ 
Il grado di ogni vertice in $G\setminus S$ cala di uno, altrimenti significa che non erano collegati ad $S$, quindi sarebbero stati inclusi nello stabile. $\square$

Ho fatto, questo significa che posso usare l'ipotesi induttiva su $G\setminus S$:
$$
\chi(G\setminus S) \leq k +1 \leq d
$$
ma $G\setminus S$ ed $S$ sono una bipartizione di $G$, quindi vale $\chi(G) \leq \chi(S) + \chi(G\setminus S)$, la essendo $S$ uno stabile è $1-$colorabile. Quindi:
$$
\chi(G) \leq 1+d \qquad \square
$$


## Morale sul numero cromatico
$$
1 \leq \omega(G) \leq \chi(G) \leq d(G) + 1 \leq |V(G)|
$$
**Osservazione** Due grafi dove si raggiunge l'upper bound $d(G)+1$ sono ovviamente i grafi completi $K_n$ e i cicli di ordine dispari $C_{2n+1}$.

**Question** Sotto quali ipotesi posso invece avere $\chi(G) \leq d(G)$?

### Teorema di Brooks (1941)
Sia $G$ un grafo con $d(G) = d$. Se $G$ soddisfa le condizioni:
1. non contiene un grafo completo $K_{d+1}$;
2. se $d>2$ ($G$ non è un ciclo)
Allora $\chi(G) \leq d(G) = d$.

### Dim 
Ragioniamo per assurdo. Supponiamo esista un grafo G che rispetta **1** e **2**, e inoltre la negazione del teorema, ovvero $\chi(G) > d$, che unito al teorema precedentemenente dimostrato ci da $\chi(G) = d + 1$. Chiamiamo questa proprietà **3**. Facciamo vedere come un grafo che soffisfi **1** **2** e **3** non esista.

Per prima costa, se $G$ soddisfa queste proprietà, allora esiste un sottografo $G' \subseteq G$ che le soddsifa. Consideriamo un tale **sottografo minimale**. 

**Claim 1** $\forall x \in V(G)$ si ha che $\chi(G\setminus \{x\}) < \chi(G)$.  Consideriamo due casi:
1. $d(G \setminus \{x\}) < d(G)$. E' facile vedere che vale anche per il numero cromatico:
$$
\chi(G \setminus \{x\}) \leq d(G\setminus \{x\}) +1 < d(G) +1= \chi(G) 
$$
2. $d(G \setminus \{x\}) = d(G)$. Se non valesse il claim, ovvero:
$$
\chi(G \setminus \{x\}) = \chi(G) = d(G) + 1 = d(G \setminus \{x\}) +1
$$
ma questo va contro l'ipotesi di mininalità rispetto alle proprietà **1** **2** e **3**.

**Strategia** Prendo in $G$ un vertice $x$ di grado massimo $d$.  Vedremo come $\Gamma(x) \cup \{x\}$ induce un completo.

Il claim $1$ mostra come il numero cromatico debba scendere rimuovendo qualunque vertice, quindi in particolare un vertice $x$ di grado massimo $d$.
Posso definire una colorazione ottimale, colorando i vicini $\Gamma(x)$ con $d$ colori e $x$ con il colore $d+1$.

Quindi $x$ sarà l'unico vertice di colore $d+1$, infatti per il claim $1$ $\chi(G \setminus \{x\}) < d + 1$ . Quindi posso costruire una $d$ colorazione del grafo senza $x$. 

Chiamiamo questa colorazione $x-$ottimale.

**Claim 2** Nel sottografo indotto dai vertici $\Gamma(x) \cup \{x\}$ sono presenti tutti i $d+1$ colori (condizione necessaria affinchè sia un completo). Questo è ovvio, altrimenti se mancasse un colore, potrei usare quello per colorare $x$, ottenendo una colorazione migliore $\chi(G) = d$ ma contro l'ipotesi **3**.

**Claim 3** Mostriamo come ogni vicino di $x$ sia connesso da un cammino semplice, $x_i \sim x_j$ $\forall x_i, \,x_j \in \Gamma(x)$.

Chiamo $H_{ij}$ il sottografo bicromatico indotto dai colori $i$ e $j$, con $i \neq j$  a valori in $[d]$.

Facciamo vedere come $x_i$ e $x_j$ appartengono alla stessa componente connessa, ovvero esiste un cammino bicromatico che li collega. Chiamiamo la componente connessa dove compare $x_i$ $H \subseteq H_{ij}$. Se per assurdo $x_j \notin H$, riusciamo a costruire nuova colorazione $f^{'}$  $x-$ottimale:
$$
y \mapsto f^{'}(y) := \begin{cases} 
f(y) \text{ se } y \notin H \\
i \text{ se } f(y) = j, \; y \in H \\
j \text{ se } f(y) = i, \; y \in H
\end{cases} 
$$
> Ho scambiato il colore $i$ con $j$ nella componente connessa $H$ dove compare $x_i$, ($f(x_i) = i$). 

E' ancora una colorazione, infatti ho supposto che $x_i$ ed $x_j$ non fossero collegati, quindi lo scambio non crea problemi. Ma ora ho due vertici con il colore $j$, quindi posso definire una nuova colorazione con solo $d$ colori, ponendo $f(x)=i$, assurdo contro il claim 2.

**Claim 4** La componente connessa $H_{ij}$ che contiene $x_i$ e $x_j$ è un cammino semplice.
Costruiamo un cammino $C_{ij}$ da $x_i$ a $x_j$, mostrando che ad ogni passo non c'è una biforcazione:
1. Primo passo: da $x_i$ non c'è una biforcazione, ovvero $d_{H_{ij}}(x_1) = 1$. Se ci fosse:
$$
\vert \Gamma_G(x_i) \cup \{x_i\}\vert < d+1 = \chi(G)
$$
ovvero in questo sottografo manca un colore, chiamiamolo $c$. Se definisco una nuova colorazione, che lascia invariati tutti i vertici tranne $x_i$, tale che $f^{'}(x_i) = c$, ottengo una  nuova colorazione $x-$ottimale, ma il colore $i$ manca nel sottografo indotto dei vicini di $x$, contro il claim 2.
2. Secondo passo: neanche dopo $x_i$ ci sono biforcazioni. Supponiamo che esistano biforcazioni, sia $y$ il primo vertice dove ho una biforcazione. Considero il sottografo indotto da $y$ e dai suoi vicini in $H$, $S := \Gamma_H(y) \cup \{y\}$. Siccome è una biforcazione, contiene almeno $4$ vertici.  Sia $f(y)=k$, con $k \in \{i,j\}$, si avrà che $f(\Gamma(y)) = \overline k$ il colore rimanente. Che succede se rimuovo dal grafo iniziale?
$$
\vert \Gamma_G(y) \cup \{y\} \vert \leq d + 1
$$
$$
\vert \Gamma_G(y) \cup \{y\} \setminus S \vert \leq d + 1 - 4 = d - 3
$$
siccome $S \subseteq \Gamma_G(y) \cup \{y\}$.
I colori che compaiono per colorare l'intorno di $y$, togliendo $y$ e i suoi vicini di colore $i,j$ sono al massimo $d-2$.

Se ho una biforcazione, ho almeno $3$ vicini con lo stesso colore, quindi ho sicuramente un colore $c \neq i,j$ tra i primi $d$ che non ho usato. Ridefinisco una nuova colorazione tale che $f(y)= c$ e lascia il resto invariato. E' ancora una colorazione $x-$ottimale, ma ho scollegato $x_i$ da $x_j$, contro il claim $3$.

**Claim 5** Siano $i,j,k$ tre vertici distinti, $f$ una colorazione $x-$ottimale, $C_{ij}$ un cammino semplice tra $x_i$ ed $x_j$, $C_{jk}$ tra $x_j$ e $x_k$. Allora $V(C_{ij}) \cap V(C_{jk}) = \{x_j\}$.

Supponiamo per assurdo $y \in V(C_{ij}) \cap V(C_{jk})$ ma $y \neq x_j$. Essendo un'intersezione tra due cammini bicromatici, quando si intersecatno creano una stella a $5$ vertici $S$, con in mezzo il vertice $y$ del colore in comune ($f(y)=j$). Quindi:
$$
\vert \Gamma_G(y) \cup \{y\} \setminus S\vert \leq d + 1 - 5 = d-4
$$
manca un colore $c \neq i,j,k$, definisco una nuova colorazione tale che $f^{'}(y)=c$ e lascia il resto invariato. E' ancora $x-$ottimale, ma ho sconnesso $x_i$ ed $x_j$, contro il claim 3.

**Claim 6** Il cammino semplice $C_{ij}$ è lungo $1$ (è un arco). 
Supponiamo per assurdo $\{x_i,x_j\} \notin E(G)$. Poichè $d(G)>2$, esiste in $\Gamma(x)$ almeno un altro vertice $x_j$, ovvero $\vert \Gamma(x) \cup \{x\}\vert \geq 4$, quindi posso trovare $x_i,x_j,x_k \in \Gamma(x)$ distinti.
Sia $f$ una colorazione $x-$ottimale in cui scambio i colori $i$ e $k$ solo sul cammino $C_{ik}$.
E' ancora una colorazione $x-$ottimale, ma crea un assurdo col claim precedente: Infatti, i nuovi cammini indotti da questa nuova colorazione vanno contro il claim precedente:
Prendiamo un $y \in C_{ij}$, collegato ad $x_i$ ed $x_j$. Possiamo farlo, perchè per ipotesi $x_i$ ed $x_j$ non sono collegati, quindi esiste almeno un vertice tra di loro. Si avrà $f(y) = j$. Consideriamo ora l'intersezione dei vertici $V(C_{ij}) \cap V(C_{jk})$. L'assurdo si ha perchè $y \in V(C_{jk})$, quindi appartiene all'intersezione contro il claim 5.

In Conlusione, abbiamo fatto vedere che $\Gamma_G(x) \cup \{x\}$ è un completo di $d+1$ vertici, questo è assurdo perchè per ipotesi doveva valere la proprietà **1**, non contenere $K_{d+1}$. $\square$










