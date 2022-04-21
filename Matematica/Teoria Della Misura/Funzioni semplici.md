Classe di partenza per defnire l' [[Integrale di Lebesgue]], in letteratura si trovano definizioni un po' diverse. Banalmente, una funzione semplice (unidimensionale) è una funzione $\phi : E \to [0,\infty)$  che assume un numero finito di valori non negativi(è costante a tratti). 
$$
C = \{ f(a) \quad | \quad a \in E\} \qquad |C| < \infty 
$$
Si può dunque rappresentare come combinazione lineare di funzioni caratteristiche:
$$
\phi(x) = \sum_{n=1}^M c_n \chi_{E_n}(x)
$$
Richiedendo che le $c_n$ siano tutte distinte, la rappresentazione è unica. $E_n$ sono insiemi misurabili.

Definisco in maniera ovvia l'integrale di una funzione semplice rispetto ad una misura $\mu$:
$$
\int_E \phi d\mu := \sum_{n=1}^M c_n \mu(E_n)
$$
Bisogna stare attendi, se la misura $\mu$ non è finita. Adottiamo la solita convenzione $0\cdot \infty = 0$. Oppure si può definire le funzioni semplici su un dominio finito per la misura, e poi generalizzare, come fanno Kolmogrov e Fomin.

Notiamo che la funzione di Dirichlet è una funzione semplice, se uso la misura di Lebesgue l'integrale è nullo:
$$
\int_{[0,1]} D(x) d\mu(x) = 0\cdot \mu([0,1]\setminus \mathbb{Q}) + 1\cdot \mu(\mathbb{Q}\cap [0,1]) = 0
$$
