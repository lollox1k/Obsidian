# Coefficiente binomiale
### Definizione combinatoria
Vediamo la definizione combinatoria del coefficient binomiale.
Consideriamo la potenza $n$-esima del binomio $(x+y)$:
$$
(x+y)^n = (x+y)\dots (x+y) \quad\text{ $n$ volte }
$$
Per la proprietà distributiva, si puù scrivere come:
$$
(x+y)^n = \sum z_1z_2\dots z_n
$$
la somma è su tutte le stringhe di lunghezza $n$, con $z_i \in \{x,y\}$. Se in una stringa $z \in \{x,y\}^n$ vi sono $h$ occorrenze della variabile $x$, e quindi $n-h$ della variabile $y$, supponendo che commutino, possiamo scrivere $z = x^h y^{n-h}$. Possiamo quindi raggruppare nella somma precedente tutte le stringhe con un dato numero di occorrenze fissate, il loro numero sarà proprio come definiremo il coefficiente binomiale, per ora $C(n,h)$:
$$
(x+y)^n = \sum_{h=0}^n c(n,h)x^h y^{n-h}
$$
### Identità
1. Da questa definizione "implicita", è subito chiara l'identità:
$$
\binom{n}{h} = \binom{n}{n-h}
$$
in quanto c'è simmetria per scambio $x,y$, ovvero posso definire una biiezione banale che scambia i caratteri. Oppure, basta osservare che il polinomio a sinistra è simmetrico per scambio $x,y$.

Ogni stringa $z_1\dots z_n$ defnisce una bipartizione sull'insieme $[n]$, nella seguente maniera:
$$
i \in I \iff z_i = x
$$
è evidente che l'insieme complementare $J := [n] \setminus I$, sono le posizioni dei caratteri $y$, ovvero:
$$
i \in J \iff z_i = y
$$
quindi abbiamo partizionato $[n] = I \cup J$. E' anche ovvio che $\vert I \vert = h$, il numero di caratteri $x$ e $|J| = n-h$.

Possiamo quindi scrivere la sommatoria iniziale come:
$$
(x+y)^n = \sum_{\text{bipart. } I,J \text{ di } [n]} x^{|I|}y^{|J|} = \sum_{h=0}^n \sum_{|I| = h} x^h y^{n-h}
$$
quindi il coefficiente binomiale _sta contando il numero sottoinsiemi di $h$ elementi di un insieme di $n$ elementi_, che con la notazione introdotta per i grafi:
$$
\binom{n}{h} = \left | \binom{[n]}{h}\right | 
$$
2. Possiamo trovare un'altra identità con questa nuova caratterizzazzione:
Supponiamo di voler scegliere una tribù di $h$ persone con un capo, a partire da una popolazione di $n$ individui.Ora sappiamo che il numerò di tribù possibili è $\binom{n}{h}$. 
Supponiamo che ogni tribù debba avere un capo, esistono due modi per sceglierlo:
- **democratico** la tribù sceglie uno dei suoi membri per diventare capo. 
$$
h \binom{n}{h}
$$
- **dittatoriale** il capo scegli i suoi $h-1$ memebri della tribù:
$$
n \binom{n-1}{h-1}
$$

I due risultati devono coincidere, quindi:
$$
h\binom{n}{h} = n\binom{n-1}{h-1}
$$
Viene chiamata _absorption/extraction identity_, portando $h$ dall'altro lato è evidente perchè.
3. Otteniamo un'altra identità, bipartizionando l'insieme $\binom{[n]}{h}$ : fissiamo un elemento $i \in [n]$, induce la bipartizione $S_i \cup S_c$
$$
\begin{align}
&S_i := \{I \subseteq [n] \, :\, i \in I\} \\
& S_c := \{ I \subseteq [n] \,:\, i \notin I\}
\end{align}
$$
essendo disgiunti, la cardinalità dell'unione è la somma delle cardinalità:
$$
\binom{n}{h} = \binom{n-1}{h} + \binom{n-1}{h-1}
$$
4. 
$$
\sum_{h=0}^n \binom{n}{h}^2 = \binom{2n}{n}
$$
Abbiamo un gruppo di $n$ uomini ed $n$ donne, in totale $2n$ persone. Vogliamo invitarle ad una festa, ma c'è spazio solo per $n$ persone in totale $;($. 
E' chiaro che avrò $\binom{2n}{n}$ modi possibili per riempire la festa, ovvero di scegliere il sottoinsieme di $n$ invitati $A \subset [2n]$.
Partizioniamo gli invitati $A=U_A \cup D_A$. Contiamo i sottoinsiemi che contengono $i$ donne, (e quindi $n-i$ uomini):
$$
\binom{n}{i}\binom{n}{n-i} = \binom{n}{i}^2
$$
Mi basta sommare per $i = 0,n$ ed ottengo la tesi!.

### Definizione algebrica

Da qui possiamo definire algebricamente il coefficiente binomiale alla maniera solita: Per il primo elemnto $a_1$ abbiamo $n$ scelte, per $a_2$ $n-1$, e così via fino ad avere $n-h+1$ scelte per l'emento $a_h$. Ma per un insieme l'ordine non conta, quindi dividiamo per tutte le permutazioni di un insieme di $h$ elementi, otteniamo la solita formula:
$$
\binom{n}{h} = \frac{n!}{h!(n-h!)}
$$
che rispetta tutte le proprietà dimostrate precedentemente.




