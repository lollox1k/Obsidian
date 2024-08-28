---
tags: review
aliases:
cssclass:
---
 
> [!definition]
> Let $u \in L^1(\mathbb{R}^n, \mathbb{C})$, the **fourier transform** of $u$ is a function $\hat u : \mathbb{R}^n \to \mathbb{C}$ defined as:
> $$
> \hat u (\xi) := \mathcal{F}u(\xi) = \int_{\mathbb{R}^n} u(x) e^{-i x \cdot \xi} \,dx
> $$

Where we also have defined the linear operator $\mathcal{F} : u \mapsto \hat u$, also called Fourier transform. We define the **conjugate Fourier transform** as
$$
\overline{\mathcal{F}}u(\xi) := \int_{\mathbb{R}^n} u(x) e^{i x \cdot \xi} \,dx
$$
clearly they have the same properties.

> [!proposition]
> If $u \in L^1$, then its Fourier transform $\hat u$ is continuous and $\Vert \hat u \Vert_{L^\infty} \leq \Vert u \Vert_{L^1}$.
> > [!proof]-
> > Let $\xi_j \to \xi$, then $e^{-i x \cdot \xi_j} \to e^{-i x \cdot \xi}$ a.e., since $| e^{-i x \cdot \xi_j}u(x)| \leq |u(x)|$ and $u \in L^1$, we can use [[Dominated convergence theorem]] to exchange the limit and the integral.
> > Since $\hat u$, the essential sup is just the regular sup of
> > $$
> > |\hat(\xi)| \leq \int_{\mathbb{R}^n} |u(x) e^{-i x \cdot \xi}| \,dx = \Vert u \Vert_{L^1}
> > $$
> > since $|e^{-i x\cdot \xi}| = 1$. Taking the supremum we get our result. $\square$
> 

> [!remark] 
> We have thus found that:
> $$
> \mathcal{F} : L^1 \to L^{\infty}, \qquad \overline{\mathcal{F}} : L^1 \to L^{\infty}
> $$
> are bounded linear operators with norm not greater than $1$:
> $$
> \Vert \mathcal{F} \Vert = \sup_{\Vert u \Vert_{L^1} = 1} \Vert \mathcal{F}u \Vert_{L^\infty} = \sup_{\Vert u \Vert_{L^1} = 1} \Vert \hat u \Vert_{L^\infty} \leq \sup_{\Vert u \Vert_{L^1} = 1} \Vert u \Vert_{L^1} = 1
> $$
> and that their image is contained in $L^\infty \cap C^0$.

---
# Symmetries

We now study the behaviour of the Fourier transform under some common symmetries of functional spaces.

- **Reflection** $Ru(x) := u(-x)$. $\mathcal{F}$ commutes with $R$:
$$
\mathcal{F}R = R \mathcal{F} = \overline{\mathcal{F}}
$$
so that $\hat u$ and $u$ always have the same parity. 

- **Complex conjugate** $Ku(x) := \overline{u(x)}$. One can show that
$$
K\mathcal{F} = \overline{\mathcal{F}}K = R\mathcal{F}K, \qquad \mathcal{F}K = K\overline{\mathcal{F}} = KR\mathcal{F}.
$$
so that $u$ is real valued only if $\overline{\hat u(\xi)} = \hat u(-\xi)$.

- **Linear transformation**  $u \circ A (x) := u(Ax)$, $A \in GL_n(\mathbb{R})$. We have
$$
\mathcal{F}[{u \circ A}] = |\det{A}|^{-1} \hat u \circ (A^{-1})^T
$$

- **Roatation** Is a special case of the previous transformation:
$$
\mathcal{F}[u\circ R] = \hat{u} \circ R
$$
- **Scaling** $S_\lambda u(x) := \lambda u(x)$, $\lambda > 0$. is again a special kind of linear transformation $\lambda\mathcal{I}$:
$$
\mathcal{F}S_\lambda  = \lambda^{-n} S_{1/\lambda}
$$

- **Translation** $\tau_h u(x) := u(x-h)$ and **Phase shift** $\Phi_h u(x) := e^{ih\cdot x}$, $h \in \mathbb{R}^n$. Fourier transform exchanges translations with phase shifts:
$$
\mathcal{F} \tau_h = \Phi_{-h}\mathcal{F}, \qquad \mathcal{F} \Phi_h = \tau_{h}\mathcal{F}
$$

# Fourier Transform and derivatives

> [!proposition]
> Let $u : \mathbb{R}^n \to \mathbb{C}$ measurable and $k \geq 1$ an integer.
> 1. If $(1+|x|)^k u \in L^1$ then $\hat u \in C^k$ and $\hat{x^\alpha u} = i^{|\alpha|} \partial^\alpha \hat u$ for all multi-index $|\alpha| \leq k$.
> 2. If $u \in C^k$ and $\partial^\alpha u \in L^1$ for all $|\alpha| \leq k$, then $\hat{\partial^\alpha u} = i^{|\alpha|} \xi^\alpha \hat u$.
>  
>> [!proof]-


# Inversion formula

