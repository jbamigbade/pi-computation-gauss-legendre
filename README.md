# Taylor Series and π Computation Project – MATG 5410

This repository includes:
- An Octave script for computing π using the Gauss-Legendre algorithm
- A breakdown of functions that do not have Taylor series at x = 0


A **Taylor series** for a function \( f(x) \) at \( x = 0 \) is given by:

\[
f(x) = \sum_{n=0}^{\infty} \frac{f^{(n)}(0)}{n!} x^n
\]

For a function to have a Taylor series at \( x = 0 \), it must be infinitely differentiable at that point. If a function is **not differentiable** or has **singularities** at \( x = 0 \), it does not possess a Taylor series at \( x = 0 \).

---

## (a) \( f(x) = \sqrt{x} \)

- The function is **not differentiable** at \( x = 0 \).
- First derivative:  
  \[
  f'(x) = \frac{1}{2\sqrt{x}}
  \]  
  which is **undefined** at \( x = 0 \).
- Since the function must be smooth and differentiable for Taylor expansion, it has no Taylor series at \( x = 0 \).

---

## (b) \( f(x) = |x| \)

- \( f(x) \) is not smooth at \( x = 0 \).
- Derivative:
  \[
  f'(x) =
  \begin{cases}
  1, & x > 0 \\
  -1, & x < 0
  \end{cases}
  \]
- The left and right derivatives at \( x = 0 \) are not equal → not differentiable at that point → no Taylor series.

---

## (c) \( f(x) = \cot x \)

- \( \cot x = \frac{\cos x}{\sin x} \)
- **Singularity at \( x = 0 \)** because \( \sin 0 = 0 \)
- Not defined at \( x = 0 \), so no Taylor series exists there.

---

## (d) \( f(x) = \log x \)

- \( \log x \) is only defined for \( x > 0 \)
- Not defined at \( x = 0 \)
- Therefore, it has no Taylor series expansion at that point.

---

## ✅ Conclusion

For a function to have a Taylor series at a point:
- It must be **infinitely differentiable** at that point.
- All the functions above fail this at \( x = 0 \) due to **non-differentiability**, **discontinuity**, or **undefined behavior**.
