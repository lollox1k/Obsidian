# Metodo di Richardson stazionario

Sono metodi iterativi della forma:
$$
x^{k+1} = x^k + \alpha P^{-1}r^k \qquad r^k := b - Ax^k, \quad \alpha > 0
$$
quindi metodi lineari stazionari del prim'ordine.
Il parametro reale $\alpha$ viene detto _parametro di accelerazione_, e la matrice $P \in \mathbb{C}^{n\times n}$ non singolare è detta _precondiziontore_.

Esplicitando il resto, il metodo assume la forma:
$$
x^{k+1} = (I-\alpha P^{-1}A)x^k + \alpha P^{-1}b
$$

## Analisi di convergenza

**Teorema** Se $P$ è una matrice non singolare, il metodo di Richardson stazionario è convergente se e solo se:
$$
\frac{2\Re{\lambda_i}}{\alpha|\lambda_i|^2}> 1 \quad \forall i = 1,\dots,n
$$
dove $\lambda_i$ sono gli autovalori di $P^{-1}A$.

**Dimostrazione**  Applichiamo il teorema sulla [[Metodi iterativi#Condizioni per la convergenza| convergenza dei metodi iterativi]] alla matrice di iterazione $R_\alpha = I-\alpha P^{-1}A$. La condizione diventa $|1-\alpha \lambda_i|<1$ per ogni $i$ diventa:
$$
(1 -\alpha \Re{\lambda_i})^2 + \alpha^2(\Im{\lambda_i})^2 < 1
$$
rimaneggiando, segue la tesi. $\square$

**Osservazione** Notiamo che se il segno della parte reale degli autovalori $\lambda_i$ non è costante, non esiste un $\alpha$ che permette la convergenza, dunque il metodo stazionario può funzionare.

Possiamo ottenere risultati più specifici facendo opportune ipotesi sullo spettro di $P^{-1}A$.

**Teorema** Sia $P$ non singolare, e $P^{-1}A$ abbia autovalori reali positivi, ordinati in modo che $\lambda_1,\lambda_2,\dots,\lambda_n > 0$. Allora il metodo di Richardson stazionario converge se e solo se $0<\alpha < \frac{2}{\lambda_1}$. 
Inoltre, posto:
$$
\alpha_{opt} = \frac{2}{\lambda_1+\lambda_n}
$$
minimizzo il raggio spettrale $\rho(R_\alpha)$, quindi ho una convergenza più veloce:
$$
\min_\alpha \rho(R_\alpha)= \frac{\lambda_1-\lambda_n}{\lambda_1+\lambda_n}
$$