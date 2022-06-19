Definizioni, caratterizzazioni.

L' Epigrafo di una funzione $f : K\subseteq \mathbb{R}^n \to \mathbb{R}$ , indicato con $epi(f)$ è l'insieme di tutti i punti _al di sopra_ del grafico di $f$:
$$
epi(f) := \Big\{ (x,y) \quad\Big|\quad x\in K,\quad y \geq f(x) \Big\}
$$
### Def 1
Una funzione $f : K \subseteq \mathbb{R}^n \to \mathbb{R}$ si dice _convessa_ se il suo epigrafo è un [[Insieme convesso]].
#### Def 2
Una funzione $f$ si dice convessa se vale la disugaglianza:
$$
f(\lambda x_1 + (1-\lambda)x_2) \leq \lambda f(x_1) + (1-\lambda)f(x_2)
$$
$x_1,x_2 \in K \subseteq \mathbb{R}^n$ , $\lambda \in [0,1]$.

#### Def 1 $\iff$ Def 2
Def1 $\implies$ Def2 i punti $(x,f(x)) \in epi(f)$, quindi scelti due $x_1,x_2 \in K$ si ha:
$$
\lambda (x_1,f(x_1)) + (1-\lambda) (x_2,f(x_2)) = (\lambda x_1 + (1-\lambda)x_2, \lambda f(x_1 + (1-\lambda)f(x_2)) \in epi(f) \quad \forall \lambda [0,1]
$$
Abbiamo un'espressione che compare definizione di convessità 3. Questi punti appartengono all'epigrafo, quindi vale per le coppie $(x,y)$ che $y \geq f(x)$, che è proprio la definizione 2.
Def 2 $\implies$ Def 1
Sapendo che la funzione $f$ è convessa, costruire l'epigrafo e mostrare che è un insieme convesso.

Prendiamo due punti $(x_1,y_1),(x_2,y_2) \in epi(f)$. Facciamo vedere che è chiuso per combinazioni convesse, ovvero:
$$
\lambda (x_1,y_1) + (1-\lambda)(x_2, y_2) = (\lambda x_1 + (1-\lambda )x_2, \lambda f(x_1) + (1-\lambda)f(x_2))\in epi(f) \qquad \forall \lambda \in [0,1]
$$
$(x,y)\in epi(f)$ se $y \geq f(x)$, ma questa cosa è proprio la definizione di convessità def2. $QED$

## Insiemi di livello
Vediamo un utile teorema, che mostra ancora come funzioni ed insiemi convessi siano legati.
### Teorema
Sia dato un insieme convesso $C \subseteq \mathbb{R}^n$ e una funzione convessa
$f : C → \mathbb{R}$. Allora l’_insieme di livello_ della f relativo a un qualunque valore $\alpha$ è un insieme convesso. Se poi $C$ è un insieme chiuso e $f$ è continua allora l’
insieme di livello è anche un insieme chiuso.
#### Dim
Facciamo vedere che la combinazione convessa di due punti $x_1,x_2 \in \mathcal{L}(f,\alpha)$ è ancora nell'insieme di livello, ciò segue dalla convessità di $f$. $\forall \beta \in [0,1]$:
$$
f(\beta x_1 + (1-\beta)x_2) \leq \beta f(x_1) + (1-\beta)f(x_2) \leq \beta \alpha + (1-\beta)\alpha = \alpha \qquad \square
$$
Per la seconda parte, considero una successione $\{x_k\} \subset \mathcal{L}(f,\alpha)$,che converge ad un punto $\overline x$, per continuità:
$$
f(\overline x)= \lim_{k\to\infty}f(x_k) \leq \alpha \qquad \square
$$
da notare che $\overline x \in C$ essendo chiuso (quidi compatto).

### Oss
Utile in combo con il [[Teorema di Weierstrass]], se l'insieme ammissibile $C$  è chiuso ma non limitato (quindi non compatto e non posso usare Weierstrass) posso ragionare su $C\bigcap \mathcal{L}(\alpha,f)$ per un qualche $\alpha \in Im(f)$, che potrebbe essere limitato. Ha le stesse soluzioni ottime, dalla definizione di insieme di livello! 

## Funzioni differenziabili
Si possono caratterizzare ulteriomente, tramite il segno dell'hessiano e il piano tangente. 

### Teo 1 
Sia $f: S \subseteq \mathbb{R}^n \to \mathbb{R}$ con $S$ convesso. Allora $f$ è convessa se e solo se:
$$
f(y) \geq f(x) + \nabla f(x)\cdot (y-x)
$$
per tutti $x,y \in S$. Ovvero:
> la funzione è maggiore di tutti i piani tangenti in ogni punto
#### Dim
($\implies$) Se $f$ è convessa vale la definizione 3. La rimaneggio, mando il parametro $\lambda$ a zero per far uscire la definizione di derivata direzionale.
$$
f(\lambda y + (1-\lambda)x) \leq \lambda f(y) + (1-\lambda)f(x)
$$
riscriviamo in maniera più _esplicita_ la combinazione convessa da entrambe le parti
$$
f(x + \lambda(y-x)) \leq f(x) + \lambda (f(y)-f(x))
$$
Ora è chiaro che se mandiamo $\lambda \to 0$ , a sinistra abbiamo il numeratore della deifnizione di derivata direzionale. Portiamo a sinistra $f(x)$ e dividiamo per $\lambda$ ($\lambda \geq 0$) ed abbiamo il rapporto incrementale:
$$
\lim_{\lambda\to 0} \frac{f(x+\lambda(y-x))-f(x)}{\lambda} \leq f(y)-f(x)
$$
Il limite di sinistra è la derivata direzionale, che possiamo riscrivere tramite il gradiente:
$$
\nabla f(x)(y-x) \leq f(y) - f(x)
$$
$QED$.
($\impliedby$ )  L'idea è far scomparire il gradiente, con un'oppurtuna combinazione lineare. Vogliamo far apparire $\lambda$ e ($1-\lambda$). Partiamo da due punti diversi, confrontiamo con lo stesso iperpiano passante per $f(z)$ vale:
$$
f(y) \geq f(z) + \nabla f(z)(y-z)
$$
$$
f(x) \geq f(z) + \nabla f(z)(x-z)
$$
Vogliamo far comparire $\lambda f(y) + (1-\lambda)f(x)$. Moltiplichiamo le due equazioni e sommiamo:
$$
\lambda f(y) + (1-\lambda)f(x) \geq \lambda [ f(z) + \nabla f(z)(y-z))] + (1-\lambda)[f(z) + \nabla f(z)(x-z)]
$$
$$
\geq \lambda \nabla f(z)(y-x) +f(z) + \nabla f(z)(x-z) = f(z) + \nabla f(z)(x+\lambda(y-x)-z)
$$
A destra vorremmo avere $f(\lambda y - (1-\lambda)x)$. Fortunatamente possiamo scegliere $z$ in maniera opportuna. Notiamo che ponendo $z = \lambda y + (1-\lambda)$ non solo il gradiente scompare, ma abbiamo proprio l'espressione cercata. $QED$ 

