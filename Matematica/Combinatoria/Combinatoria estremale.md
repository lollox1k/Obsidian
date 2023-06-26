# Combinatoria estremale

I problemi estremali sono quei problemi di combinatoria che richiedono di determinare la cardinalità massima che può avere una famiglia $\mathcal{F}$ di insiemi che soddisfa certe condizioni.

## Tecnica degli spazi vettoriali

Un metodo spesso efficace per risolvere un problema estremale consiste nell'associare a ogni elemento di una famiglia $\mathcal{F}$ di insiemi un vettore di un opportuno spazio vettoriale $V$ in modo univoco, e fare in modo che vettori che soddisfano le nostre condizioni siano ortogonali.
Se si riesce a dimostrare che i vettori così ottenuti sono linearmente indipendenti, si otterrà la maggiorazione richiesta: la cardinalità della famiglia $\mathcal{F}$ non potrà infatti superare la dimensione dello spazio $V$.

**Teorema 1** Sia $\mathcal{F}$ una famiglia di sottoinsiemi di $[n]$ tale che:
1. ogni sottoinsieme di $\mathcal{F}$ ha un numero dispari di elementi;
2. due sottoinsiemi di $\mathcal{F}$ si intersecano in un numero pari di elementi.
Allora la famiglia $\mathcal{F}$ ha al più $n$ sottoinsiemi.

**Dim** Codifichiamo i sottoinsiemi di una famiglia con vettori $0,1$, ad $n$ componenti, con ovvio significato. Effettuando un prodotto scalare tra due insiemi:
$$
\langle u, v\rangle = |I \cap V |
$$
come è ovvio verificare. Se lavoriamo in $\mathbb{Z}_2$, se l'intersezione ha cardinalità pari otteniamo $0$, se dispari $1$. Allora il nostro vincolo equivale a dire:
$$
\langle v_i, v_j\rangle = 
\begin{cases}
1 \text{ se } i=j; \\
0 \text{ se } i \neq j.
\end{cases}
$$
Quindi la mia famiglia estremale sarà un insieme di vettori ortonormali, di conseguenza ne posso avere al massimo come la dimensione dello spazio vettoriale, $n$. $\square$

**Corollario** Una famiglia di singleton di $[n]$ ha cardinalità massima $n$.
**Dim** Segue dal teorema precedente: i singleton hanno cardinalità uno (dispari), e si intersecano in zero elementi (pari). $\square$

## Teorema di Sperner

**Def** Una famiglia $\mathcal{F}$ di sottoinsiemi di $[n]$ viene detta di _famiglia di Sperner_ se presi comunque due sottoinsiemi della famiglia nessuno dei due è conenuto nell'altro:
$$
\forall A,B \in \mathcal{F} \qquad A \not\subset B \;\land\; B \not\subset A
$$
**Oss** E' chiaro come ogni famiglia uniforme (sottoinsiemi della stessa cardinalità) sia di Sperner (per essere distinti devono avere almeno un elemento non in comune).

**Def** Una famiglia $\mathcal{F}$ di sottoinsiemi di $[n]$ viene detta di _catena_ se presi comunque due sottoinsiemi della famiglia uno dei due è conenuto nell'altro:
$$
\forall A,B \in \mathcal{F} \qquad A \subset B \;\lor\; B \subset A
$$
**Oss** E' una proprietà opposta a quella di Sperner, _anticatena_ è sinonimo di famiglia di Sperner.

