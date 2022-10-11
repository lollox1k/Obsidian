# Mc Culloch Pitts neuron
E' un modello matematico semplificato dei complicati modelli differenziali dei [[Biological neurons]]. Introdotto nel 1943, chiamato anche _formal neuron_, in breve:

>the formal neuron receives a series of inputs from adjacent neurons and generates an output that results from the sum of the inputs, each of which is weighed by a factor that takes into account the functioning of the related synapses

Assumiamo che un neurone ed i suoi $N$ neuroni vicini (collegati da sinapsi) ciascuno con uno stato possibile $S_i$ che insieme formano lo stato della rete $S = \{S_1,\dots,S_N\}$, ed un insieme di pesi sinaptici $J = \{J_1, \dots J_N\}$, allora l'output del neurone è determinato da:
$$
y = \Theta\left( \sum_{i=1}^N J_iS_i - U^* \right)
$$
$U^*$ viene detta soglia di attivazione, se il _potenziale presinaptico_ definito come:
$$
U := \sum_{i=1}^N J_is_i
$$
è minore di $U^*$ l'uscita è nulla (_quiescient state_), per la funzione di Haveside, $y=1$ in caso contrario (_active state_).

Se vogliamo costruire reti collegando questi neuroni, allora l'uscita è anche l'insime degli stati, quindi $S = \{0,1\}^N$. Se pensiamo ad una rete allora definiamo una matrice di interazioni $J_{i,j}$, quindi per ogni neurone vale:
$$
S_i = \Theta\left( \sum_{i=1}^N J_ {ij}S_j - U_i^* \right)
$$
notiamo che possiamoa vere interazioni non simmetriche $J_{ij} \neq J_{ji}$ ed autointerazioni $J_{ii} \neq 0$.

