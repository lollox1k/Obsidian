# Equazione di Boltzmann
Descrive l'evoluzione temporale della densità di probabilità degli stati di una particella, partendo da interazioni binarie istantanee (per il gas di Maxwell gli urti)
$$
\partial_t f(t,x,v) + v\cdot \nabla_x f(t,x,v) = Q[f,f](v)
$$
Il termine con la velocità è detto termine diffusivo: senza l'operatore collisionale $Q[f]$ l'equazione si riduce all' [[Equazione del trasporto]].

L'operatore collisionale è di forma integrale, nel caso di interazioni binarie è quadratico in $f$ (con interazioni con ostacoli fissi risulta lineare, caso [[Equazione di Lorenz]]). 
$$
Q[f](v)= \int_{\mathbb{R}^3}\int_{S^2} k(|v-w|,\omega)[f(v')f(w')-f(v)f(w)]d\omega\, dw
$$
Un integrale sulle velocità e sulle direzioni. Con l'apice sono indicate le velocità post collisione delle particelle che interagiscono.

Interpretazione: si può vedere come due parti:
1. quella di sinistra (a volte indicaga con $Q_+[f]$) essendo positiva rappresenta l'incremento della probabilità di avere delle particelle con velocità $v'$ e $w'$;
2. quello di destra col meno è la rispettiva perdita, abbiamo perso due particelle con $v$ e $w$.
3. il termine $k$ è detto _kernel d'interazione_, che può essere scomposto in una sezione d'urto differenziale per un fattore.

# Derivation from BBKGY 

In the case of hard spheres, the region where $f_t$ is non-zero is
$$
\Omega_r := \{(x,v) \mid |x_i-x_j| > r, \,i\neq j\}
$$
where $r$ is the diameters of the spheres. When integrating [[Liouville equation]] we need to account of these holes in the domain. Another way is to derive a weak Liouville equation for hard spheres, with a singular term. 

We consider the case $N=2$. To find the weak equation, we multiply with a test function $\alpha$ and integrate:
$$
\int \alpha(z) f_t(z)dz = \int \alpha(Z_t(z)) f_0(z)dz
$$
where $Z_t(z)$ is the flow that solves the hard sphere system. Define the distance before any collision $\Delta_t := x_2-x_1+t(v_2-v_1)$, we use this to separate which starting states have undergone a collision at time $t$:
$$
= \int \alpha(Z_t(z)) f_0(z) \chi(|\Delta_t| > r) dz + \int \alpha(Z_t(z)) f_0(z) \chi(|\Delta_t| < r) dz
$$
we want to compute the time derivative to find a weak equation, on the right we end up with $4$ terms. When the derivative is on $\alpha(Z_t(z))$, we get:
$$
\int \sum_{i=1}^2 v_i \partial_{x_i} \alpha(Z_t(z)) f_0(z)dz
$$
where we have rejoined the integrals. The time derivative of the step functions introduce delta functions:
$$
\frac{d}{dt} \chi(|\Delta_t| > r) = \delta(|\Delta_t| = r) \frac{\Delta_t}{|\Delta_t|}\cdot (v_2-v_1) = \delta(|\Delta_t| = r) n\cdot (v_2-v_1)
$$
since $\chi(|\Delta_t| > r) + \chi(|\Delta_t| < r) = 1$ a.e., their derivative are opposites. The first term is
$$
\int f_0(z) \alpha(Z_t^-(z)) \delta(|x_2(t)-x_1(t)| = r) [n \cdot (v_2^-(t)-v_1^-(t))]^-dz
$$
this is the side _before the collision_. The _after the collision_ integral is
$$
-\int f_0(z) \alpha(Z_t^+(z)) \delta(|x_2(t)-x_1(t)| = r)[n \cdot (v_2^-(t)-v_1^-(t))]^-dz
$$
our goal is to use the flow in reverse to obtain $f_t(z)$. 
$$
\int f_t(z) \alpha(z) \delta(|x_2-x_1|=r)[n \cdot(v_2-v_1)]^-
$$
in the term after the collision we have variables both after and before the collision. The trick is
$$
[n \cdot (v_2^-(t)-v_1^-(t))]^- = -[n \cdot(v_2^+(t)-v_1^+(t))]^+
$$
now we can use the flow
$$
\int f_t(z) \alpha(z) \delta(|x_2-x_1|=r) [n\cdot(v_2-v_1)]^+
$$
We can write more explicitely the $\delta$ function, we are integrating with $x_2 = x_1 + rn$ for some $n \in S^-$, that is $n \cdot (v_2-v_1) < 0$. 
$$
-\int dx_1dv_1dv_2\int_{S^-} r^2dn\, |n \cdot (v_2-v_1)|f_0(x_1,x_1+rn) \alpha(x_1,x_1+rn) 
$$
and 
$$
\int dx_1dv_1dv_2\int_{S^+} r^2dn\,|n\cdot(v_2-v_1)| f_0(x_1,x_1+rn)\alpha(x_1,x_1+rn)
$$
we want to combine these two terms, we can do the substitution $n \mapsto -n$ in the second to match the integration domains:
$$
\int dx_1 dv_1 dv_2 \int_{S^-} r^2 dn |n \cdot(v_2-v_1)| \Big[f_0(x_1,x_1+rn) \alpha(x_1,x_1+rn) - f_0(x_1,x_1-rn) \alpha(x_1,x_1-rn)\Big]
$$
since $f$ is constant at the collision:
$$
f_t(x_1,x_2,v_1,v_2) = f_t(x_1,x_2,v_1',v_2')
$$
We have found the singular term:
$$
\mathcal{T}_{12} := \int_{S^-} r^2dn |n \cdot (v_2-v_1)| [\delta(x_2 = x_1-rn)f_t(x_1,x_2, v_1',v_2')- \delta(x_2 = x_1+rn)f_t(x_1,x_2, v_1,v_2)]
$$

