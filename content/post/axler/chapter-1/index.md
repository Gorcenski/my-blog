---
title: "Linear Algebra Done Right: Chapter 1"
date: 2019-01-07T00:30:00+01:00
draft: false
tags: ["math", "linear algebra"]
categories: ["book reports", "math"]
markup: mmark
displayMath: [['$$','$$'], ['\\[','\\]']]
---

This post works though the exercises for Chapter 1 of Axler's _Linear Algebra Done Right_. The summary review can be found [here](/post/working-review-linear-algebra-done-right-sheldon-axler/).

<!--more-->

_1. Suppose $$a$$ and $$b$$ are real numbers, not both $$0$$. Find real numbers $$c$$ and $$d$$ such that $$1 / (a + bi) = c + di$$._

We have

$$\begin{align}
1 / (a + bi) &= c + di \\
1 &= (a + bi)(c + di) \\
 &= ac - bd + (bc + ad)i.
\end{align}$$

This implies

$$\begin{align}
ac - bd &= 1, \\
bc + ad &= 0.
\end{align}$$

Let us proceed by cases. Suppose $$a = 0.$$ Then by hypothesis, $$b \neq 0$$. From $$ac - bd = 1$$ we get $$d = -\frac{1}{b}$$ and from $$bc + ad = 0$$ we get $$bc = 0 \implies c = 0$$.

Suppose $$b = 0,$$ then by hypothesis $$a \neq 0$$ and we reduce to real-number division.

Finally, suppose neither $$a$$ nor $$b$$ are zero. Then $$bc = -ad \implies c = -\frac{ad}{b}$$. Substituting, we find, $$-\frac{a^2d}{b} - bd = 1$$, which reduces to $$d(a^2+b^2) = -b$$. This gives us the general result

$$\begin{align}
c &= \frac{a}{a^2+b^2}, \\
d &= -\frac{b}{a^2+b^2}.
\end{align}$$

_2. Show that $$\frac{-1+\sqrt{3}i}{2}$$ is a cube root of $$1.$$_

We verify through computation:

$$\begin{align}
\left(\frac{-1 + \sqrt{3}i}{2}\right)^3 &= \left(-\frac12+\frac{\sqrt3}{2}i\right) \left( -\frac12 - \frac{\sqrt3}{2}i\right) \\
 &= \frac14 + \frac34 \\
 &= 1.
\end{align}$$

_3. Prove that $$-(-v) = v$$ for every $$v \in V.$$_

From $$-v + v = 0$$, we have that $$-v \equiv (-1)v$$, so $$-(-v) = (-1)(-v) = (-1)((-1)v).$$ By scalar multiplication, this becomes $$-(-v) = (-1)(-1)v = 1v = v$$.

_4. Prove that if $$a \in \mathbb{F}, v \in V$$, and $$av = 0$$, then $$a = 0$$ or $$v = 0.$$_

Suppose not. Then $$a \neq 0$$ and $$v \neq 0$$. Since $$av = (av_1, av_2, \ldots)$$ and since $$v \neq 0$$ implies that there exists some $$j$$ for which $$v_j \neq 0$$, this implies that $$av_j = 0$$ for non-zero $$a$$ and $$v_j$$. However, since $$\mathbb{F}$$ is a field, it has no non-zero zero divisors, so this proves the contradiction.[^1]

_5. For each of the following subsets of $$\mathbb{F}^3$$, determine whether it is a subspace of $$\mathbb{F}^3$$:_

*(a.) $$\{(x_1, x_2, x_3) \in \mathbb{F}^3\ :\ x_1 + 2x_2 + 3x_3 = 0\}$$*

*(b.) $$\{(x_1, x_2, x_3) \in \mathbb{F}^3\ :\ x_1 + 2x_2 + 3x_3 = 4\}$$*

*(c.) $$\{(x_1, x_2, x_3) \in \mathbb{F}^3\ :\ x_1x_2x_3 = 0\}$$*

*(d.) $$\{(x_1, x_2, x_3) \in \mathbb{F}^3\ :\ x_1 = 5x_3\}$$*

We can proceed by checking against the subspace axioms. For _(a)_, we have $$0 + 2\cdot 0 + 3\cdot 0 = 0$$ and $$ax_1 + 2ax_2 + 3ax_3 = a(x_1+2x_2+3x_3) = a0 = 0$$ so we must only do work to verify closure by addition. Let $$x, y$$ be two vectors satisfying the subset condition. Take $$x_1+y_1 + 2(x_2 + y_2) + 3(x_3 + y_3) = x_1 + 2x_2 + 3x_3 + y_1 + 2y_2 + 3y_3 = 0 + 0 = 0.$$ Therefore, the set is closed under vector addition, so the space is a subspace.

