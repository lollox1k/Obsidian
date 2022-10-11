# Lemma di Fatou
Segue dalla definizione di [[Limit of sets#Liminf limsup]] di insiemi.

Sia $(A_n)_{n\geq 1}$ una successione di insiemi misurabili di uno spazio di misura, allora:

1. $\mu(\liminf_n A_n) \leq \liminf_n \mu(A_n)$
2.  $\limsup_n \mu(A_n) \leq \mu(\limsup_n A_n)$
### Proof
1. 
$$
\mu (\liminf_n A_n) = \mu( \bigcup_{n\geq 1} \bigcap_{m\geq n} A_m)
$$
la successione delle intersezioni è non decrescente in $n$, quindi per [[Continuity of mesure]]:
$$
\mu (\liminf_n A_n) = \lim_{n\to \infty} \mu(\bigcap_{m\geq n} A_m) \leq \liminf_n \mu(A_n)
$$
dove abbiamo ricostruito il $\liminf$ semplicemente usando il fatto che l'intersezione di insiemi è contenuta dentro tutti (quindi anche dove $\mu$ è l'inf), e la monotonia della misura.
2. 
$$
\mu(\limsup_n A_n) = \mu( \bigcap_{n\geq 1} \bigcup_{m\geq n} A_n) 
$$
la successione delle unioni è non crescente, quindi per la continutà della misura:
$$
\mu(\limsup_n A_n) = \lim_{n\to\infty} \mu(\bigcup_{m\geq n} A_n) \geq \limsup_n \mu(A_n)
$$
ora l'unione contiene tutti gli altri insiemi, quindi anche quello dove $\mu$ ha il sup, quindi, segue dalla monotonia della misura la tesi. $\square$


## Conseguenze
Sappiamo che per [[Limit of sets#Sequenze monotone]] esiste l'insieme limite, ovvero $liminf$ e $limsup$ coincidono. Grazie al lemma di Fatou:
$$
\liminf_n \mu(A_n) = \limsup_n \mu(A_n)
$$
ovvero **il limite delle misure esiste** (come numero reale).
$$
\lim_{n\to\infty} \mu(A_n) = \mu(A)
$$

questo mi permette anche di legittimare il seguente scambio:
$$
\mu(\lim_{n\to\infty} A_n) = \mu(A) = \lim_{n\to\infty} \mu(A_n)
$$
