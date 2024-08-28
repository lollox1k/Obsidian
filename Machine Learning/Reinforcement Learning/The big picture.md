---
tags: review
aliases:
cssclass:
---
 
## Key entities
- Agent
- World
- Reward

Let $t$ be a discrete time variable. At each time step:
1. The agent performs and action $A_t$, based on the current state $S_t$ of the envroinment and the reward $R_t$ for its previous action.
2. The envroinment updates accordingly to a new state $S_{t+1}$, and a new reward is computed $R_{t+1}$.

As any machine learning task, we want to optimize. We use the hypotesis that to get the best agent, we need to

> [!note]
> Maximize the expected cumulative reward


Since the action $A_t$ depends only on the current state and reward $(S_t, R_t)$, the framework of [[catene di Markov|Markov Chains]] is suitable.


# Reward

The cumulative reward of a _trajectory_ (a sequence of actions) at time step $t$ is just
$$
R(\tau) = \sum_{k=0}^\infty R_{t+k+1}
$$
(we start from $t+1$ since we care about future actions!). However, this cumulative reward gives the same importance at each time step. In reality we care more about near actions: actions in the far futures are less important (unpredictability). One can give a geometric dampening factor $\gamma \in (0,1)$
$$
R(\tau) = \sum_{k=0}^\infty \gamma^kR_{t+k+1} 
$$

# Tasks

There are two types of tasks in RL: _episodic_ and _continuing_.

In _episodic_ tasks there is a starting point and an ending point (you get killed in a video game or you finish the level). 

In _continuing_ tasks there is no end: the agent keeps running until we decide to stop it.


# The Exploration/Exploitation trade-off

If the envroinment and the set of actions is not too simple, the number of possible sequences quickly grows: we can't brute force every sequence and choose the best. We need a trade-off, balancing sequence _exploration_ (try something new) and _exploitation_ (what you know works): we must define (using heuristics!) a rule.