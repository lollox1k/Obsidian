# Circuito Euleriano

Un [[Grafo semplice#Passeggiate Cammini Circuiti Cicli|circuito]] è detto *Euleriano* se visita tutti i vertici del grafo.

Un grafo viene detto euleriano se ammette un circuito euleriano, ovvero esiste:
$$
\mathcal{C} = x_1, e_1, \dots e_t, x_1 \qquad t = \vert E(G)\vert
$$
> la lunghezza del circuito è la taglia del grafo.
> "Si può disegnare senza staccare la penna"

### Teorema di Eulero
Sia $G$ un grafo senza punti isolati, Allora:
$$
G \text{ euleriano} \iff G \text{ connesso e vertici di grado pari} 
$$
### Dim 
- ($\implies$) 
Sia $\mathcal{E}$ il cammino euleriano del grafo $G$ privo di punti isolati.

L'esistenza di un cammino che contiene tutti i vertici implica che il grafo è _connesso_.

Ogni vertice ha sicuramente un arco in entrata ed uno in uscita distinti, quindi ogni volta che il vertice compare nel cammino euleriano il *grado aumenta di due*, ed è quindi pari (siccome ogni arco compare nel cammino).

- ($\impliedby$)
Costruiamo un circuito euleriano come sottografo: 
siccome ogni vertice ha grado pari, ed il grafo è connesso esiste un circuito, chiamiamolo $\mathcal{C}$. Non è detto che sia euleriano (potrebbe mancare qualche arco), quindi $\mathcal{C} \subseteq \mathcal{E}$.
Facciamo vedere che se $G$ contiene un circuito, ne contiene uno massimale, che sarà proprio quello euleriano.

Consideriamo il sottografo $G'$ creato rimuovendo tutti gli archi che compaiono in $\mathcal{C}$. 
$G'$ potrebbe non essere più connesso, ma ogni vertice ha ancora grado pari (abbiamo rimosso un numero pari di archi da ogni vertice).

Per induzione sulle componenti connesse di $G'$ possiamo ottenere il cammino euleriano, infatti rimuovo tutti gli archi dei circuiti, non posso arrivare ad un sottografo vuoto, sennò il cicuito era euleriano!

Sia $x_0 \in \mathcal{C}$. Nella componente connessa dove compare esiste un cammino euleriano $\mathcal{E}_0$