## Universalità dei neuroni MP
Every finite digital machine can be regarded as a device that maps finite-dimensional binary input vectors $S \in \Omega  \subseteq \{0,1\}^N$ (could be a partial function that doesn't terminate!) in a finite string with the same alphabet $S' \in \{0,1\}^N$.

Then every finite deterministic digital machine can be specified in full by specifying the output vector for every possible input vector, that is, by specifying the mapping $M$:
$$
M : \Omega \mapsto \{0,1\}^K \qquad MS = S' \quad \forall S \in \Omega
$$
Possiamo scomporre la mappa in $K$ mappe indipendenti con stesso input ma solo un bit in uscita:
$$
M_l : \Omega \mapsto \{0,1\} \qquad M_l S = S'_l \quad\forall S \in \Omega \quad l=1,\dots,K
$$
We conclude that we are allowed to concentrate only on the question of _whether it is possible to perform any single-output mapping_ M : Ω ⊆ {0, 1} N → {0, 1} with _networks of MP neurons_.

we first introduce a partitioning of the set $Ω$ of input vectors into two subsets, depending on the corresponding desired output value:
$$
\Omega = \Omega^+ \cup \Omega^-
$$
$$
\Omega^+ := \{S \in \Omega \,|\, MS = 1\} \qquad \Omega^- := \{S\in\Omega \,|\, MS = 0\}
$$
Quindi le macchine $M_l$ devono capire se l'input $S$ è nel sottoinsieme giusto, ovvero $S \in \Omega^+$ oppure $S \in \Omega^-$. Chiamiamo $S^\mu$ gli elementi di $\Omega$ che applicati ad $M_l$ danno in uscita il bit $1$.
Quindi quello che deve fare la rete, è dato un input $S$ controllare se $S \in \Omega^+$, ovvero se è  uguale a qualche elemento: $\exists S^\mu \in \Omega^+$ tale che $S = S^\mu$. se è così, restituisce uno, zero altrimenti. Questa cosa si può fare facilmente con operazioni binarie elementali, infatti se $S^\mu = S$, sono uguali bit a bit, un and:
$$
SAME(X,Y) \iff\land_{i=1}^N \left[(X_i\land Y_i)\lor \lnot(X_i \lor Y_i) \right]
$$
quindi:
$$
S \in \Omega^+ \iff \lor_{\mu=1}^P \land_{i=1}^N \left[(S_i\land S_{\mu_i})\lor \lnot(S_i \lor S_{\mu_i}) \right]
$$
Le $3$ operazioni logiche usate sono ovviamente realizzabile con delle reti di neuroni $MP$:
- $NOT$
$$
\lnot X = \Theta(1/2-X)
$$
- $OR$
$$
X \lor Y = \Theta(X+Y - 1/2)
$$
- $AND$
$$
X \land Y = \Theta( X + Y -3/2)
$$
**Osservazione**
Un solo layer non può nemmeno fare tutte le operazioni binarie, non esiste per lo $XOR$.  Il motivo geometrico è chiari: non sono linearmente separabili!
![[Pasted image 20221011140944.png]]

$XOR(X,Y) \equiv NOTAND(X,Y) AND OR(X,Y)$
![[Pasted image 20221011141414.png]]

Quindi bastano due layer per replicare lo $XOR$. In realtà vale il claim forte:
## Teorema bastano 2 layer
Ogni funzione $M : \{0,1\}^N \mapsto \{0,1\}$ può essere rappresentata da una reta di solo _due_ layer.
### Proof
L'idea è molto semplice, il livello nascosto contiene un neurone per ogni configurazione dentro $\Omega^+$. Il compito di questi neuroni è accendersi se riconoscono una certa configurazione. Non ci resta quindi che mettere un singolo neurone finale di $OR$.

![[Pasted image 20221011142108.png]]

La questione è quindi costruire i neuroni dell'hidden layer. 
Definiamo una funzione building block con la proprietà voluta:
$$
G(x,x^*) \iff x = x^*
$$
**claim** la funzione:
$$
G(x,x^*) := \Theta\left(  \sum_{i=1}^N(2x_i-1)(2x^*-1) - N+1 \right)
$$
fa quello che voglio. 
- Se $x^* = x$
$$
\Theta\left(  \sum_{i=1}^N(2x_i-1)^2 - N+1 \right)
$$
vale:
$$
 \sum_{i=1}^N(2x_i-1)^2 = N
$$
quindi
$$
\sum_{i=1}^N(2x_i-1)^2 - N+1 = 1
$$
concludendo che $G(x,x^*) = 1$.
 
- Al contrario quando $x \neq x^*$, i corrispondente termini nella sommatoria valgono:
$$
(2x_i-1)(2x_i^*-1) = 
\begin{cases}
\,\,\,\,1 \text{ se } x_i = x_i^* \\
-1 \text{ se } x_i \neq x_i^*
\end{cases}
$$
di conseguenza la somma vale:
$$
\#\text{indici uguali} - \# \text{indici diversi} = N - 2\# \text{indici divesi}
$$
quindi nell funzione theta ho:
$$
N - 2\# \text{ind.div.} - N + 1 = 1 - 2\# \text{ind.div.} < 0
$$
perchè per ipotesi almeno un indice è divetso, quindi $G(x,x^*) = 0$. $\square$

Ovviamente fissato $x^*$ la funzione $G(x)$ può essere rappesentata da un neurone $MP$, basta espandere il prodotto, ho termini lineari in $x_i$ ed altri costanti.

La rete finale avrà dunque i parametri:
![[Pasted image 20221011144114.png]]

## Remaks
- Il numero di neuroni necessari per il livello nascosto $L$ può scalare con le dimensioni dello spazio $\Omega$, ovvero è _esponenziale in N_ ($\sim 2^N$)
- concatenando le varie reti per ogni bit, otteniamo sempre una rete a due layer.
-  Perfect knowledge of the function $M$ allowed us to determine the set of weights which makes the network to exactly emulate $M$. _In real situations the scenario is different_: only a sample of input-output pairs is available and, based on these, we have to _infer the “optimal”_ (according to some cost function) configuration for weights which makes the network to emulate the operation M at least _on the basis of the available knowledge_. In order to find this setting one introduces learning rules, namely iteractive evolution rules to tune weights.

# Dinamica 
