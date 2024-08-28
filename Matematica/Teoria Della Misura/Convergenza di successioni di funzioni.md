---
tags: review
aliases:
cssclass:
---
 
# Convergenza di successioni di funzioni
## Convergenza puntuale q.o
Diciamo che si ha _convergenza quasi ovunque_ $f_n \to f$ q.o. Se si ha convergenza puntuale a meno di insiemi di misura nulla, ovvero $\forall x \in E$ con $\mu(E^c) =0$ si ha:
$$
\forall \epsilon > 0, \, \forall x \in E,\, \exists N \text{ t.c. } \quad |f_n(x)-f|< \epsilon \quad \forall n \geq N 
$$
## Convergenza in misura
Diamo che la successione $f_n \xrightarrow{\mu} f$ _converge in misura_ se:
$$
\lim_n \mu(|f_n-f|> \epsilon) = 0
$$
### Convergenza puntuale implica convergenza in misura

Definiamo gli insiemi:
$$
R_n := \{x \in \Omega \,\vert\, |f_n(x)-f(x)| > \epsilon \}
$$
quindi la definizione di convergenza in  misura può essere scritta come:
$$
\lim_n \mu(R_n) = 0
$$
Consideriamo il $\limsup$ di questa successione:
$$
R := \limsup_n R_n
$$
e dal [[Lemma di Fatou]] inverso
$$
\mu(\limsup_n R_n) \geq \limsup_n \mu(R_n)
$$

l'osservazione chiave è $E \cap R = \emptyset$, ovvero se un punto appartiene all'insieme dove abbiamo convergenza puntuale, non può essere nel limsup, infatti  $x \in R$ significa che per ogni $n$ esiste un $m\geq n$  tale che $|f_m(x)-f(x)| > \epsilon$, quindi $x \notin E$. Quindi $R \subseteq E^c$, e per monotonia della misura (assumiamo sia completa) $\mu(R) = 0$, quindi:
$$
0 \geq \limsup_n \mu(R_n) = \limsup_n \mu(|f_n-f|>\epsilon) \qquad \square
$$
> il limsup è infinitamente spesso i.o., ovvero avrò sempre degli m tali che ho l'evento $|f_m(x)-f(x)| > \epsilon$


### Il vicevera non vale:
**Controesempio**

Definiamo una successione che fa avanti e dietro:
$$
f_{nk}(x) = \mathbb{1}_{\left[\frac{k}{2^n}, \frac{k+1}{2^n}\right]}(x) \qquad 0 \leq k \leq n
$$
**Oss** possiamo estrarre una sottosuccessione che convergente anche quasi ovunque, basta prendere $f_n0$. Questa cosa è vera in generale. Convergenza in misura implica l'esistenza di una sottosuccessione estratta convergente quasi ovunque.

## Convergenza in Norma-p
Diciamo che $f_n \xrightarrow{\Vert \cdot \Vert^p} f$ se la differenza della norma $p$ tende a zero:
$$
\lim_n \Vert f_n -f \Vert_p = \left(\int |f_n-f|^pd\mu \right)^{\frac{1}{p}} = 0
$$
### Convergenza in norma implica convergenza in misura
Si sfrutta la monotonia delle  norme $p$:
$$
\Vert f_n-f\Vert_p \geq \Vert f_n-f \Vert_1 = \int_\Omega |f_n-f|d\mu 
$$
ora partizioniamo $\Omega$ con gli insieme di reso usati prima:
$$
R_n :=\{x \in \Omega\,|\, |f_n(x)-f(x)|> \epsilon\} \qquad \lim_n \mu(|f_n-f|> \epsilon) = \lim_n \mu(R_n)
$$
Quindi in questi insiemi possiamo minorare la funzione integranda con $\epsilon$, e per monotonia dell'integrale di Lebesgue:
$$
\int_\Omega |f_n-f|d\mu \geq \int_{\Omega \setminus R_n} |f_n-f|d\mu + \epsilon \mu(R_n) \geq \epsilon \mu(R_n) \quad \forall \epsilon > 0
$$
Passando al limite ottengo la tesi. $\square$

# Weak convergence

> [!theorem]
> (Riesz) Let $\Omega \subseteq \mathbb{R}^n$ open, $p \in (1,\infty]$, and $\{u_k\}$ a bounded sequence in $L^p(\Omega)$. Then:
> 1. if $1 < p < \infty$, there exists a subsequence $u_k$ which converges weakly in $L^p(\Omega)$;
> 2. if $p = \infty$ there exists a subsequence $u_k$ which converges weakly-$*$ in $L^\infty(\Omega)$;
>  
> > [!proof]-
> > Since $p \neq 1$, $L^q$ is seperable, let $\{g_j\}$ be a dense sequence in $L^q$. Then the numerical sequence:
> > $$
> > \int u_i g_1 dx \leq M \Vert g_1 \Vert_{L^q}
> > $$
> > where $\Vert u_i \Vert_{L^p} \leq M$. Then it has a converging subsequence
> > $$
> > \int u_i^{(1)} g_1 dx
> > $$
> > Again, the sequence
> > $$
> > \int u_i^{(1)} g_2 dx \leq M \Vert g_2 \Vert_{L^q}
> > $$
> > is bounded, and we can find a converging subsequence $u_i^{(2)}$. Keep going, we can define the diagonal subsequence $w_i := u_i^{(i)}$, which has the property that all numerical sequences converges:
> > $$
> > \int w_i g dx \quad \forall g 
> > $$
> > Since $\{g_i\}$ is a dense sequence, for any $v \in L^q$ and $\epsilon > 0$ we can find a $g$ such that
> > $$
> > \Vert v-g \Vert_{L^q} < \epsilon
> > $$
> > we want to show that $w_i$ converges also when integrated along any $v \in L^q$. This is true since:
> > $$
> > |\int (w_j-w_i)v dx| \leq  |\int (w_j-w_i)(v-g) dx| + |\int (w_j-w_i)g dx| \leq 2M \epsilon +|\int (w_j-w_i)g dx|
> > $$
> > where we have used [[Holder's inequality]] for the first term. Clearly the second term on the right goes to zero as $i,j \to \infty$, which also implies that the sequence on the left is Cauchy. Call it's limit:
> > $$
> > \int w_i v dx \to T(v)
> > $$
> > $T(v)$ is a linear operator, and is also bounded:
> > $$
> > |T(v)| \leq M \Vert v \Vert_{L^q}
> > $$
> > so that $T \in (L^q)'$, and can be represented by a function $u \in L^p$:
> > $$
> > \int w_i vdx \to T(v) = \int uv dx
> > $$
> > which is the defintion of weak convergence $w_j  \rightharpoonup u$ in $L^p$, and weak-$*$ in $L^\infty$. $\square$