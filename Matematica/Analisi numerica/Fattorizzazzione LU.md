# Fattorizzazzione LU
Mostreremo come il [[Metodo di Gauss MEG]] equivalga a fattorizzare la matrice $A$ di partenza nel prodotto di due matrici, $A=LU$. Il vantaggio di questo punto di vista è che posso sfruttare la stessa fattorizzazzione per risolvere sistemi con termine noto $b$ diverso:
$$
LUx=b \qquad 
\begin{cases} 
Ly = b \\
Ux = y \\
\end{cases}
$$
e posso risolvere i due sistemi triangolari con gli algoritmi [[Risolvere sistemi lineari#Sistemi triangolari |backward e forward]].

L'osservazione chiave è che possiamo scrivere la nuova matrice $A^{(k+1)}$ come prodotto di una matrice dei moltiplicatori con quella precedente $A^{(k+1)}=M^{(k )} A^{(k)}$
![[Pasted image 20221025143308.png]]

Di conseguenza:
$$
U = M^{(n-1)} \dots M^{(1)}A
$$
quindi la matrice cercata $L$ sarà:
$$
L = (M^{(n-1)} \dots M^{(1)})^{-1} = {M^{(1)}}^{-1} \dots {M^{(n-1)}}^{-1}
$$
Calcolare le inverse delle matrici $M^{(k)}$ è semplice:
$$
{M^{(k)}}^{-1} = (Id-m_ke_k^T)^{-1}= Id +m_ke_k^T   
$$
![[Pasted image 20221025144043.png]]

### Proposizione
Sia $A \in \mathbb{R}^{n\times n}$. La fattorizzazzione $A=LU$ con $l_{ii}=1$ con $i=1,\dots,n$, esiste ed è unica se e solo se le sottomatrici principali $A_i$ di ordine $i=1,\dots,n-1$ sono non singolari.

Matrici $A$ che soddisfano questo prerequisito sono matrici definite positive

### Generalizzazzione PA=LU
La fattorizzazzione può essere generalizzata cercando, al passo $k$$ del processo di eliminazione, un elemento pivotale non nullo scorrendo gli elementi della sola sottocolonna. Per tale motivo essa è detta pivotazione parziale (per righe). Un valore grande di mik (generato ad esempio da un valore piccolo del pivot a(k) kk ) può amplificare gli eventuali errori di arrotondamento. Per questo motivo si sceglie come elemento pivotale l’elemento di modulo massimo della colonna e la pivotazione parziale viene generalmente operata ad ogni passaggio anche quando non si incontrano elementi pivotali nulli.

