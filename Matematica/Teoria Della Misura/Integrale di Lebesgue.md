#### Integrazione astratta
Vogliamo associare ad una funzione con codominio in $\mathbb{R^n}$ un numero reale, il suo integrale (definito).

Si procede costruttivamente, prima definendo l'integrale per una classe di funzioni, le [[Funzioni semplici]], e poi generalizzando con un passaggio al limite per una classe più ampia di funzioni. 

Si comincia ragionando solo su funzioni a valori non negativi $f : E \to [0,\infty]$ 
$$
\int_E f d\mu := sup\Big\{  \int_E \phi d\mu \quad \Big|\quad \phi \text{  semplice, } 0\leq \phi \leq f   \Big\} 
$$
Approssimiamo sempre più $f$ dal basso con funzioni semplici (per questo ci siamo limitati a funzioni non negative). 

Estendiamo banalmente a funzioni generali separando le parti positive e negative, e facendo la differenza:
$$
\int f d\mu = \int f_+ d\mu - \int f_- d\mu
$$
Dove è chiaro cosa sono $f_+$ e $f_-$ 

#### Funzioni integrabili secondo Lebesgue
Diciamo che $f$ è integrabile secondo Lebesgue su $E$ se entrambi gli integrali della parte positiva e negativa sono finiti. 

Qui c'è una differenza con l'integrale di Riemann, funzioni oscillanti che integrale davano zero, magari qui otteniamo forme indeterminate come $\infty - \infty$. 

Per essere precisi, $f$ è Lebesgue integrabile se e solo se anche $|f|$ lo è, infatti:
$$
|f| = f_+ + f_-
$$
