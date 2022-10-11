# Mesurable functions
Una funzione $f : E \to F$ si dice misurabile se la preimmagine di un insieme misurabile è misurabile (ispirata da funzione continue in topologia). 
Ovvero: Sia $\mathcal{E} \subseteq 2^E$  e $\mathcal{F} \subseteq 2^F$  [[Sigma algebra]] dei rispettivi insiemi, $f$ è misurabile se $\forall A \in \mathcal{F}$  allora $f^{-1}(A) \in \mathcal{E}$ , rimaniamo nella sigma algebra del dominio (gli insiemi misurabili dove è definita una certa misura [[Misura]]). 

Questa definizione sarà utile per le capire quali funzioni sono Lebesgue integrabili [[Integrale di Lebesgue]] (spoiler devono essere misurabili).

## Osservazioni elementali
1. La preimmagine $f^{-1}$ _preserva le operazioni insiemistiche_. Segue dalle definzioni, estremamente utile.
2. Se una funzione è misurabile su un sottoinsieme della sigma algebra che la genera tutta, allora è misurabile, ovvero: sia $h : E \mapsto F$ e $\mathcal{C} \subseteq \mathcal{E}$ ed inoltre $\sigma(\mathcal{C}) = \mathcal{E}$. Allora se $\forall c \in \mathcal{C}$ vale $h^{-1}(c) \in \mathcal{F}$, segue che $h$ è $\mathcal{E}$-misurabile.
**Proof** considero l'insieme degli elementi dove è misurabile: $\mathcal{B} := \{ B \in \mathcal{E} \, : \, h^{-1}(B) \in \mathcal{F}\}$. Per ipotesi $\mathcal{C} \subseteq \mathcal{B}$. Mostrando che $\mathcal{B}$  è una sigma algebra (lo è perchè $h^{-1}$ preserva le operazioni insiemistiche), segue che:
$$
\sigma(\mathcal{C}) = \mathcal{E} \subseteq \sigma(\mathcal B) = \mathcal B
$$
quindi l'insieme dove è misurabile è proprio la sigma algebra di partenza. $\square$
**Esempio** Con funzioni $f : S \mapsto \mathbb R$ con la sigma algebra $\Sigma$ per $S$ e di Borel $\mathcal B$  per i reali, e il sottoinsieme base:
$$
\Pi := \{(-\infty,x] \, : \, x \in \mathbb{R}\} \qquad \mathcal B = \sigma(\Pi)
$$
quindi basta far vedere che gli insiemi sono misurabili:
$$
\{h \leq c\} :=\{ s \in S \, : \, h(s) \leq c\} \in \Sigma \qquad \forall c \in \mathbb R
$$
per concludere che $h$ è $\Sigma$-misurabile.

