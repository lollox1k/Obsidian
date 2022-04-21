
Un insieme $S\subseteq \mathbb{R}^n$ si dice _convesso_ se per ogni coppia di punti $x_1,x_2 \in S$ si ha che:
$$
\lambda x_1 + (1-\lambda)x_2 \in S \qquad \forall x_1,x_2 \in S,\quad \forall \lambda \in [0,1]
$$
ovvero l'insieme contiene anche il segmento che collega i due punti.

Si definisce _combinazione convessa_ una [[Combinazione conica]] tale che la somma dei coefficienti non negativi è pari ad uno:
$$
y = \alpha^Tx \qquad \alpha^T1 = 1 
$$
con $1$ si è indicato il vettore di uno.

Un controllo: supponiamo che l'elemento $x_1$ della definizione precedente sia anch'esse combinazione conica di altri due elementi di $S$:
$$
\lambda x_1 + (1-\lambda)x_2 = \lambda[\mu x_3 + (1-\mu)x_4] + (1-\lambda)x_2
$$
consideriamo la somma dei coefficienti:
$$
\lambda\mu + \lambda(1-\mu) + (1-\lambda) = \lambda\mu +\lambda -\lambda\mu + 1 -\lambda = 1
$$
come doveva essere.
