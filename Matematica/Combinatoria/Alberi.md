# Alberi

Vediamo una caratterizzazzione completa di questi grafi.

## Def (Foresta)
Un grafo $G$ acicliclo viene detto _foresta_. 
## Def (Albero)
Un grafo $G$ viene detto albero se è una foresta ed è _connesso_. 

> In effetti una foresta è un'unione disgiunta di alberi.

### Teorema 
Un grafo $G$ è una foresta se e solo se per ogni coppia di vertici $x,y$ esiste al più un solo cammino.

**Dim**
Se $G$ contiene un ciclo (non è una foresta), allora scelti due vertici che compaiono nel ciclo, esistono due cammini che li collegano.
Analogamente, siano $x_0,x_1,\dots,x_l$ e $x_0,y_1,\dots x_l$ due cammini distinti tra i vertici $x_0,x_l$. Sia $i$ il primo indice dove sono distinti, ovvero $x_i \neq y_i$, sia $j$ l'ultimo indice $j \geq i$ tale che $x_j=y_j$ (deve esistere, sicuramente vale per l'ultimo vertice essendo $x_l$ in emtrambi i cammini). Allora ottengo il ciclo:
$$
x_{i-1}, x_i,\dots x_j, y_{j-1},\dots ,y_i, y_{i-1}
$$
quindi $G$ non è una foresta. $\square$

## Caratterizzazzione degli alberi

Le seguenti condizioni sono equivalenti:
1. $G$ è un albero.
2. $G$ è un grafo minimale connesso: se tolto anche un solo arco, diventa sconnesso (ogni arco è un ponte).
3. $G$ è un grafo massimale aciclico: se aggiungo anche un solo arco, si crea un ciclo.
4. $|V(G)|=|E(G)|-1$.

**Dim**
$(1 \implies 2)$ Supponiamo $G$ sia un albero. Sia $xy \in E(G)$. Il grafo $G\setminus xy$ non può contenere nessun cammino tra $x$ ed $y$, altrimenti $G$ avrebbe contenuto un ciclo (due cammini distinti tra $x$ ed $y$). Quindi $G$ è disconnesso e $G$ è un grafo connesso minimale.
$(1 \implies 3)$ In maniera analoga, se $xy \notin E(G)$, allora nel grafo $G \cup xy$ ottengo due cammini tra $x$ ed $y$, quindi un ciclo e $G$ è un grafo aciclico massimale.
$(2 \implies 1)$ Supponiamo $G$ sia un grafo connesso minimale, per far vedere che è un albero ci basta verificare sia aciclico. Supponiamo per assurdo contenga un ciclo $x,z_1,z_2,\dots,y$ e $xy \in E(G)$, allora esistono due cammini tra i vertici $x$ ed $y$, posso rimuovere $xy$ da $G$ e rimanere connesso, contro l'ipotesi di minimalità.
$(3 \implies 1)$ Supponiamo $G$ sia aciclico massimale, basta far vedere che $G$ è anche connesso per dimostrare che è un albero. Se per assurdo non fosse connesso, siano $x$ ed $y$ vertici in differenti componenti connesse del grafo, aggiungere l'arco $xy$ non crea cicli, contro l'ipotesi di massimalità.$\square$


## Caratterizzazzione tramite ordine e taglia
**Teorema** Un grafo $G$ è una foresta se e solo se vale la relazione:
$$
\vert E(G)\vert = \vert V(G)\vert -\lambda
$$
dove $\lambda$ è il numero di componenti connessi del grafo.
**Dim**
Siccome una foresta è l'unione disgiunta di alberi, è sufficiente dimostrare che per un albero vale la relazione $\vert E(G)\vert = \vert V(G)\vert -1$. 
$(\implies)$
Si usano i lemmi [[Grafo semplice#Lemma connessione|1]] e  [[Grafo semplice#Lemma aciclico|2]], un grafo connesso deve avere almeno $n-1$ archi, un grafo aciclico ha al più $n-1$ archi, quindi un albero ha $n-1$ archi.

$(\impliedby)$ Facciamo vedere che se vale la relazione, allora $G$ è un albero.
Per _induzione_ sull numero di vertici $\vert V(G)\vert = n$:
Base induttiva $n=1$: triviale, il grafo è un albero.

Passo induttivo: supponiamo che $\vert V(G)\vert = n$, facciamo vedere che anche per $n+1$ la relazione implica che sia un albero.
Costruiamo il grafo $G'$ ad $n+1$ vertici aggiungendo un vertice al grafo $G$, ed un solo arco,siccome deve essere connesso, il nuovo arco incide sul nuovo vertice. Essendo di grado $1$ non può comparire in un ciclo ($G$ era aciclico per ipotesi), quindi anche $G$ è aciclico, ed è quindi un albero. $\square$

>**RECAP** connesso implica almeo $n-1$ archi, aciclico implica al massimo $n-1$ archi, quindi un albero (connesso ed aciclico) deve avere esattamente $n-1$ archi. Se un grafo ha $n-1$ archi, è un albero: si fa per induzione.