For _(b)_, we have an immediate counterexample: $$0 + 20 + 30 \neq 4,$$ so the subset is not a subspace.

For _(c)_, consider $$x = (1, 0, 0)$$ and $$y = (0, 1, 1)$$. Then, $$x+y = (1, 1, 1)$$ is not in the set, so it is not closed under addition and cannot be a subspace.

For _(d)_, we have that $$0 = 5\cdot 0$$. If $$x_1 = 5x_3$$, then $$ax_1 = 5ax_3$$, so all that is left is to check closure of addition. Once again, if $$x$$ and $$y$$ meet the criteria, then $$x_1 = 5x_3$$ and $$y_1 = 5y_3$$ so $$x_1 + y_1 = 5x_3 + 5y_3  \implies (x_1 + y_1) = 5(x_3 + y_3)$$ so we do in fact have a vector subspace.

_6. Give an example of a nonempty subset $$U$$ of $$\mathbb{R}^2$$ such that $$U$$ is closed under addition and under taking additive inverses, but $$U$$ is not a subspace of $$\mathbb{R}^2$$._

This is the first thought-provoking exercise of the book. We can construct what we must see in the counter-example from what is given. If $$U$$ is closed under addition (satisfying one axiom), and is closed under additive inverses, then it must also contain the identity element (satisfying another axiom). The remaining axiom is closure under scalar multiplication. This makes it easy at this point. Let

$$U = \left\{ (x, y)\ :\ x, y \in \mathbb{Z}\right\},$$

then for any $$\alpha \in \mathbb{R} \setminus \mathbb{Z}$$ it is clear that $$\alpha (x,y) \notin U$$.


_7. Give an example of a nonempty subset $$U$$ of $$\mathbb{R}^2$$ such that $$U$$ is closed under scalar multiplication, but $$U$$ is not a subspace of $$\mathbb{R}^2$$._

Like the previous example, we can use the axioms to derive an example. Consider the following:

$$U = \left\{ (x, 0)\ :\ x \in \mathbb{R} \right\} \cup \left\{ (0, y)\ :\ y \in \mathbb{R} \right\}.$$

Evidently, $$U \subset \mathbb{R}^2.$$ For any $$v \in U$$, we have $$\alpha v$$ implies $$(\alpha x, 0) \in U$$ or $$(0, \alpha y) \in U$$, so we satisfy closure under scalar multiplication. However, $$(x, y) \notin U$$ for $$x, y$$ both nonzero, so we do not satisfy closure under addition, and therefore we have not created a subspace.

_8. Prove that the intersection of any collections of subspaces of $$V$$ is a subspace of $$V.$$_

Let $$U_i$$ be a subspace of $$V$$ for all $$i$$, and let $$U = \bigcap_i U_i$$. Suppose $$U$$ is not a subspace of $$V$$. Then, at least one of the following statements must be true:

- There is a $$U_j$$ such that $$0 \notin U_j$$.
- Take $$x, y \in U$$. Then, there is a $$U_k$$ such that $$x, y \in U_k$$ but $$x + y \notin U_k$$.
- Take $$x \in U$$. Then, there is a $$U_l$$ such that $$x \in U_l$$ but $$\alpha x \notin U_l$$.

Each of these conditions violates the hypotheses that for all $$j$$, $$U_j$$ is a subspace. Therefore, $$U$$ must be a subspace.

_9. Prove that the union of two subspaces of $$V$$ is a subspace of $$V$$ if and only if one of the subspaces is contained in the other._

Let $$V_1$$ and $$V_2$$ be subspaces of $$V$$ and assume that $$U = V_1 \cup V_2$$ is a subspace of $$V$$. Take $$x \in V_1 \setminus V_2$$ and $$y \in V_2 \setminus V_1$$. Evidently, $$x, y \in U$$, so $$x + y \in U$$. Since $$U = V_1 \cup V_2$$, then $$x + y \in V_1$$ or $$x + y \in V_2$$, necessarily. By closure under addition, this implies that either $$y \in V_1$$ or $$x \in V_2$$, contradicting the assumption that both subspaces can have unique elements.

For the converse, assume $$V_1 \subset V_2$$. Then $$V_1 \cup V_2 = V_2$$, which is a subspace by hypothesis.

_10. Suppose $$U$$ is a subspace of $$V$$. What is $$U + U$$?_

Since $$U$$ is a subspace, it is closed under addition. Since every element of $$U+U$$ is the sum of two elements of $$U$$, and since $$U$$ is closed under addition, then $$U + U = U$$.

_11. Is the operation of addition on the subspaces of $$V$$ commutative? Associative?_

Let $$U_1, U_2, U_3$$ be subspaces of $$V$$. We have:

