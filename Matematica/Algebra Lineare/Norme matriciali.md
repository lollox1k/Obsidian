# Norme matriciali
Una norma matriciale è un'applicazione $\Vert \cdot \Vert : \mathcal{C}^{m\times n} \mapsto [0,\infty)$ tale che $\forall A,B \in \mathcal{C}^{m\times n}$:
1. $\Vert A \Vert = 0$ se e solo se $A = 0$;
2. $\Vert \alpha A\Vert = |\alpha| \Vert A\Vert$ $\forall \alpha \in \mathcal{C}$  _omogeneità_;
3. $\Vert A + B \Vert \leq \Vert A \Vert + \Vert B \Vert$ _disugualianza triangolare_.

Come si relaziona alle norme vettoriali?

Una norma matriciale è **compatibile** o **consistente** con una norma vettoriale se vale:
$$
\Vert Ax\Vert \leq \Vert A\Vert \Vert x \Vert \qquad \forall x \in \mathcal{C}^n
$$
Una norma matriciale è **sub-moltiplicativa** se vale:
$$
\Vert AB\Vert \leq \Vert A \Vert \Vert B\Vert
$$
**Osservazione** Non tutte le norme matriciali lo sono, ad esempio la norma del max non lo è, basta prendere $A = B$ matrice con tutti uno.

**Osservazione** Ogni norma matriciale submoltiplicativa induce una norma vettoriale consistente, fissando un vettore $y \neq 0$, $\Vert x \Vert := \Vert x y^H \Vert$.


## Norma di Frobenius
Sia $A \in \mathcal{C}^{m\times n}$, la norma di **Frobenius** è definita come:
$$
\Vert A \Vert_F := \sqrt{\sum_{i=1}^m\sum_{j=1}^n |a_{ij}|^2 } = \sqrt{tr(AA^H)}
$$
**Osservazione** è compatibile con la norma vettoriale Euclidea $\Vert \cdot\Vert_2$. Inoltre $\Vert I_n \Vert_F = \sqrt{n}$.

## Norma matriciale indotta
Anche una norma vettoriale induce una norma matriciale _naturale_, o _indotta_:
$$
\Vert A \Vert := \sup_{x \neq 0} \frac{\Vert Ax\Vert}{\Vert x \Vert}
$$
(si può definire in maniera equivalente facendo il sup sui versori).

Verifichiamo che sia una norma:
1. $Ax = 0$  $\forall x$ implica che $A = 0$;
2. la omogeneità segue dalla omogeneità della norma vettoriale;
3. stessa cosa la disuguaglianza triangolare. $\square$

Inoltre, la norma matriciale indotta è _compatibile_ con la norma vettoriale che la induce, e submoltiplicativa.

## Norma spettrale
La norma matriciale indotta dalla norma due vettoriale può essere caratterizzata in altri modi interessanti:
$$
\Vert A \Vert_2 = \sqrt{\rho(A^HA)} = \sigma_1(A)
$$
Se $A$ è _hermitiana_, allora $\Vert A \Vert_2 =\rho(A)$. Se è _unitaria_ vale ha norma pari ad uno.


