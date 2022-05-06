# Esistenza delle soluzioni ottime
In questo capitolo trattiamo dell’esistenza di soluzioni di problemi di ottimiz-
zazione del tipo:
$$
\min f(x)\qquad x \in C
$$
dove $C \subseteq \mathbb{R}^n$ e $f: C \to \mathbb{R}$.
Abbiamo quattro casi possibli:
1. L'insieme ammissibile $C$ è vuoto;
2. Il problema è illimitato inferiormente;
3. Il problema è limitato inferiormente ma non ammette soluzioni ottime:
_Esempio_
$f(x)=e^{-x}, \qquad x \geq 0$
4. Il problema ha almeno una soluzione ottima.

## Proposizione 1
Sia $C$ chiuso e $f$ continua. Allora l'insieme delle soluzioni ottime $SOL(C,f)$ è chiuso.
### Dim
Se $SOL(C,f) = \emptyset$, è chiuso per convenzione. Consideriamo un insieme di soluzioni non vuoto:
$$
SOL(C,f):= \{\,x\in C \; |\; f(x) = \overline f \, \}
$$
Facciamo vedere che è chiuso dimostrando che ogni successione convergente contenuta in $SOL(C,f)$ converge ad un punto di esso. Sia $\{x\}_k \subseteq SOL(C,f)$ e $\lim_{k\to\infty}x_k =\overline x$.
Come prima cosa, essendo $C$ chiuso per ipotesi $\overline x \in C$. Mostriamo ora come la continuità della $f$ implichi che l'insieme è chiuso:
$$
\overline f = \lim_{k\to\infty}f(x_k)= f(\lim_{k\to\infty}x_k)= f(\overline x)
$$
$\square$

Non si può non enunciare il [[Teorema di Weierstrass]], che garantisce l'esistenza dell'insieme delle soluzioni quando $C$ è compatto ed $f$ continua.
