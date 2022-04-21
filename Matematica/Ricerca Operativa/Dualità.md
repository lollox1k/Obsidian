### Lemma di Farkas
Sia $A \in \mathbb{R^{m\times n}}$ e $b \in \mathbb{R}^m$. Allora vale esattamente una delle due condizioni: 
1. $\exists x \in \mathbb{R}^n$ tale che $Ax=b$, $x \geq 0$
2. $\exists y \in \mathbb{R}^m$ tale che $A^T y \geq 0$, $y^Tb < 0$
Ovvero una è vera se e solo se l'altra è falsa.
#### Dim
Si vede facilmente che entrambe non possono essere vere:
$$
y^T Ax = y^T (Ax) = y^Tb < 0
$$
abbiamo usato prima (1) e poi (2). Con una strada alternativa otteniamo l'opposto:
$$
y^T Ax = (A^Ty)^Tx \geq 0 
$$
infatti sia $A^Ty$ che $x$ sono maggiori uguali a zero. 

Facciamo vedere che se $(1)$ non è valida, (2) lo è.
Siano $v_1,v_2,\dots,v_n$ le colonne di $A$, chiamiamo $Q$ la [[Combinazione conica]] $Q= cone(v_1,\dots,v_n)$. SIccome $Ax = \sum_{i=1}^n xv_i$, e per la seconda condizione di (1) $x\geq 0$, $Ax=b$ se e solo se $b$ è nel cono $Q$. Quindi la (1) non vale quando $b\notin Q$, questo implica la (2).
L'insieme $Q$ è non vuoto, chiuso e convesso, possiamo applicare il [[Teorema di separazione]]. Quindi esiste un certo vettore $\alpha \in \mathbb{R}^m$ diverso da zero ed un numero reale $\beta \in \mathbb{R}$ tale che:
$$
\alpha^T b > \beta \quad \alpha^Ts < \beta \quad \forall s \in Q
$$
 Siccome $0 \in Q$ sappiamo che $\beta > 0$, e siccome $Q$ è combinazione conica dei vettori $v_i$ contiene anche $\lambda v_i$ per tutti i $\lambda > 0$:
 $$
 \alpha^T(\lambda v_i) < \beta \quad \forall \lambda > 0
 $$
 quindi:
 $$
 \alpha^T v_i < \frac{\beta}{\lambda}
 $$
 nel limite $\lambda \to \infty$, siccome $\beta > 0$ deve valere:
$$
\alpha^T v_i \leq 0 
$$
per ogni colonna $v_i$. Se ora poniamo $y = -\alpha$ otteniamo ciò che volevamo:
$$
y^T b < 0 \qquad y^T v_i \geq 0 \quad \forall i
$$
quindi:
$$
A^Ty \geq 0
$$
ovvero la seconda condizione (2). $QED$

### Teorema di Gale

