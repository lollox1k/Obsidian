Metodo usato per risolvere [[PDE]] del primo ordine, (si può estendere alle PDE [[Hyperbolic PDEs|iperboliche]]). 
Il metodo riduce la PDE in una famiglia di EDO, le cui soluzione sono dette _curve caratteristiche_ attraverso le quali si risolve la PDE grazie alla condizione inziale.

Risolviamo l'equazione:
$$
\partial_t u + \partial_x[a(x)u] = 0
$$
in forma semi-lineare diventa:
$$
\begin{cases}
\partial_t u + a(x)\partial_xu = -ua(x)'\\
u(0,x) = u_0(x)
\end{cases}
$$
che ha come caso particolare l'equazione [[linear advection]].


## Dim 

L'idea fondamentale è supporre che la seconda variabile sia dipendente dal tempo $(t,x(t))$, effettuando la derivata totale di $u$ si ottiene:
$$
\frac{du}{dt} = \partial_t u + \dot x\partial_x u
$$
confrontando con l'equazione, se imponiamo che $\dot x = a(x)$ siccome $u$ risolve l'equazione, la derivata totale nel tempo lungo le caratterische è $-ua(x)'$, il termine di sorgente. 
Stiamo dicendo che se mi muovo _lungo queste curve, il valore di $u$  è regolato da una EDO_. 
Per trovare $u$ al tempo e posizione generica, mi basta trovare quale caratteristica passa per quel punto.

1. trovare le caratteristiche, risolvendo un'EDO:
$$
\dot x(t) = a(x) \implies x(t) = a(x)t + x_0
$$semplicemente integrando nel tempo. Le caratteristiche sono rette (moto rettilineo uniforme) ma la velocità dipende dal punto.

2. ricostruire la soluzione partendo dalla condizione iniziale risolvendo un'altra EDO:
$$
\frac{d}{dt}u(t,x(t)) = -a'(x)u(t,x(t)) 
$$
Risolviamo esplicitamente nel caso della linear advection, quindi $a(x) = a \in \mathbb{R}$ costante.
Il punto 1 rimane uguale, ma l'edo 2 è banale: _la u resta costante lungo le caratteristiche_. 
$$
u(t,x(t))= u(0,x(0)) = u_0(x_0) = u_0(x-at)
$$
la soluzione trasla con velocità $a$ la condizione iniziale, se $a>0$ verso destra. 

Nel caso quasi lineare in cui $a(u)$ è

### Condizioni di bordo
Da notare che se studiamo la funzione in sottoinsiemi di $\mathbb{R}$ la condizione iniziale $u_0(x)$ potrebbe non bastare a chiudere il problema.
Supponiamo di lavorare nella semiretta $x\geq 0$ e $a>0$, abbiamo una regione dove non passa nessuna curva caratteristica: 
![[Pasted image 20220330140102.png]]
Dobbiamo aggiungere il valore di $u$ sul "bordo" per ogni tempo:
$$
u(t,0) = g(t)
$$
Se invece $a<0$ non abbiamo problemi:
![[Pasted image 20220330140333.png]]
Ovviamente per $x<0$ siamo nel caso opposto.

Se lavoro con intervalli finiti, es $[0,L]$ avrò sempre un lato dove devo specificare il valore di $u$ ad ogni istante. 

Con queste condizioni il problema è ben posto: _la soluzione è unica_.

Una soluzione alternativa è usare condizioni al bordo periodiche! 
#### dim unicità
dimostriamo l'unicità per il caso $a>0$ nell'intervallo $[0,L]$. Usiamo un _metodo dell'energia_: moltiplicare l'equazione per una funzione/derivata di $u$ ed integrare per ottenere una uguaglianza/disuguaglianza.
Moltiplichiamo la PDE per $u$:
$$
u\partial_t u + au\partial_x u = \frac{1}{2}\partial_t u^2 + \frac{a}{2}\partial_x u^2 = 0
$$
Moltiplichiamo per 2 ed integriamo nello spazio sull'intervallo:
$$
\frac{d}{dt}\int_0^L u^2 + a[u^2(t,L)-u^2(t,0)] dx = 0
$$
ma $u^2(t,0) = g^2(t)$, il dato di bordo (sinitro, siamo nel caso $a>0$). 
$$
\frac{d}{dt}\int_0^L u^2dx = a[-u^2(t,L)+g^2(t)] \leq ag^2(t)
$$
perchè abbiamo rimosso la quantità negativa $-au^2$. Integriamo nel tempo tra $0$ e $t$:
$$
\int_0^L u(t,x)^2 dx - \int_0^L u(0,x)^2dx \leq a\int_0^t g^2(s)ds 
$$
ma $u(0,x)^2 = u_0(x)^2$ la condizione iniziale (cambito la variabile muta in $s$ per comodità).

Mostriamo che date due soluzioni del problema con uguali condizioni iniziali e di bordo sono uguali tra loro. Sfruttiamo la linearità del problema: la differenza è soluzione, con condizioni al bordo differenza, usiamo la disequazione integrale ottenuta:
$$
\int_0^L (u_1(t,x)-u_2(t,x))^2 dx \leq \int_0^L (u_{01}(x)-u_{02}(x))^2 dx + a\int_0^t (g_1(s)-g_2(s))^2 ds
$$
Se le condizioni inziali sono le stesse si ottiene:
$$
0\leq\int_0^L (u_1(t,x)-u_2(t,x))^2 \leq 0
$$
L'integrale è ovviamente maggiore uguale a zero. Siccome per ipotesi $u \in C^1$, concludiamo che:
$$
u_1(t,x) = u_2(t,x)
$$
$QED$

## Caso quasi-lineare
Interessante è il caso quasi-lineare:
$$
\partial_t u + a(u)\partial_x u = 0
$$
per il quale vale il seguente teorema:
### Teorema
Supponiamo che $u \in C^1[0,T]\times \Omega$ sia una soluzione in una regione $\Omega \subset \mathbb{R}^n$, la funzione $a\in C^1$. _Allora_ per ogni $x_0 \in \Omega$, $u$ è _costante_ lungo le curve caratteristiche definite da:
$$
x(t) = x_0 + a(u(0,x_0))t
$$
#### Osservazione
Il teorema _assume per ipotesi_ che esista $u\in C^1$ soluzione, ciò non è sempre possibile, le caratteristiche possono intersecarsi in un tempo finito (nel caso non lineare) e generare discontinuità nella soluzione: si parla di soluzioni in senso [[Weak solutions of continuity equations| debole]].  Ciò avviene nel [[Modelli macroscopici per il traffico|modello LWR]] del traffico, si possono generare onde di shock (dicontinuità che si propaga).
