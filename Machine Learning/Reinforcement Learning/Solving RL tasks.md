---
tags: review
aliases:
cssclass:
---
 

# Two approaches
Given a task, we want to find a strategy to choose the next action what will yield the maximum cumulative reward.

- **Policy-based methods** Learn directly the function $\pi : (S, R) \to A$, that maps a state and a reward into an action, and maximizes the cumulative reward (can be probabilistic).
- **Value-based methods** Instead of learning a policy function that gives us the next action, learn to evaluate states, choose the action that leads us to the best possible new state!
$$
v_{\pi}(s) = \mathbb{E}_{\pi}[R(\tau) \mid S_t=s]
$$

# Deep Learning

Deep Reinforcement Learning means solving these optimization problem using deep nearual networks.