# Singular Value Decompositon

## Teorema
(SVD completa). Sia $A \in \mathcal{C}^{m\times n}$, con $m \geq n$. Allora esistono due matrici unitarie $U \in \mathbb{C}^{m\times m}$ e $V \in \mathbb{C}^{n\times n}$ tali che:
$$
U^H A V = \Sigma = diag(\sigma_1,\dots,\sigma_n) \in \mathbb{R}^{m\times n}
$$
dove $\sigma_1 \geq \sigma_2 \geq \dots \geq g_n \geq 0$  detti **valori singolari** sono univocamente determinati.
**Osservazione** Le matrici unitarie $U$ e $V$ non sono uniche, infatti itroducendo una matrice (unitaria) di fase: $S = diag(e^{i\theta_1},e^{i\theta_2},\dots)$ ##########################################################

### Dim 
Per induzione su $n$, vale per tutte le matrici con $m\geq n$.
- $n=1$, le matrici sono vettori con $k\geq n$ componenti, quindi del tipo $A = a = (a_1,a_2,\dots a_k)^T$. 
Poniamo $\sigma_1 = \Vert A \Vert_2$, e scegliamo $U \in \mathbb{C}^{k\times k}$ la matrice del [[Riflettore di Householder]] associata al vettore $u = a + \sigma_1 r^{i \arg{a_1}} e_1^{(k)}$, che è unitaria ed hermitiana. Scegliendo opportunamente $V = [e^{i\theta}]$ fa si che $U^H A V = Uae^{i\theta} = -\sigma_1 e^{i \arg{a_1}} = \sigma_1 e_1^{(k)} \in \mathbb{R}^{k\times 1}$.
- $n > 1$ facciamo vedere che se la tesi vale per matrici in $\mathbb{C}^{k\times (n-1)}$ con $k \geq n-1$, allora vale anche per matrici in $\mathbb{C}^{m\times n}$ con $m\geq n$.
- 

