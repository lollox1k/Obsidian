E' un teorema/metodo di elimninazione per risolvere sistemi lineari di disequazioni:
$$
\begin{cases}
x_1 + 2x_2 + \dots + x_N \leq b_1\\
2x_1 - 4x_2 + \dots + x_N \leq b_2\\
\dots
\end{cases}
$$
In notazione compatta matriciale:
$$
Ax \leq b
$$
L'idea è eliminare una variabile alla volta fino ad arrivare ad un caso banale. Si eliminano le variabili effettuando _combinazioni coniche_ che generando un sistema di disequazioni implicate. 
#### Qualche definizione 
#### Poliedro 
l'insieme $P(A,b) \subseteq \mathbb{R}^n$ che risolve un sistema di disequazioni $Ax\leq b$ 
#### Disuguaglianze implicate 
La disequazioni $\alpha x \leq \beta$ è detta _implicata_ dal sistema di disequazioni $Ax\leq b$ se ogni $x \in P(A,b)$ soddisfa anche questa disequazione.  

Un sistema di disequazioni è detto _minimale_ se non contiene disuguaglianze implicate.

#### Combinazione conica
Combinazione lineare con coefficienti non negativi.
#### Teorema 
ogni disugualianza ottenuta come combinazione conica delle disugagliuanze in $Ax\leq b$ è una disuguaglianza implicata.
### Dim
banale, la cosa chiave è che una combinazione conica non "ribalta" il $\leq$, quindi posso sommarle.

#### Poliedro proiezione
Sia $P(A,b) \subseteq \mathbb{R}^n$. Il poliedro $P(A',b')\subseteq \mathbb{R}^{n-1}$ si dice _proiezione_ di $P(A,b)$ se $\forall x \in P'$ allora $\exists z$ tale che $(z,x) \in P$. Ovvero posso _estendere la soluzione_. Geometricamente $P'$ deve essere nella proiezione di $P$, tolta la dimensione di $z$.

### Teorema di Fourier-Motzkin
Partiamo da un poliedro $P$, scegliamo una variabile da eliminare $x_i$ con $i = 1,2\dots, n$. Generiamo un nuovo poliedro $P'$. Dividiamo le disequazioni di $P$ in 3 sottoinsiemi:
$$
Z = \{ i | a_{ir} = 0\} \quad P = \{i | a_{ir} > 0\} \quad N = \{i | a_{ir} < 0 \}
$$
E genero il nuvo sistema/poliedro aggiungendo:
- tutte le disequazioni in Z (dove non compare la variabile $x_r$)
- una disequazione per ogni elmeneto dell'insieme $P\times N$ (prodotto cartesiano)
Noto: tutte le disequazioni sono combinazioni coniche: è un poliedro implicato.
Ripeto fino ad arrivare all'insieme vuoto, oppure zero variabili, 


L'algoritmo è semplice, ma il numero di disequazione diventa molto grande, non è pratico da implementare per sistemi grandi. Assumiamo di avere $n$ variabili e $m$ disequazioni, e che gli insiemi $N$ e $P$ siano di cardinalità circa $m/2$. Allora dopo ogni step avremo un numero di disequazioni pari alla cardinalità del prodotto cartesiano $N\times P$ ovvero $\simeq m^2$ . Dovendo fare $n$ eliminazioni per ciascuna variabile alla fine otteniamo circa $m^{2n}$ disequazioni: cresce esponenzialmente (no buono).   