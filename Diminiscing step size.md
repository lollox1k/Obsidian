# Diminiscing step size
Si fanno due richieste ragionevoli:
$$
\alpha^k \to 0 \qquad \sum_k \alpha^k = +\infty
$$
quindi una successione infinitesima non sommabile, ad esempio $\frac1k$, l'idea è di consentire al metodo di arrivare ovunque. Infatti al seconda condizione garantisce che non converge ad un punto non stazionario:
Sia $x^k \to \overline x$, allora scelti $m>n$ abbastanza grandi:
$$
|x^m-\overline x| < \epsilon \qquad |x^n-\overline x| < \epsilon
$$
il che implica
$$
|x^n - x^m| < 2\epsilon
$$
ma la distanza è pari a:
$$
|x^m-x^n| = \Big\vert \sum_{k=n}^{m-1} \alpha^k (-\nabla f(x^k))\Big\vert \approx \sum_{k=n}^{m-1} \alpha^k (-\nabla f(\overline x)) \quad \square
$$
che diverge se il gradiente non si annulla.

