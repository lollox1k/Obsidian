---
tags: review
aliases:
cssclass:
---
 

# Definitions

Consider the random variables $\sigma_i$, spin in a lattice model. 
We can ask the following questions:

$$
{S^1_x}^4 {S^1_y}^4 + {S^1_x}^2 {S^2_x}^2 {S^1_y}^4 + \ldots + {S^N_x}^4 {S^N_y}^4
$$
$$
\begin{align*}
& {S^1_x}^4 {S^1_y}^4 + {S^1_x}^2 {S^2_x}^2 {S^1_y}^4 + {S^1_x}^2 {S^3_x}^2 {S^1_y}^4 \\
& + {S^1_x}^4 {S^2_y}^2 + {S^1_x}^2 {S^2_x}^2 {S^2_y}^4 + {S^1_x}^2 {S^3_x}^2 {S^2_y}^4 \\
& + {S^1_x}^4 {S^3_y}^2 + {S^1_x}^2 {S^2_x}^2 {S^3_y}^4 + {S^1_x}^2 {S^3_x}^2 {S^3_y}^4
\end{align*}
$$

$$
\begin{align*}
& \text{1. Start with } S^1_x S^1_y \\
& S^1_x S^1_y \quad \text{(Initial expression)} \\
\\
& \text{2. Square each term:} \\
& {S^1_x}^2 {S^1_y}^2 \\
\\
& \text{3. Multiply by } \left(\sum_{i=1}^N {S^i_x}^2\right): \\
& {S^1_x}^2 {S^1_y}^2 \cdot \left(\sum_{i=1}^N {S^i_x}^2\right) \\
& {S^1_x}^2 {S^1_y}^2 \cdot \left({S^1_x}^2 + {S^2_x}^2 + \ldots + {S^N_x}^2\right) \\
\\
& \text{4. Multiply by } \left(\sum_{j=1}^N {S^j_y}^2\right): \\
& {S^1_x}^2 {S^1_y}^2 \cdot \left({S^1_x}^2 + {S^2_x}^2 + \ldots + {S^N_x}^2\right) \cdot \left(\sum_{j=1}^N {S^j_y}^2\right) \\
& {S^1_x}^2 {S^1_y}^2 \cdot \left({S^1_x}^2 + {S^2_x}^2 + \ldots + {S^N_x}^2\right) \cdot \left({S^1_y}^2 + {S^2_y}^2 + \ldots + {S^N_y}^2\right) \\
\\
& \text{5. Distribute and multiply each term together:} \\
& {S^1_x}^2 {S^1_y}^2 {S^1_x}^2 {S^1_y}^2 + {S^1_x}^2 {S^1_y}^2 {S^2_x}^2 {S^1_y}^2 + \ldots + {S^N_x}^2 {S^N_y}^2 {S^N_x}^2 {S^N_y}^2 \\
\\
& \text{6. Simplify each term:} \\
& {S^1_x}^4 {S^1_y}^4 + {S^1_x}^2 {S^2_x}^2 {S^1_y}^4 + \ldots + {S^N_x}^4 {S^N_y}^4 \\
\end{align*}
$$


For $N = 3$

$$
\begin{align*}
& {S^1_x}^4 {S^1_y}^4 + {S^1_x}^2 {S^2_x}^2 {S^1_y}^4 + {S^1_x}^2 {S^3_x}^2 {S^1_y}^4 \\
& + {S^1_x}^4 {S^2_y}^2 + {S^1_x}^2 {S^2_x}^2 {S^2_y}^4 + {S^1_x}^2 {S^3_x}^2 {S^2_y}^4 \\
& + {S^1_x}^4 {S^3_y}^2 + {S^1_x}^2 {S^2_x}^2 {S^3_y}^4 + {S^1_x}^2 {S^3_x}^2 {S^3_y}^4 \\
\end{align*}
$$
For $N = 2$

$$
\begin{align*}
& {S^1_x}^4 {S^1_y}^4 + {S^1_x}^2 {S^2_x}^2 {S^1_y}^4 + {S^1_x}^2 {S^2_x}^2 {S^1_y}^4 \\
& + {S^1_x}^4 {S^2_y}^2 + {S^1_x}^2 {S^2_x}^2 {S^2_y}^4 + {S^1_x}^2 {S^2_x}^2 {S^2_y}^4 \\
\end{align*}
$$
