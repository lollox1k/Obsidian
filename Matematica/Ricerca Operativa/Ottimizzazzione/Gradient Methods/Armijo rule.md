# Regola di armijo
L'idea è ridurre lo step size abbastanza da far diminuire la funzione (sappiamo che per un $\alpha$ abbastanza piccolo la funzione decresce), senza però perdere troppo sulla velocità di convergenza. 
Definiamo la seguente regola:
Fissiamo 3 parametri scalari $s > 0$, $0<\sigma < 1$ e $0<\beta < 1$. 
$s$ è lo step iniziale, $\beta$ controlla quanto accorcio lo step dopo ogni tentativo, $\sigma$ richiede che la funzione diminuisca di almeno una certa soglia. 
Per decidere lo step al passo $k$ facciamo dei tentivi, indicizzati con $m$:
$$
\alpha^k = \beta^{m_k}s
$$
dove $m_k$ è il primo intero non negativo per cui vale la condizione:
$$
f(x^k) - f(x^k + \beta^ms d^k) \leq -\sigma \beta^m \nabla f(x^k)^T d^k
$$
quindi si riduce lo step aumentando la potenza di $\beta$ in maniera da ottenere una diminuzione abbastanza grande.

Fintanto che $\nabla f(x^k) \cdot d < 0$ il metodo è ben definito, in un numero finiti di tentativi trova lo step size.

## Convergenza
Dimostriamo come converga a punti stazionari per la procedura di Armijo e direzione [[Gradient Methods#Gradient related | gradient related]].
### Dim
Per assurdo sia $x^k \to \overline x$ e $\nabla f(\overline x) \neq 0$. Siccome $f(x^k)$ è una sequenza monotona non crescente, o diverge a $-\infty$ o converge. Per continuità $f(x^k)\to f(\overline x)$, Quindi:
$$
f(x^k) - f(x^{k+1}) \to 0
$$
Dalla regola di Armijo sappiamo che:
$$
f(x^k) - f(x^{k+1}) \leq -\sigma \alpha^k \nabla f(x^k)^T d^k
$$
ne deduciamo che:
$$
\alpha^k \nabla f(x^k)^T d^k \to 0
$$
siccome è _gradient related_, presa una sottosuccessione che converge a $\overline x$ vale la condizione:
$$
\limsup_{j\to\infty} \nabla f(x^{k_j})^T d^{k_j} < 0
$$

