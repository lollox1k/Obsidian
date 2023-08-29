
$$
L = I\omega
$$
$$
I = I_b + I_p + I_d
$$
$$
I = m_1R^2 + m_3R^2 + \frac{1}{2}m_3R^2
$$
$L_i = 0$ momento delle forze esterne nullo $M=0$ quindi $L$ si conserva
$$
L_i = L_f = 0
$$
$$
L_f = L_p + L_{b+d}
$$
$$
|\vec L| = |\vec r \times m\vec v| = Rmv \sin \theta 
$$

$$
L_f = Rm_3v\sin 50^\circ + (m_1R^2+ \frac{1}{2}m_2R^2)\omega_f = 0
$$



6.24

$$
E_i = K_i + U_i \qquad K_i = \frac{1}{2}I\omega_i^2, \quad U_i = 0 
$$
$$
E_f = \frac{1}{2}I\omega_f^2 + 4mgh_{CM}
$$

$$
y_{cm} = 0
$$
$$
x_{cm} = \frac{\frac{d}{2} + 5d}{4} = \frac{11}{8}d
$$
$$
|x_{cm}-d| = \frac{3}{8}d
$$
$$
y'_{cm} = \frac{3}{8}d
$$

6.22 statica dei sistemi

$$
\sum_i \vec F_i = \vec0
$$
non basta, controesempio:
prima eq. cardinale
$$
M\vec A_{cm} = \sum_i \vec F_i, \qquad M = \sum_i m_i
$$
se $\sum_i \vec F_i = \vec0$, allora 
$$
\implies \vec A_{cm} = 0
$$
dunque $V_{cm}$ è costante.

$$
\tau = m_2g
$$

$$
r_a - m_1g + m_2g = 0
$$
$$
r_a = (m_1-m_2)g
$$
imponiamo $\sum_i M_i = 0$

metto il polo in $A$.

$$
-\frac{d}{2}m_1g + dm_2g = 0
$$
$$
m_1 = 2m_2
$$
dunque $r_a = m_2g$
$$
E_i = m_1g\frac{d}{2}
$$
$$
E_f = \frac{1}{2}I\omega^2 + \frac{1}{2}k \theta^2
$$

$$
\omega = \sqrt{\frac{m_1gd - k \theta^2}{I}}
$$

$$
\begin{cases}
T_y = mg \\
T_x = k\delta
\end{cases}
$$
fisso il polo in $A$

$$
-mg\frac{d}{2}\sin(\pi - \pi/6) + k\delta \,d \sin(\pi-\pi/3) = 0
$$

$$
\delta = \frac{mg }{2k \sqrt{3}}
$$
$$
E_i = mg(l/2 - (l/2)\cos(\pi/6))
$$
$$
E_f = \frac{1}{2}I\omega^2 = \frac{1}{6}ml^2 \omega^2
$$
$$
I = \frac{1}{12}ml^2 + m(l/2)^2 = \frac{1}{3}ml^2
$$

### Pendolo semplice

$$
\theta_0 \quad l \quad m, \qquad \theta(t)?
$$
$$
I\alpha = M
$$
$$
I = ml^2, \qquad M = -mgl\sin(\pi - \theta) = -mgl\sin(\theta)
$$
quindi l'equazione da risolvere è
$$
\alpha(t) = -\frac{g}{l}\sin\theta(t)
$$
$$
\alpha(t) = \theta''(t)
$$
approssimazione di piccole oscillazioni
$$
\sin \theta \approx \theta + o(\theta^3)
$$

$$
\theta'' = -\frac{g}{l}\theta
$$
con le condizioni iniziali $\theta(0) = \theta_0$ e $\omega(0)=0$.

$$
\theta(t) = \theta_0 \cos(\omega t), \quad\omega = \sqrt{\frac{g}{l}}
$$
allora il periodo è 
$$
\omega T = 2\pi \implies T = 2\pi\sqrt\frac{l}{g} 
$$


differenze col un pendolo fisico? 

$$
I\alpha = M
$$
$$
I = \frac{1}{3}ml^2, \qquad M = -mg\frac{l}{2}\sin\theta
$$
$$
\theta'' = -\frac{3}{2}\frac{g}{l}\sin\theta
$$

solita approx. piccoli angoli
$$
\theta'' = -\frac{3}{2}\frac{g}{l}\theta
$$
$$
T' = \frac{2\pi}{\omega} = 2\pi\sqrt{\frac{2l}{3g}}
$$
$$
T' < T
$$
$$
T_1 = 2\pi\sqrt{\frac{2*0.60m}{30m/s^2}}
$$
$$
mT_1 = nT_2, \qquad n,m \in \mathbb{N}
$$
$$
\frac{T_1}{T_2} = 2 \implies n = 2, m=1
$$

studia pendolo composto (sbarretta e massa puntiforme alla fine), verifica che quando $M = 0$ (massa della sbarretta/filo nulla) hai le equazioni del pendolo semplice.
