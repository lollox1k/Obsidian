# Decomposizione di Schur

**Teorema** (Schur) Sia $A \in \mathbb{C}^{n\times n}$. Esiste $Q$ unitaria tale che:
$$
Q^HAQ = U = \Lambda+U^+
$$
dove $U$ è triangolare superiore.

**Dim** Per induzione sulla dimensione $n$. Il caso $n=1$ è banale, basta porre $Q=1$.
Supponiamo l'asserto vero per matrici di dimensione $n-1$. Siano $\lambda_1,\dots,\lambda_n$ gli autovalori di $A$. Sia $x_1$ un autovettore corrispondente all'autovalore $\lambda_1$ e assumiamo, s.p.g. che $x_1^Hx_1 = 1$. Consideriamo la matrice $X = (x_1,X_2)$ unitaria, ovvero $X_2 \in \mathbb{C}^{n\times (n-1)}$ e con colonne ortonormali, quindi $x_1^HX_2 = 0$.
Si ha
$$
X^HAX = 
\begin{pmatrix}
x_1^H \\
X_2^H
\end{pmatrix}
A (x_1, X_2)
= \begin{pmatrix}
x_1^HAx_1 & x_1^HAX_2 \\
X_2^HAx_1 & X_2^HAX_2
\end{pmatrix}
$$
$$
= \begin{pmatrix}
\lambda_1 & x_1^HAX_2 \\
\lambda_1X_2^H x_1 & X_2^HAX_2
\end{pmatrix}
=
\begin{pmatrix}
\lambda_1 & x_1^HAX_2 \\
0 & X_2^HAX_2
\end{pmatrix}

$$
Otteniamo quindi una matrice triangolare superiore a blocchi. Si verifica facilmente che gli autovalori sono l'unione degli autovalori dei singoli blocchi diagonali, con le rispettive molteplicità; la matrice $X^HAX$ è simile ad $A$, dunque ha stesso spettro, ne segue che $A_2 := X_2^HAX_2$ ha spettro $\lambda_2,\dots,\lambda_n$. Per ipotesi induttiva, sappiamo che possiamo assumere l'esistenza di una matrice unitria $Q_2$ tale che:
$$
Q_2^HA_2Q_2 = U_2
$$
con $U_2$ triangolare superiore. A partire da questa è facile costruire la $Q$ unitaria per la matrice $A$:
$$
Q := X
\begin{pmatrix}
1 & 0^H \\
0 & Q_2
\end{pmatrix}
$$
infatti si ha che
$$
Q^HAQ = 
\begin{pmatrix}
1 & 0^H \\
0 & Q_2^H
\end{pmatrix}
\begin{pmatrix}
\lambda_1 & x_1^HAX_2 \\
0 & X_2^HAX_2
\end{pmatrix}
\begin{pmatrix}
1 & 0^H \\
0 & Q_2
\end{pmatrix}
$$
$$
= 
\begin{pmatrix}
1 & 0^H \\
0 & Q_2^H
\end{pmatrix}
\begin{pmatrix}
\lambda_1 & x_1^HAX_2Q_2 \\
0 & X_2^HAX_2Q_2
\end{pmatrix}
=
\begin{pmatrix}
\lambda_1 & x_1^HAX_2Q_2 \\
0 & Q_2^HX_2^HAX_2Q_2
\end{pmatrix}
= 
\begin{pmatrix}
\lambda_1 & x_1^HAX_2Q_2 \\
0 & U_2 
\end{pmatrix}
$$
che concliu