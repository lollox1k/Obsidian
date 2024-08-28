---
tags: review
aliases:
cssclass:
---
 
> [!theorem]
> Let $H$ be time indipendent. SUppose in a neighbourhood of a point $z_0 = (q_0, p_0)$ there exists $n$ functions $f_i(q,p)$ such that they are:
> 1. integral of motion: $\{f_i, H\}=0$ for $i = 1,\dots, n$;
> 2. in involution: $\{f_i, f_j\} = 0$;
> 3. indipendent, meaning the $2n \times n$ matrix $(\partial_z f_1, \dots \partial_z f_n)$ has rank $n$.
>
Then, defining a vector  $f = (f_1,\dots,f_n)$, we can write the hamiltonian as: ff
>$$
H(q,p) = h(f(q,p))
>$$
>i.e. the hamiltonian is a function of these $f_i$s. Moreover there exists a canonical transformation such that $f$ are the new impulses, in the new coordinates $(\tilde q, f)$ the motion is trivial:
>$$
\begin{aligned}
\tilde q(t) &= \tilde q (0) + t \partial_f h(f) \\
f(t) &= f \\
\end{aligned}
>$$
>>[!proof]-
>>We first assume that $\det{\partial_p f} \neq 0$, notice  how condition $3.$ does not guarantee that this matrix is invertible, since we just know there exists an invertible $n\times n$ minor. However we can always find a canonical transformation such that this condition id satisfied. 
>>We need this so that we can apply the [[Implicit function theorem]]:
>>$$
>> f(q, g(q,f)) = f \qquad g(q,f) = p
>>$$
>>differentiating this function wrt to $q$ and $p$ we get:
>>$$
>>\begin{aligned}
>> 0 &= \partial_q g + \partial_f g \partial_q f   \\
>> I &= \partial_f g \partial_p f 
>>\end{aligned}
>>$$
>>if we combine the two we find
>>$$
>>\partial_q g = -\partial_p f^{-1} \partial_q f
>>$$
>>the form $g(q,f)dq$ is closed, since the condition
>>$$
>> \partial_q g = \partial_q g^t
>>$$
>>is equal to:
>>$$
>>	\partial_p f^{-1} \partial_q f = \partial_q f^t \partial_p {f^{-1}}^t 
>>$$
>>getting rid of the inverses
>>$$
>>\partial_q f \partial_p f^t - \partial_p f \partial_q f^t = 0
>>$$
>>which is true since $f_i$s are in involution (each row of this matrix equation is the poisson brackets of two $f_i$s).
>>Then it makes sense to definde its primitive:
>>$$
>>S(q, f) = \int_{q_0}^q g(q,f)\,dq
>>$$
>>with $q_0$ and $q$ joined by a curve in the neighbourhood of $z_0$.
>>By definition we get a canonical transformation
>>$$
>>\begin{aligned}
>>\partial_q S &= g(q,f) = p \\
>>\partial_f S &= \tilde q 
>>\end{aligned}
>>$$ 
>>these relation are invertible since $\partial_{qf}^2 S = \partial_f g = \partial_p f^{-1}$ which in invertible by assumption.
>>Since the $f_i$ are still constant of integration wrt the new hamiltonian:
>>$$
>>0 = \{f_i, \tilde H\} = \partial_{\tilde q} \tilde H
>>$$
>>so that $\tilde H$ is just a function of its momenta. From this it follows that 
>>$$
>> \dot{\tilde q} = \partial_f h(f) = \text{const.}
>>$$
>>and the motion is trivial. $\square$ 
>
>>

A cool consequence of this theorem is that in an hamiltonian system on a $2n$ dimensional manifold, it's impossible to have $n+1$ independent and in involution constants of motion (the manifold is $2n$ dimensional), since we can think of either of them as an hamiltonian, which can be then written as a function of the others by the previous theorem.