$$\begin{align}
U_1 + U_2 &= \left\{ x + y\ :\ x \in U_1, y \in U_2 \right\} \\
 &= \left\{ (x_1, x_2, \ldots) + (y_1, y_2, \ldots)\ :\ x \in U_1, y \in U_2 \right\} \\
 &= \left\{ (x_1 + y_1, x_2 + y_2, \ldots)\ :\ x \in U_1, y \in U_2 \right\} \\
 &= \left\{ (y_1 + x_1, y_2 + x_2, \ldots)\ :\ x \in U_1, y \in U_2 \right\} \\
 &= \left\{ (y_1, y_2, \ldots) + (x_1, x_2, \ldots)\ :\ x \in U_1, y \in U_2 \right\} \\
 &= U_2 + U_1.
\end{align}$$

Therefore, addition is commutative.

Furthermore
$$\begin{align}
(U_1 + U_2) + U_3 &= \left\{ (x + y) + z\ :\ x \in U_1, y \in U_2, z \in U_3 \right\} \\
 &= \left\{ x + (y + z)\ :\ x \in U_1, y \in U_2, z \in U_3 \right\} \\
 &= U_1 + (U_2 + U_3).
\end{align}$$

Therefore, addition is also associative.

_12. Does the operation of addition on subspaces of $$V$$ have an additive identity? Which subspaces have additive inverses?_

Consider a subset containing the zero vector and nothing more; this is trivially a subspace. Moreover, since every subspace by definition contains the zero vector, adding this trivial subspace to any other nontrivial subspace yields precisely the non-trivial subspace.

Suppose a subspace is an additive inverse of another subspace. Then, by the definition of subspace addition, _every_ combination of sums of elements must be the zero vector. But since every subspace contains the zero vector, this can only be true if every element of the subspace and its additive inverse is the zero vector. Therefore, only the trivial subspace has an additive inverse.

*13. Prove or give a counterexample: if $$U_1, U_2, W$$ are subspaces of $$V$$ such that $$U_1 + W = U_2 + W$$, then $$U_1 = U_2$$.*

This is not generally true. Let $$U_1 = W$$ and let $$U_2$$ be the trivial subspace. Then since $$W + W = W$$, we have $$U_1 + W = U_2 + W$$ but by definition $$U_1 \neq U_2$$.


*14. Suppose $$U$$ is the subspace of $$\mathcal{P}(\mathbb{F})$$ consisting of all polynomials $$p$$ of the form*

$$p(z) = az^2 + bz^5,$$

*where $$a, b \in \mathbb{F}$$. Find a subspace $$W$$ of $$\mathcal{P}(\mathbb{F})$$ such that $$\mathcal{P}(\mathbb{F}) = U \oplus W$$.*

Proposition 1.9 of the text tells us that $$\mathcal{P}(\mathbb{F}) = U \oplus W$$ if and only if $$\mathcal{P}(\mathbb{F}) = U + W$$ and $$U \cap W = \{0\}$$. Therefore, we can construct $$W$$ in such a way as to avoid the "powers" contained in $$U$$; namely:

$$W = \left\{ \sum_{i \neq 2, 5} c_i z^i\ :\ c_i \in \mathbb{F} \right\}.$$

Let us verify that $$W$$ has all the desired properties:

- $$0 \in W$$: let $$c_i = 0$$ for all $i$;
- closed under addition: let $$x, y \in W$$, then by the properties of fields, we find that $$x + y \in W$$;
- closed under scalar multiplication: $$\alpha c_i \in \mathbb{F}$$ for all $$\alpha \in \mathbb{F}$$ implies that $$\alpha x \in W$$ for all $$x \in W$$;
- $$U \cap W = \{0\}$$: by construction;
- $$U + W = \mathcal{P}(\mathbb{F})$$: by construction.

Therefore, $$\mathcal{P}(\mathbb{F}) = U \oplus W$$.

*15. Prove or give a counterexample: if $$U_1, U_2, W$$ are subspaces of $$V$$ such that $$V = U_1 \oplus W$$ and $$V = U_2 \oplus W$$, then $$U_1 = U_2$$.*

Suppose there is some $$u \in U_1$$ such that $$u \notin U_2$$. Since $$V = U_1 \oplus W$$, Proposition 1.9 of the text tells us that $$u \notin W$$. Since $$V = U_1 + W$$, then evidently $$u \in V$$. This creates the necessary contradiction: if $$u \notin W$$ and $$u \in V$$ with $$V = U_2 \oplus W$$, then we must have $$u \in U_2$$, contradicting our hypothesis. Therefore, every $$u \in U_1$$ must be in $$U_2$$ and vice versa.

[^1]: Axler does not introduce this property of fields at this stage of the text. Implicitly, by the books convention, we have $$\mathbb{F}$$ to be assumed as either $$\mathbb{R}$$ or $$\mathbb{C}$$, but this restriction herein adds very little except extra baggage to account for.