The general weak Liouville equation reads:
$$
\partial_t f_t^N + \sum_{i=1}^N v_i \cdot \partial_{x_i} f_t^N = \sum_{i < j} \mathcal{T}_{ij}
$$
with this form marginalization is easy. Let's compute the equation for $f_1$. The terms on the left simply get us $\partial_t f_t^1$ and $v_1 \cdot \partial_{x_1} f_t^1$. Integrating the collision term is non-zero only for the $N-1$ terms with $i=1$:
$$
(N-1)r^2 \int dv_2\int_{S^-} dn|n\cdot(v_2-v_1)|\Big[ f_t^2(x_1,x_1-rn, v_1', v_2') - f_t^2(x_1, x_1+rn, v_1, v_2) \Big] 
$$

# The Boltzmann-Grad limit

Again we want to take the limit $N\to\infty$ in the first equation of the BBKGY hierarky. First observe that to get a $O(1)$ collision term:
$$
Nr^2 \to \lambda > 0
$$
the occupied volume by the spheres goes to zero, since it's $Nr^3$. 
This is the **Boltzmann-Grad** limit of low density, we get the equation (using continuity of $f$)
$$
\partial_t f_t + v \cdot \partial_{x_1} f_t = \lambda \int dv_2 \int_{S^-} dn |n\cdot(v_2-v_1)| [f_t^2(x_1,x_1, v_1', v_2') - f_t^2(x_1,x_1, v_1,v_2)]
$$

We need to write $f^2$ as a function of $f^1$, we do this using the _molecular chaos_ hypotesis. Since in this limit there is not dependedence on $n$, we can integrato on $S$ and add a factor of $1/2$.


# Properties

We consider the homogeneous Boltzmann equation:
$$
\partial_t f_t = Q[f,f]
$$
> [!theorem]
> Let $f_t$ be a solution of the homogeneous Boltzmann equation. Then the following quantities are conserved:
> - density 
>   $$
>   \int f(t,v) dv =: \rho
>  $$
>  - density of momentum
>  $$
>  \int v f(t,v) dv =: \rho u
> $$
> - energy density
> $$
> \int \frac 12 |v|^2 f(t,v)dv = \frac 12 \rho |u|^2 + \rho e 
> $$
> where
> $$
> e = \frac 1{2\rho} \int |v-u|^2 f(t,v)dv
> $$
> is the _internal enery density_.
> > [!proof]-
> > It' s easy to see that the expected value for any observable $\phi$ changes with time as
> > $$
> > \frac{d}{dt} \int f \phi dv= \int \phi Q[f,f] dv 
> > $$
> > 


# Quantità conservate
Usiamo sempre l'ipotesi che:
$$
\lim_{|x|\to\infty}f(t,x,v) = 0
$$
Del tutto ragionevole visto che vogliamo considerare una distribuzione di probabilità, quindi in $L^1$.

