## My deleted solution for http://math.stackexchange.com/q/934652/171836 

Partial solution(I haven’t looked at the Google Books link @Karl mentions):

Let the points be $p_1=(r\ cos(\theta_1),\ r\ sin(\theta_1))$ and $p_2=(r\ cos(\theta_2),\ r\ sin(\theta_2))$

Then, $d^2= 2r^2(1-cos(\theta_1)cos(\theta_2)-sin(\theta_1)sin(\theta_2)) = 2r^2(1-cos(\theta_1-\theta_2))$

$p(d^2 \leq x^2) = 1-cos(\theta_1-\theta_2) \leq \frac{x^2}{2r^2}\implies (\theta_1-\theta_2) \geq arccos(1- \frac{x^2}{2r^2})$


The distribution of $\theta_1-\theta_2$ is given by:
$$
f(\theta_1-\theta_2)=\begin{cases}
      \frac{1}{2\pi}+\frac{\theta_1-\theta_2}{4\pi^2}, & \ -2\pi \leq \theta_1-\theta_2 \leq 0 \\
            \frac{1}{2\pi}+\frac{\theta_2-\theta_1}{4\pi^2}, & \  0 \leq \theta_1-\theta_2 \leq 2\pi
                \end{cases}
                $$

                From, $p(d^2 \leq x^2)$ we get the CDF. But integrating might not be that easy?