### Hessiano
Se è $C^2$ si può caratterizzare ulteriormente con l'Hessiano.
#### Teo
Sia $f: S \subseteq \mathbb{R}^n \to \mathbb{R}$ con $S$ convesso ed $f \in C^2[S]$, allora:
1. Se $H_f(x)$ è definito semi-positivo in $S$ allora $f$ è convessa
2. Se $H_f(x)$ è definitopositivo in $S$ allora $f$ è strettamente convessa
3. Se $S$ è aperto ed $f$ è convessa, allora $H_f(x)$ è definito semi-positivo in $S$
#### Dim
1. Per il corollario del [[Teorema di Lagrange]] possiamo scrivere $f$ come:
$$
f(y)= f(x) + \nabla f(x)(y-x) + \frac{1}{2}(y-x)^T H(z)(y-x)
$$
per un certo $z$ nel segmento che collega $y$ e $x$. 
Per ipotesi $H$ è definita semipositiva, quindi rimuovendola si ha:
$$
f(y) \geq f(x) + \nabla f(x)(y-x)
$$
che per il Teo 1 implica che $f$ è convessa.
2. Banale, si fa come sopra ma stavolta la disuguaglianza è stretta.
3. Applichiamo Taylor al secondo ordine in un punto $x+\lambda d$, per ogni $d\in \mathbb{R}^n$ con $\lambda \in \mathbb{R}$ 
 abbastanza piccolo da rimanere in $S$ (è un insieme aperto per ipotesi posso farlo), allora:
$$
f(x+\lambda d) = f(x) + \nabla f(x)\lambda d + \frac{\lambda^2}{2}d^T H(x)d + o(|\lambda|^2 ||d||^2)
$$
Siccome $f$ è convessa per ipotesi vale il teorema 1, quindi:
$$
\frac{\lambda^2}{2}d^T H(x)d + o(|\lambda|^2||d||^2) \geq 0
$$
dividendo per $\lambda$ e facendo il limite $\lambda \to 0$ :
$$
\langle  d \cdot H(x) d \rangle \geq 0 \qquad \forall d \in \mathbb{R} ^n
$$
la definizione di definita semi-positiva. $QED$