Sia $\phi(v)$ una funzione, associamo ad essa il suo valore atteso, che sarà una funzione del tempo:
$$
q(t):= \mathbb{E}_f[\phi] = \int \phi(v)f(t,x,v)dvdx
$$
Stiamo integrando su $\mathbb{R}^3\times \mathbb{R}^3$.
viene detta _quantità conservata_ se è costante nel tempo.

Ma sappiamo calcolare la derivata grazie all'eq. di Boltzmann:
$$
q'(t)= \frac{d}{dt}\int \phi(v)f(t,x,v)dxdv = \int \phi(v)\partial_t f(t,x,v)dxdv
$$
$$
= \int \phi(v)[-v \cdot \nabla_x f(t,x,v)]dxdv + \int \phi(v) Q[f](v)dxdv
$$
valutiamo il primo addendo, è la somma di 3 termini:
$$
\int \phi(v) v_1 \partial_xf dxdv = \int \phi(v)v_1dv [f(t,x,v)]\vert_{-\infty}^{+\infty} = 0
$$
per l'ipotesi precedente.

Quindi _conta solo l'integrale con l'operatore collisionale_.

### Def invariante collisionale
Diciamo che la funzione $\phi(v)$ è un _invariante collisionale_ se:
$$
\int \phi(v)Q[f]dv = 0
$$
per ogni $f$ distribuzione di probabilità.

### Lemma
Se per ogni $v,w \in \mathbb{R}^3$ si ha (quasi ovunque):
$$
\phi(v)+\phi(w)=\phi(v')+\phi(w')
$$
allora $\phi(v)$ è un invariante collisionale.

> banalmente se si conserva dopo le collisioni, rimane costante.

### Dim 
Applico la definizione, qualche cambio di variabile e simmetria del kernel d'interazione.
$$
\int \phi(v)Q[f]dv = \int\int\int \phi(v) k(v\to v'|w')[f(v')f(w')-f(v)f(w)]dv\,dw\,dS
$$
effettuo un cambio di variabili: $v \to w$, $w \to v$ , ovviamente il modulo dello Jacobbiano è 1
$$
\iiint \phi(w)k(w\to v'|w')[f(v')f(w')-f(w)f(v)]dv\,dw\,dS
$$
Il kernel d'interazione è invariante per questo scambio! (per maxwell gas $k =\Vert v-w\Vert$ ), quindi ho la stessa espressione ma con $\phi(w)$.

