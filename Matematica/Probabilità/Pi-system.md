> $\sigma$-algebra's are difficult, but $\pi$-systems are EASY; we aim to work on the latter.

# $\pi$-System
Una famiglia di insiemi non vuota $\mathcal{I} \subseteq 2^S$  è un $\pi$-sistema se è  chiusa per intersezioni finite:
$A,B \in \mathcal{I}$:
$$
A\bigcap B \in \mathcal{I}
$$
C'è chi richiede anche che $S \in \mathcal{I}$, in quanto serve per il celebre Lemma di Dynkin.
### Osservazione
Ogni [[Sigma algebra]] (anche un'algebra) è un $\pi$ sistema.

# $\lambda$-sistema
Chiamato anche $d$-sistema (da differenza). Una famiglia di insiemi $\mathcal{D} \subseteq 2^S$ è un $d$-sistema sull'insieme $S$ se e valgono le seguenti proprietà:
- $S \in \mathcal{D}$
- Se $A,B \in \mathcal{D}$ e $A \subseteq B$ allora $B\setminus A \in \mathcal{D}$
- Se $(A_n)_{n\geq 1} \subseteq \mathcal{D}$ e $A_n \uparrow A$ allora $A \in \mathcal{D}$ 
> un $\lambda$ sistema è quasi una sigma algebra, gli manca la chiusura per unione però! grazie alla chiusura per intersezione del $\pi$ sistema il gap si colma.
### Osservazione 1
Una $\sigma$-algebra è sia un $\pi$ che $\lambda$ sistema. Ma vale anche il contrario:
$$
\pi, \lambda \iff \sigma 
$$
Supponiamo che $\Sigma$ sia un $\pi$ e $\lambda$ sistema:
- Siccome è un $\lambda$ sistema contiene tutto l'insieme $S$.
- Il $\lambda$ sistema grazie alla chiusura per differenza, e che contiene $S$ garantisce la chiusura per complementare, infatti:
$$
A^c = S \setminus A
$$
- proviamo prima la chiusura per unione finita, siano $E,F \in \Sigma$, allora:
$$
E \bigcup F = S \setminus (E^c \cap F^c ) \in \Sigma
$$
(segue dalle leggi di de Morgan). Qui è cruciale che sia anche un $\pi$ sistema. (si usa solo qui).
La chiusura per unione numerabile segue subito, infatti la successione unione  è monotona:
$$
G_n := E_1 \cup E_2 \cup \dots \cup E_n \uparrow G 
$$
siccome quindi $\bigcup E_n = G \in \Sigma$ per la chiusura per successioni monotone crescenti del $\lambda$ sistema. $\square$
### Osservazione 2
Ovviamente $d(A) \subseteq \sigma(A)$, perchè ogni sigma algebra è un $\lambda$ sistema, quindi si ha meno scelta, ed il più piccolo è maggiore. _Il min è su un insieme più piccolo_.

## Lemma di Dynkin
Anche chiamato delle classi monotone. 
Sia $\mathcal{I}$ un $\pi$ sistema su $S$ _contenente $S$_. Allora:
$$
d(\mathcal{I}) = \sigma(\mathcal{I})
$$
dove con $d(\mathcal{I})$ si intende il $d$ sistema generato dal $\pi$ sistema $\mathcal{I}$.
### Dim
Per l'osservazione precedente, basta dimostrare che $d(\mathcal{I})$ è un $\pi$-sistema. Infatti se è anche chiuso per intersezioni finite, è una $\sigma$ algebra, ed è la più piccola perchè $d(\mathcal{I}) \subseteq \sigma(\mathcal{I})$.
1. Sia $\mathcal{D}_1 := \{ B \in d(\mathcal{I}) \,:\, B\cap C \in d(\mathcal{I}), \, \forall C \in \mathcal{I}\}$ ovvero tutti gli insiemi del $\lambda$ sistema che intersecati con i membri del $\pi$ sistema rimangono nel $\lambda$ sistema. Siccome $\mathcal{I}$ è un $\pi$ sistema, $\mathcal{I} \subseteq \mathcal{D}_1$ .
Facciamo vedere come $\mathcal{D}_1 \subseteq d(\mathcal{I})$ erediti la struttra di $d$-sistema:
- $S \in \mathcal{D}_1$, infatti $S \in \mathcal{I}$ e $S \cap C = C$ $\forall C$, essendo l'identità.
- Siano $B_1,B_2 \in \mathcal{D}_1$ con $B_1 \subseteq B_2$, vale la chisura per differenza:
$$
(B_2 \setminus B_1) \cap C = (B_2 \cap C) \setminus (B_1 \cap C) \quad \forall C \in \mathcal{I} 
$$
ma $(B_1\cap C)$ e $(B_2 \cap C)$ sono dentro al $d$-sistema, quindi anche la loro differenza lo è (ovviamente continua a valere l'inclusione), quindi $B_2\setminus B_1 \in \mathcal{D}_1$.
- Sia $(B_n)_{n \geq 1} \subseteq \mathcal{D}_1$ e $B_n \uparrow B$ , allora per $C \in \mathcal{I}$:
$$
(B_n \cap C) \uparrow (B\cap C)
$$
in quanto il limite è l'unione, che fattorizza con le intersezioni. Quindi $(B_n \cap C) \in d(\mathcal{I})$ e $B \in \mathcal{D}_1$. 
Abbiamo dimostrato che $\mathcal{D}_1$ è un $d$-sistema che contiene $\mathcal{I}$, quindi $d(\mathcal{I}) \subseteq \mathcal{D}_1$, ma per costruzione $\mathcal{D}_1 \subseteq d(\mathcal{I})$, quindi è proprio lui.
2. Sia $\mathcal{D}_2 := \{B \in d(\mathcal{I})\, : \, B \cap A \in d(\mathcal{I}), \forall A \in d(\mathcal{I}) \}$, ovviamente vale $\mathcal{D}_2 \subseteq \mathcal{D}_1$, e per come è definito è un $\pi$ sistema. Vogliamo far vedere che $\mathcal{I} \subseteq \mathcal{D}_2$ e che eredita la struttra di $d$-sistema.
- $\mathcal{I}\subseteq \mathcal{D}_2$ significa che se prendo $i \in \mathcal{I}$ ed un generico $B \in d(\mathcal{I})$, allora $i \cap B$ rimane in $d(\mathcal{I})$, ma i $B \in d(\mathcal{I})$ che godono di questa proprietà sono proprio gli elementi di $\mathcal{D}_1$ e siccome $\mathcal{D_2} \subseteq \mathcal{D_1}$, vale anche nel nostro nuovo insieme.
Posso dimostrare che eredita l'essere un $d$-sistema come ho fatto per $\mathcal{D}_1$, segue che $\mathcal{D}_2 = d(\mathcal{I})$ che per costruzione è anche un $\pi$ sistema. Quindi è una sigma algebra, contiene $\mathcal{I}$, il fatto che sia la più piccola segue dalla banale inclusione $d(A) \subseteq \sigma(A)$. $\square$

Sono utili in probabilità, infatti per misure finite vale il seguente teorema:

## Teorema unicità dell'enstenzione
Sia $\mathcal{I}$ un $\pi$-sistema su $S$. Sia $\Sigma = \sigma(\mathcal{I})$ la sigma algebra generata dal sistema, e $\mu,\nu$ due misure finite sullo spazio misurabile $(S,\sigma(\mathcal{I}))$ che concordano sul $\pi$-sistema e sulla misura di $S$             ($\mu(S) = \nu(S) < \infty$).  Allora:
$$
\mu = \nu \quad \text{su } \Sigma 
$$
### Dim
Sia $\mathcal{D} := \{ F \in \Sigma \,:\, \mu(F) = \nu(F)\}$. Facciamo vedere che è un $d$-sistema su $S$. 
Siccome per ipotesi $\mathcal{I} \subseteq \mathcal{D}$, ed è un $\pi$ sistema, per i lemma di Dynkin:
$$
\sigma(\mathcal{I}) = d(\mathcal{I}) \subseteq \mathcal{D}
$$
- $S \in \mathcal{D}$ per ipotesi. 
- Siano $A,B \in \mathcal{D}$ con $A \subseteq B$. Allora siccome sono misure finite:
$$
\mu(B\setminus A)  =  \mu(B) - \mu(A) = \nu(B)-\nu(A) = \nu(B\setminus A)
$$
quindi $(B\setminus A) \in \mathcal{D}$.
- Consideriamo una successione monotona crescente $F_n \to F$ in $\mathcal{D}$, allora:
$$
\mu(F) = \mu(\cup_n F_n)= \lim_{n\to\infty}\mu(F_n) = \lim_{n\to\infty} \nu(F_n) = \nu(F)
$$
per  [[Limit of sets]] e [[Continuity of mesure]]. $\square$


### Corollario 
Se ho due misure di probabilità che concordano su un $\pi$-sistema, allora concordano su tutta la sigma algebra generata dal sistema.

Il caso più frequente è il $\pi$ sistema che generea la sigma algebra di Borel:
$$
\mathcal{B} = \sigma(\pi(\mathbb{R})) \qquad\pi(\mathbb{R}) := \{(-\infty, x] \vert\, x \in \mathbb{R}\}
$$
Quindi se due misure di probabilità concordadno sugli intervalli della forma $(-\infty, x]$ sono equivalenti su tutta la sigma algebra di $Borel$ (su tutto $\mathbb{R}$ fanno $1$ per definizione, quindi concordano).


