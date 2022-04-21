Intuitivamente le cose sono più semplici se la funzione e l'insieme ammissibile (il dominio dove cerchiamo i punti ottimali) sono convessi/concavi.

### Teorema
Sia $f : K \subseteq \mathbb{R}^n \to \mathbb{R}$ con $f$ e $K$ rispettivamente funzione ed insieme convessi, i punti di minimo _locali_ sono anche _globali_.

#### Dim 
Banale per assurdo, supponiamo $x_0$ punto di minimo locale di $f$, ovvero $\exists \epsilon > 0$ t.c. $\forall x \in B_\epsilon(x_0) \cap K$ vale $f(x_0) < f(x)$. Sia $x_G$ il punto di minimo globale, vale $f(x_G) < f(x_0)$. 
Consideriamo la combinazione convessa tra i due punti, segue dalla convessità di $f$:
$$
f(\alpha x_G + (1-\alpha)x_0) \leq \alpha f(x_G) + (1-\alpha)f(x_0)
$$
essendo $\alpha \geq 0$ possiamo maggiorare (strettamente) il termine di destra sostituendo $\alpha f(x_G)$ con $\alpha f(x_0)$:
$$
f(\alpha x_G + (1-\alpha)x_0) < \alpha f(x_0) + (1-\alpha)f(x_0) = f(x_0)
$$
ma scegliendo $\alpha < \epsilon$ siamo all'interno della palla di centro $x_0$ dove è un minimo locale, ed possiamo trovare punti dove la funzione vale meno di $f(x_0)$, contro l'ipotesi iniziale. $QED$ 

### Teorema
Sia $f : K \subseteq \mathbb{R}^n \to \mathbb{R}$ con $K$ insieme convesso ed $f$ funzione strettamente convessa, allora 