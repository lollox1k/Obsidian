---
tags: review
aliases:
cssclass:
---
 
> [!definition]
> A first order **autonomous system** is an ODEs system of the form:
> $$
> \frac d {dt}x(t) = f(x(t))
> $$
> the functon $f$ doesn't depend directly on the indipendent variable $t$, only through $x$.

# Properties

1. **Solution are invariant under time translation** 
	Let $x_1(t)$ solve the IVP with $x(0)=x_0$, then $x_2(t) := x_1(t-t_0)$ solves the same problem with initial value $x(t_0) = x_0$. 

# Solution techniques
Assume the ODE is one-dimensional, then it's separable:
$$
t + C = \int \frac 1 {f(x)} \,dx
$$
Any higher order autonomus ODEs can be written as a first order one introducing more variables.