Ora effettuo lo scambio $v \to v'$, $w \to w'$, qui richiedo che sia Jacobbiano unitario, nel caso di Maxwell e Lorentz si fa vedere facilmente che è così.
$$
\iiint \phi(v)k(v\to v'|w')[f(w')f(v')-f(v)f(w)]dv'\,dw'\,dS
$$
ora dobbiamo esprimere $v,w$ in funzione di $v',w'$.  Segue dalla simmetria delle interazioni che rinominando le varibli di integrazioni, si ottiene:
$$
-\iiint \phi(v')k(v\to v'|w')[f(v')f(w')-f(v)f(w)]dv\,dw\,dS
$$
da questa cambio $v\to w$, quindi $v'\to w'$ ed ottengo:
$$
-\iiint \phi(w')k(v \to v'|w')[f(v')f(w')-f(v)f(w)]dv\,dw\,dS
$$
(il modulo dello Jacobbiano è sempre uno).

Sommo le 4 espressioni quivalenti e divido per 4, raccolgo:
$$
\iiint \left[ \phi(v)+\phi(w) - \phi(v')-\phi(w') \right]\left[ f(v')f(w')-f(v)f(w)\right] dv\,dw\,dS
$$
$\square$

### Corollario
Se consideriamo sfere dure, allora ogni invariante collisionale continuo è della forma:
$$
\phi(v) = a + b\cdot v + c\Vert v \Vert^2, \qquad a,b,c \in \mathbb{R} 
$$
### Dim 
Siccome valgono conservazione del momento e dell'energia, la somma $\phi(v) + \phi(w)$ deve dipendere solo dalle quantità conservate:
$$
\phi(v)+\phi(w)= \Phi(v+w, v^2+w^2)
$$
ora introduciamo nuove funzioni:
$$
\phi_{\pm}(v) = \phi(v) \pm \phi(-v) 
$$
notiamo come sia una funzione pari!
e analogamente:
$$
\Phi_{\pm}(v+w, v^2+w^2) = \Phi(v+w, v^2+w^2) \pm \Phi(-v-w, v^2+w^2)
$$

giocherellando si ottiene:
$$
\phi_{\pm}(v) + \phi_{\pm}(w) = \Phi_{\pm}(v+w, v^2+w^2)
$$
sfruttando la parià di $\phi_{\pm}$ si ottiene:
$$
2\phi_+(v)=\Phi_+(2v^2,0)
$$
_è funzione solo del quadrato_. Quindi anche $\phi_+$ è solo funzione del quadrato!
Riscrivendo:
$$
\psi(v^2)+\psi(v^2)= \Phi_+(v^2+w^2)= \psi(v^2+w^2)+\psi(0)
$$
quindi è lineare, richiedendo la continuità è della forma:
$$
\psi(v)= cv^2+a
$$
Consideriamo due vettori ortogonali, allora la per la parte negativa:
$$
\phi_-(v)+\phi_-(w)= \Phi_-(v+w,0)= \phi_-(v+w)
$$
l'ultima segue da $\phi_-(0)=0$

Dati due vettori arbitrari, sia $\rho$ ortogonale ad tutti e due, allora se applica l'eq precedente...

Si conclude con $\phi(v)= (\phi_+ \phi_-)/2$       $\square$


# Equilibrio
Una distribuzione $f$ è detta di _equilibrio_ se:
$$
Q[f,f]=0
$$
### Proposizione
Una distribuzione è di equilibrio se è l'esponenziale di un invariante collisionale della forma $\phi(v)+\phi(w)= \phi(v')+\phi(w')$

### Dim 
Dalla definzione di operatore collisionale, se $f(v)f(w)=f(v')f(w')$ allora è un equilibrio.
Passando ai logaritmi:
$$
\log f(v) + \log f(w) = \log f(v')+\log f(w')
$$
ovvero se $\log{f}$ è un'invariante collisionale della forma espressa sopra. $\square$ 

### Oss
Ovviamente vale per combinazioni lineari di invarianti collisionali.

## La Maxwelliana
$$
f(v)= \mathcal{M}_{\rho,u,T}(v)=\frac{\rho}{(2\pi T)^{3/2}}e^{-\frac{\Vert v-u\Vert^2}{2T}}
$$

# Teorema H
Sia $f(t,v,x)$ una funzione sufficientemente smooth e che tende a zero all'infinito, ed una soluzione dell'equazione di Boltzmann. Allora la quantita:
$$
H(t) := \int f\log{f} dvdt
$$
detta _Entropia_ (c'è il segno menoooo) decande in tempo ed è zero se e solo se $f$ è una maxwelliana.

### Oss
$\log{f}$ è un invariante collisionale quando $f=\mathcal{M}$, quindi $\mathcal{M}$ è un equilibrio. (E' exp di combinazione lin di invarianti....).

## Dim
Uso le stesse simmetrie/anti simmetrie usate per dimostrare il teorema degli invarianti collisionali, Ottengo:
$$
\int \log{f}Q[f,f]dv = \frac{1}{4}\iiint k \left[ f(v')f(w')-f(v)f(w) \right] \left[ \log{f(v)} + \log{f(w)}  -\log{f(v')}  -\log{f(w')} \right]dv\,dw\,dS
$$
raccogliendo $f(v')f(w')$ ed usando le proprietà dei logaritmi ottengo:
$$
\iiint k f(v')f(w')\left( 1-z \right)\left( \log{z}\right)dv\,dw\,dS
$$
dove $z = \frac{f(v)f(w)}{f(v')f(w')}$. La funzione integranda è non positiva. $\square$

# Equazioni di Eulero, limite idrodinamico
Per ottenere equazioni macroscopiche, passo al valore atteso degli invarianti, considerando la Maxwelliana come equilibrio.

$$
\partial_t \int \phi(v)fdv + \int \phi(v)v\cdot \nabla_x fdv = \int \phi(v)Q[f,f]dv = 0
$$
con $\phi(v)=1$ otteniamo la conservazione di massa, ovvero l'equazione di continuità:
$$
\partial_t \rho + \nabla_x\cdot (u\rho) = 0
$$

con $\phi(v)=v$ otteniamo
$$
\partial_t(u\rho) + \partial_x\left(\int v^2fdv\right)=0
$$
con $f=\mathcal{M}$ si ottiene:
$$
\partial_t(u\rho)+\partial_x(u^2\rho + P)=0
$$
con l'energia:
$$
0 + \nabla_x \cdot u = 0 
$$

