# Poliedri
I poliedri sono particolari insiemi convessi che rivestono un ruolo importante
nei problemi di ottimizzazione per la frequenza con la quale si incontrano. E'
possibile dare risultati molto approfonditi ed eleganti sui poliedri, e lo studio dei
poliedri costituisce un importante capitolo dell’[[Ottimizzazione di funzioni convesse|ottimizzazione convessa]].

## Def
Un _poliedro_ in $\mathbb{R}^n$  è l’insieme delle soluzioni di un numero
finito di equazioni e disequazioni (non strette) lineari.

Con questa definizione un poliedro è sempre un insieme _chiuso_ e _convesso_ (si veda [[Insieme convesso#Teorema Intersezioni|Intersezione di convessi]].

_Geometricamente_ le soluzioni di un’equazione lineare rapp-
resentano un iperpiano, mentre le soluzioni di una disequazione (non stretta) rappresenta un semispazio chiuso. 
Vediamo quindi che, con terminologia più geometrica, possiamo affermare che _un poliedro è l’ intersezione di un numero finito di iperpiani e semispazi chiusi_.

## Vertici
Geometricamente è chiaro cosa siano. Algebricamente? Esprimiamo un poliedro come:
$$
Ax \leq b
$$
senza perdità di generalità. I vertici sono i punti dove sono "attivi" un numero massimo di vincoli.
### Def vincoli attivi
Se un vettore $\overline x \in \mathbb{R}^n$ soddisfa $a_i^T x = b_i$ per un qualche $i \in \{1,\dots,m\} (le righe di $A$) si dice che il corrispondente vincolo è attivo in $\overline x$. Indichiamo l'insieme dei vincoli attivi in un generico punto come $I(x)\subseteq \{1,\dots,m\}$.

La cosa da notare è che in un vertice sono attivi esattamente $n$ vincoli, ma bisogna stare attenti a possibili vincoli ritondanti: _infatti in un vertice sono attivisi $n$ vincoli linearmente indipendenti_ (intendiamo che i vettori $a_i$ sono l.i.).

Possiamo caratterizzare i vertici di un poliedro in maniera equivalente:
$\overline x \in \mathbb{R}^n$ è un vertice del poliedro $Ax\leq b$ sse:
1. Esistono $n$ righe $a_i^T$  della matrice $A$ con $i \in I(\overline x)$ che sono linearmente indipendenti;
2. $\overline x$ è soluzione unica del sistema $a_i^T \overline x = b_i$ $\forall i \in I(\overline x)$.
L'equivalenza è una conseguenza del [[Teorema di  Rouché-Capelli]].

Per verificare se un punto è un vertice di un poliedro dato basta quindi prima di tutto verificare l’ammissibilità e, qualora questa risulti soddisfatta, basta verificare qual è il rango 
dei vincoli attivi.

#### Corollario 1
Se la matrica $A\in \mathbb{R}^{m\times n}$ ha un numero di righe l.i. minore di $n$, allora _il poliedro non ha vertici_.
Questo si verifica ad esempio se $m<n$.
#### Corollario 2
Il numero di vertici è finito. Date $m$ righe della matrice $A$, certamente $n\leq m$ righe l.i. sono minori di tutte le possibile scelte di $n$ righe da $m$, ovvero:
$$
\text{ \# vertici} \leq \binom{m}{n} \leq m^n \qquad \square
$$
Possono essere tanti, ma sono finiti!. 
