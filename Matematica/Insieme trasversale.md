# Insieme trasversale

Consideriamo un insieme finito, $[n] = \{1,2,\dots, n\}$, ed una famiglia $\mathcal{F}$ (un multinsieme) finita di elementi dell'insieme delle parti $2^{[n]}$ (posso avere copie degli stessi sottoinsiemi).

## Def insieme trasversale di una famiglia di sottoinsiemi
Un insieme trasversale, anche detto un insieme di rappresentanti distinti, di una famiglia di sottoinsiemi è un insieme con la proprietà che $\forall A_i \in \mathcal{F} \quad \exists a_i \in T$ tale che $a_i \in A_i$, con $a_i$ rappresentante del sottoinsieme $A_i$, e $a_i \neq a_j$ quando $i\neq j$.

**Osservazione** è ovvio che in generale non tutte le famiglie ammettano un insieme di rappresentanti distinti, ad esempio banale $\mathcal{F} = (\{1\}, \{1\})$. 
Una condizione necessaria è che scelti $k$ elementi della famiglia, la loro unione debba contenere più di $k$ elementi distinti, altrimenti è impossibile trovare dei rappresentanti biunivoci, dopo tutto voglio avere una funzione iniettiva, e per il principio dei cassetti non può esitere se la condizione precedente non vale.
La cosa meno ovvia, è che anche una condizione sufficiente.

## Teoerma (Hall)
Sia la famiglia $\mathcal{F} = \{A_1,\dots,A_m\}$. Se $\forall k = 1,\dots,m$ e $\forall i_1,\dots,i_k \subseteq [m]$ insieme di indici vale:
$$
\left|\bigcup_{j=1}^k A_{i_j}\right| \geq k 
$$
detta _condizione di Hall_, allora la famiglia ammette un insieme di rappresentanti distinti (trasversale).

Prima dimostriamo un lemma.
**Lemma** Sia $\mathcal{F}$ una famiglia che ammette un SDR. Sia $R = \{a_1,\dots,a_{\rho}\}$ l'intersezione di tutti i SDR di $\mathcal{F}$, allora vale:
$$
\left | \bigcup_{i=1}^\rho T_i\right|=\rho
$$
**Dim lemma** è chiaro che deve valere la condizione necessaria di Hall, quindi la cardinalità è maggiore uguale a $\rho$. Facciamo vedere che se fosse maggiore, si arriva ad un assurdo: esiste quindi un elemento $a \neq a_1,\dots,a_\rho$ che appartiene a quale $T_i$ con $i=1,\dots,\rho$. Siccome $a \notin R$, esiste un SDR in cui non compare. Presto questo insieme trasversale, sostituendo $a_i \to a$ si ottiene un nuovo $SDR$, dove non compare $a_i$: assurdo, in quanto per ipotesi $a_i \in R$. $\square$
**Dim** Il teorema segue semplicemente dal lemma, per induzione:
- $m=1$, la condizione di Hall garandisce che l'unico sottoinsieme sia non vuoto, esiste quindi un elemento che può rappresentarlo.
- Passo induttivo, supponiamo che una famiglia di cardinalità $m-1$ ammetta un SDR, mostriamo che la condizione di Hall sulla famiglia $\mathcal{F}' := \mathcal{F} \cup \{T_m\}$ implica l'esistenza di un insieme trasversale. Se $T_m \not\subseteq R$, ovvero se non è contenuto nell'intersezione di tutti i SDR della famiglia $\mathcal{F}$, esisterà un insieme trasversale per $\mathcal{F}'$: basta prendere $a_m \in T_m$ tale che $a_m \notin R$. 
- Se $T_m \subseteq R$, allora:
$$
\left | \bigcup_{i=1}^\rho T_i \cup T_m\right|=\rho
$$
contro l'ipotesi di Hall. $\square$

### Ecn
- - supponiamo che per $t<m$, possiamo costruire l'insieme di rappresentanti. Facciamo vedere che la condizione di Hall consente di costruire l'insieme dei rappresentanti anche per la famiglia di cardinalità $m$.
- Quindi per ogni $k\leq t$ vale che:
$$
\left|\bigcup_{j=1}^k A_{i_j}\right| \geq k 
$$
Partizioniamo la famiglia di cardinalità $m$ in due famiglie di cardinalità $t$ e $m-t$:
$$
\mathcal{F} = \mathcal{A} \cup \mathcal{B} = \{A_1,A_2,\dots A_t\} \cup \{B_1,B_2,\dots, B_{m-t}\}
$$
per ipotesi ammettono insiemi trasversali: $T_1 = \{a_1,a_2,\dots,a_t\}$ e $T_2 = \{b_1,b_2,\dots,b_{m-t}\}$. Se fossero disgiunti, allora la loro unione sarebbe un insieme trasversale per la famiglia, ed avremmo fatto. Usiamo la condizione di Hall per fare vedere ciò,