Una _catena massimale_ dei sottoinsiemi di $[n]$ è una catena con sottoinsiemi di cardinalità crescente $0,1,2,\dots,n$ che parte dal vuoto. Quante catene massimali esistono in totale? Inizio col vuoto, una scelta. Poi scelgo un singleto, $n$ scelte. Ora un insieme di cardinalità due che contiene il singleton, quindi $n-1$, e cosi via. Tutte le catene massimali sono dunque $n!$.
Ora ci chiediamo quante sono le catene massimali in cui compare un dato insieme fissato $I \subseteq [n]$. Prima conto tutte le catene che arrivano ad $I$, quindi $|I|!$, e i modo per estenderle sono $(n-|I|)!$, in totale:
$$
|C_I| = |I|!(n-|I|)!
$$
Torniamo alle anticatene, sia $\mathcal{F}$ un'anticatena di $[n]$, ed $I$ un elemento di $\mathcal{F}$. E' chiaro che _ogni catena massimale non può passare per più di un elemento di $\mathcal{F}$_, quindi per ogni $I,J \in \mathcal{F}$ le catene massimali passanti per questi insiemi sono _disgiunte_. 
$$
\sum_{I \in \mathcal{F}} |C_I| \leq n!
$$
(non ho fatto una partizione compelta, potrei avere pochi elementi nell'anticatena).
Ma so calcolare il numero di catene che passano per un insieme di cardinalità $|I|$:
$$
\sum_{I \in \mathcal{F}} |I|!(n-|I|)! \leq n!
$$

$$
\sum_{I \in \mathcal{F}} \binom{n}{|I|}^{-1} \leq 1
$$
risulato noto come $LYM$ inequality:
**Teorema** (Disuquaglianza LYM) Se $\mathcal{F}$ è una famiglia di Sperner (anticatena) di sottoinsieme di $[n]$, allora vale:
$$
\sum_{I \in \mathcal{F}} \binom{n}{|I|}^{-1} \leq 1
$$
**Dim** 
Dividendo per $n!$ ottengo la definizione del coefficente binomiale. $\square$

Da questa segue il teorma di Sperner.

**Teorema** (Sperner 1928) Se $\mathcal{F}$ è una famiglai di Sperner di sottoinsiemi di $[n]$, allora:
$$
|\mathcal{F}| \leq \binom{n}{\lfloor \frac{n}{2}\rfloor}
$$
**Dim** Segue direttamente dalla disuguaglianza LYM, infatti il valore massimo del coefficiente binomiale si ottiene in $\binom{n}{\lfloor n/2 \rfloor}$ (oppure in $\lceil n/2 \rceil$ è unimodale), quindi:
$$
|\mathcal{F}|\binom{n}{\lfloor \frac{n}{2}\rfloor}^{-1} \leq \sum_{I \in \mathcal{F}} \binom{n}{|I|}^{-1} \leq 1 \quad \square$$

Quindi la famiglai uniforme di sottoinsiemi di $[n]$ di cardinalità $\lfloor n/2 \rfloor$, che è di Sperner è di cardinalità massima. Non abbiamo mostrato l'unicità.

**Oss** Ottengo una sola famiglia se $n$ è pari, due se $n$ è dispari (prendendo parte intera superiore o inferiore). 

## Famiglia intersecante $I(n)$

**Def** Una famiglia $\mathcal{F}$ di sottoinsiemi di $[n]$ viene detta _intersecante_ se vale $\forall A,B \in \mathcal{F}$ si ha $A \cap B \neq \emptyset$. 

Ci chiediamo, qual è la massima cardinalità di una famiglia intersecante.

**Proposizione** Sia $I(n)$ la cardinalità massima di una famiglia intersecante di sottoinsiemi di $[n]$:
$$
I(n) := \max\left\{ |\mathcal{F}| \, :\, \mathcal{F} \subseteq 2^{[n]}, \text { intersecante}\right\}
$$
Allora $I(n)=2^{n-1}$.
**Dim** Dimostriamo prima che $I(n) \geq 2^{n-1}$ esibendo una famiglia intersecante con questa proprietà. Ma è facile, basta richiedere che tutte contengano un elemento fissato, di fatto lo sto togliendo da $n$. Questa famiglia ha cardinalità $2^{n-1}$.
Ora dimostriamo $I(n) \leq 2^{n-1}$. Scriviamo tutti gli elementi di $2^{[n]}$ in una tabella, mettendo su ogni riga un insieme $A$ ed il suo complementare $A^c$. La tabella avrà $2^{n-1}$ righe. Se $E \in \mathcal{F}$, allora di certo non posso includere in $\mathcal{F}$ il suo complementare (l'argomento delle righe è superfluo, basta notare che se scelgo un insieme, non posso prendere il complementare, quindi di fatto ho dimezzato le scelte!). $\square$

**Oss** Le famiglie estremali non sono uniche! Ne esistono sicuramente più di due, passo alla "famiglia complentare".

Vale una teorema nel caso in cui richiediamo che le famiglia di sottoinsiemi siano uniformi di cardinalità $k$.

**Teorema** (Erod-Ko-Rado)  Sia $I(n,k)$ definito come:
$$
I(n,k) := \max\left\{ |\mathcal{F}| \, :\, \mathcal{F} \subseteq \binom{[n]}{k}, \text { intersecante}\right\}
$$
Allora 
$$
I(n,k) = 
\begin{cases}
\binom{n}{k} \text{ se } k > \frac{n}{2}, \\
\binom{n-1}{k-1} \text{ se } k \leq \frac{n}{2}.
\end{cases}
$$
E' possibile rappresentare sottoinsiemi uniformi come vertici, e collegari se e solo se la loro intersezione è nulla. Questo grafo viene detto [[Grafo di Kneser]] ed è indicato con $Kne(n,k)$. E' evidente che _una famiglia intersecante forma uno stabile_, quindi la cardinalità di una famiglia estremale è il numero di stabilità $\alpha(Kne(n,k))$.

**Dim 1** Dimostriamo il caso $k > \frac{n}{2}$. 
Facciamo vedere che è una famiglia intersecante, è banale infatti se per assurdo avessero intersezione nulla, la cardinalità dell'unione è uguale alla somma delle cardinalità:
$$
n \geq |A \cup B| = |A| + |B| = 2k > n
$$
### Lemma del sondaggio

Sia $\mathcal{U}$ un insieme detto universo, consideiramo una famiglia $\Sigma \subseteq 2^\mathcal{U}$ di suoi sottoinsiemi, ed un insieme fissato $\mathcal{C} \in 2^{\mathcal{U}}$, di elementi con una certa caratteristica. Vogliamo la seguente proprietà:
$\forall S \in \Sigma$
$$
\frac{|S \cap \mathcal{C}|}{|S|} \leq \lambda \implies \frac{|\mathcal{C}|}{|\mathcal{U}|} \leq \lambda
$$
ovvero _la densità locale_ su ogni $S$ è minore uguale a quella _globale_.
La proprietà cercata è la seguente:

**Def** Una famiglia $\Sigma \subseteq 2^{\mathcal{U}}$ è detta _famiglia di sonaggio_ per $\mathcal{U}$ se $\forall x \in \mathcal{U}$, $x$ sta nello stesso numero di sottoinsiemi di $\Sigma$:
$$
c(x):= |\{S \in \Sigma \,:\, x \in S\}| \implies c(x)=c \;\forall  x
$$
**Proposizione** Sia $\Sigma$ una famiglia di sottoinsiemi di $\mathcal{U}$ famiglia di sondaggio per $\mathcal{U}$, $\lambda \in \mathbb{R}^+$, allora
$$
\frac{|S \cap \mathcal{C}|}{|S|} \leq \lambda \;\forall S\implies \frac{|\mathcal{C}|}{|\mathcal{U}|} \leq \lambda
$$
**Dim** Per iposti, siccome ogni elemento $x \in \mathcal{U}$ compare lo stesso numero di $c$ volte negli insiemi di $\Sigma$, deve valere:
$$
c|\mathcal{U}| = \sum_{S \in \Sigma} |S|
$$
ho un overlap esatto di $c$ volte. Se $c > 0$ la famiglia $\Sigma$ è un ricoprimento. Analogamente per l'insieme $\mathcal{C}$ vale:
$$
c|\mathcal{C}| = \sum_{S\in\Sigma} |S \cap \mathcal{C}|
$$
riscrivo la tesi, come somma ed uso l'ipotesi per maggiorare ogni addendo al numeratore:
$$
\frac{|\mathcal{C}|}{|\mathcal{U}|} = \frac{\sum_{S\in\Sigma} |S \cap \mathcal{C}|}{\sum_{S \in \Sigma} |S|} \leq \lambda \frac{\sum_{S\in\Sigma} |S |}{\sum_{S \in \Sigma} |S|} = \lambda \quad \square
$$
**Dim 2** Dimostriamo ora il caso $k \leq \frac{n}{2}$.
Considero la famiglia 
$$
\mathcal{F}_0 := \left\{A \cup \{n\} \,:\, A \in \binom{[n-1]}{k-1}\right\}
$$
questa famiglia è intersecante, infatti tutti i sottoinsiemi contengono l'elemento $n$, dunque $I(n,k) \geq \binom{n-1}{k-1}$. 
Costruiamo una famiglia di sondaggio:
$$
\mathcal{U} = \binom{[n]}{k} \quad \mathcal{C} = \mathcal{F} 
$$
Per costruire la famiglia del sondaggio $\Sigma$, introduciamo le _configurazioni cicliche_ di $[n]$.
Fissato $\pi \in \Pi$, un $A$ è un _intervallo ciclico_ di $\pi$ se i suoi elementi si trovano consecutivamente in $\pi$, ovvero se esiste un $l \in [n]$ tale che:
$$
A=\{l,\pi(l),\pi^2(l),\dots, \pi^{k-1}(l)\}
$$
$$
S(\pi) := \{A \,:\, A \text{ è un intervallo ciclico di $\pi$, di card. } k\}
$$
definimo la famiglia:
$$
\Sigma := \{S(\pi) \,:\, \pi \in \Pi\}
$$
Verifichiamo che è una famiglia di sondaggio di $\mathcal{U}$. Sia $x \in \mathcal{U}$, il numero di volte che $x$ appare in $\Sigma$:
$$
n_x := |\{\pi\,\:\, x \in S(\pi)\}|
$$
ma questo numero dipende da $k$ non da $x$!

Vorremo far vedere che $|\mathcal{F}| \leq \binom{n-1}{k-1}$, siccome $|\mathcal{U}| = \binom{n}{k}$, usando la proprietà di una famiglia di sondaggio:
$$
\frac{|\mathcal{F}|}{|\mathcal{U}|} \leq \frac{\binom{n-1}{k-1}}{\binom{n}{k}} = \frac{k}{n} =: \lambda
$$
abbiamo trovato il nostro lambda. Non ci resta che mostrare che questo vale per ogni densità locale, ovvero $\forall \pi \in \Pi$ 
$$
\frac{|\mathcal{F}\cap S(\pi)|}{|S(\pi)|} \leq \frac{k}{n}
$$
siccome $|S(\pi)| = n$ basta provare che il numeratre è $\leq k$.
Se le intersezioni sono nulle $c=0$ allora è dimostrato.
Supponiamo ora che $|\mathcal{F} \cap S(\pi)| \neq \emptyset$, allora esiste un $A \in S(\pi)$ $A \in \mathcal{F}$. Quali altri elementi di $S(\pi)$ possono appartenere ad $\mathcal{F}$?