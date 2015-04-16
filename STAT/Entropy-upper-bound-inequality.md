## Problem
Entropy upper bound inequality for Sub-Gaussian Random Variable

Define the $(x\log x)$-entropy (or simply the entropy) of a nonnegative random variable $Z$ by $\text{Ent}(Z):= \mathbb{E}(Z\log Z)- \mathbb{E}Z \log (\mathbb{E}Z)$. Here $\log$ is the natural logarithm.

I am interested to get the following bound: If $X-\mathbb{E}(X)$ is $\sigma^2$-subGaussian, then $\text{Ent}(\exp (t X))\leq t^2\alpha \;\mathbb{E}(\exp(tX)) $ for any $t\geq 0$, and $\alpha$ is some constant depending on $\sigma$.

How do I get the above bound? I have tried using Jensen’s inequality and various manipulations but could not get the above.
http://math.stackexchange.com/q/1225041/171836

## Solution
Let $M(t)= E[e^{tX}]$

Then 
$$Ent(e^{tX}) = E[e^{tX}tX] - E[e^{tX}]log(E[e^{tX}]) = tM’(t) - M(t)log(M(t)) = Mt^2\frac{d}{dt}\frac{log(M(t))}{t}$$

Given: $$E[e^{t(X-E[X])}] \leq \frac{e^{t^2 \sigma^2}}{2} \implies M(t) \leq e^{\frac{t^2 \sigma^2}{2}+tE[X]} \implies log(M(t)) \leq \frac{t^2 \sigma^2}{2}  +tE[X]$$

Thus, for $t \neq 0$ , $$\frac{log(M(t))}{t}  \leq \frac{t\sigma^2}{2} + E[X]$$

Consider $$\lim_{t \rightarrow 0} \frac{log(M(t))}{t} = \lim_{t \rightarrow 0} \frac{M’(t)}{M(t)}= E[X]$$

Taylor expanding   $\frac{log(M(t))}{t} $ :

$$
 \frac{log(M(t))}{t} = \lim_{t \rightarrow 0} \frac{log(M(t))}{t} + t\frac{d}{dt}\frac{log(M(t))}{t} + \frac{t^2}{2}\frac{d}{dt^2}\frac{log(M(t))}{t} + \ldots  = EX + t\frac{d}{dt}\frac{log(M(t))}{t} + o(t^2)
 $$

 Combining this with the expression above:
 $$
  EX + t\frac{d}{dt}\frac{log(M(t))}{t} \leq \frac{t\sigma^2}{2} + E[X]
  $$

  $$
    t\frac{d}{dt}\frac{log(M(t))}{t} \leq \frac{t\sigma^2}{2} 
    $$

    $$
      Mt^2 \frac{d}{dt}\frac{log(M(t))}{t} \leq \frac{Mt^2\sigma^2}{2} 
      $$

      $$
       Ent(e^{tX}) \leq \frac{t^2\sigma^2}{2}E(e^{tX}) 
       $$

       Hence $\alpha = \frac{\sigma^2}{2}$

       Assume:
       $\text{Ent}(\exp (t X))\leq t^2\alpha {E}[\exp(tX)] $ for any $t\geq 0$
       $\implies Mt^2\frac{d}{dt}\frac{log(M(t))}{t} \leq  t^2\alpha M  $ $\implies$ $\frac{d}{dt}\frac{log(M(t))}{t} \leq  \alpha$

       Integrating both sides and using $\lim_{t \rightarrow 0} \frac{log(M(t))}{t}= E[X]$

       we get: 

       $\frac{log(M(t))}{t} \leq E[X] + \alpha t$

       Comparing this with earlier inequality we get:
       $\alpha \geq  \frac{sigma^2}{2}$
