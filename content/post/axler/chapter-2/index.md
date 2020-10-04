---
title: "Linear Algebra Done Right: Chapter 2"
date: 2019-01-07T00:30:00+01:00
draft: true
tags: ["math", "linear algebra"]
categories: ["writing", "math-code-tech"]
markup: mmark
displayMath: [['$$','$$'], ['\\[','\\]']]
---

This post works though the exercises for Chapter 1 of Axler's _Linear Algebra Done Right_. The summary review can be found [here](/post/working-review-linear-algebra-done-right-sheldon-axler/).

<!--more-->

*1. Prove that if $$\left(v_1,\ \ldots,\ v_n\right)$$ spans $$V$$, then so does the list*

$$\left(v_1-v_2,\ v_2 - v_3,\ \ldots,\ v_{n-1}-v_n,\ v_n \right)$$

*obtained by subtracting from each vector (except the last one) the following vector.*

Since a field is algebraically closed, we have $$x - y \in \mathbb{F}$$ if $$x, y \in \mathbb{F}$$. Therefore, for $$a_1,\ \ldots,\ a_n \in \mathbb{F}$$, let 

$$b_i = \left\{\begin{array}{ll}
a_i, & \textrm{if } i = 1,  \\
a_i - a_{i-1}, & \textrm{otherwise.}\end{array}\right.$$

It follows that $$b_i \in \mathbb{F}$$. Now,

$$\begin{align}
V &= \textrm{span}\left(v_1,\ \ldots,\ v_n \right) \\
  &= \left\{b_1v_1 + b_2v_2 + \cdots + b_nv_n\ :\ \ b_1, \ldots, b_n \in \mathbb{F} \right\} \\
  &= \left\{a_1v_1 + \left(a_2-a_1\right) v_2 + \cdots + \left(a_{n}- a_{n-1}\right) v_n\ :\ \ a_1, \ldots, a_n \in \mathbb{F} \right\} \\
  &= \left\{a_1\left(v_1- v_2\right) + \cdots + a_{n-1}\left(v_{n-1}- v_n\right) + a_nv_n\ :\ \ a_1, \ldots, a_n \in \mathbb{F} \right\} \\
  &= \textrm{span}\left(v_1-v_2,\ v_2 - v_3,\ \ldots,\ v_{n-1}-v_n,\ v_n \right).
\end{align}$$

*2. Prove that if $$\left(v_1,\ \ldots,\ v_n\right)$$ is linearly independent in $$V$$, then so is the list*

$$\left(v_1-v_2,\ v_2 - v_3,\ \ldots,\ v_{n-1}-v_n,\ v_n \right)$$

*obtained by subtracting from each vector (except the last one) the following vector.*

Suppose by contradiction that there is some $$b_1,\ \ldots,\ b_n \in \mathbb{F}$$, not all zero, such that

$$\sum_{i=1}^{n-1} b_i \left(v_i - v_{i+1}\right) + b_nv_n = 0.$$

Then,

$$b_1 v_1 + \sum_{i=2}^n \left(b_{i} - b_{i-1}\right)v_i = 0.$$

However, $$b_i - b_{i-1} \in \mathbb{F}$$ for all $$i = 2,\ \ldots,\ n$$, so by the hypothesis this equality can only hold if $$b_1 = 0, b_i - b_{i-1} = 0$$. But if $$b_1 = 0,$$ this implies $$b_2 = 0$$, and so forth up to $$b_n$$. The contradiction is reached, so the desired property holds.

*3. Suppose $$\left(v_1,\ \ldots,\ v_n\right)$$ is linearly independent in $$V$$ and $$w \in V$$. Prove that if $$\left( v_1 + w,\ \ldots,\ v_n + w\right)$$ is linearly dependent, then $$w \in \textrm{span}\left(v_1,\ \ldots,\ v_n\right)$$.*

Take $$a_1,\ \ldots,\ a_n \in \mathbb{F}$$, not all zero. Then

$$\sum_{i=1}^n a_i \left(v_i + w\right) = \sum_i^n a_i v_i + \left(\sum_{i=1}^n a_i\right) w = 0.$$

Let $$a = -\sum_{i=1}^n a_i$$. First, we show that $$a \neq 0$$. If $$a = 0$$, then $$\sum_i^n a_i v_i = 0$$ by the above equality. But by hypothesis, we have $$\left(v_1,\ \ldots,\ v_n\right)$$ linearly independent, so we must have $$a \neq 0$$.

Since $$a \neq 0$$, we can divide by $$a$$ to obtain

$$w = \sum_{i=1}^n \frac{a_i}{a} v_i.$$

Since $$\frac{a_i}{a} \in \mathbb{F}$$, then we have $$w$$ as a linear combination of elements in $$\left(v_1,\ \ldots,\ v_n\right)$$.

*4. Suppose $$m$$ is a positive integer. Is the set consisiting of $$0$$ and all polynomials with coefficients in $$\mathbb{F}$$ and with degree equal to $$m$$ a subspace of $$\mathcal{P}(\mathbb{F})$$?*

No. Take $$a_i, b_i, a_m, b_m \in \mathbb{F}$$ such that $$a_m = b_m$$ and $$a_i \neq b_i$$ for all $$i = 0,\ \ldots,\ m-1$$. Then $$\sum_{i=0}^m a_i z^i - \sum_{i=0}^m b_i z_i$$ has degree at most $$m-1$$. Therefore the set is not closed under polynomial addition.

*5. Prove that $$\mathbb{F}^\infty$$ is infinite dimensional.*

Suppose by contradiction that $$\mathbb{F}^\infty$$ is finite dimensional with dimension $$m$$. Then (by e.g. Corollary 2.11 of the text), it has a finite-dimensional basis of length $$m$$. Any element in the span of this basis can have length no more than $$m$$. However, since $$\mathbb{F}^\infty$$ contains a sequence of length $$n > m$$, this cannot be in the span of the basis, contradicting that $$\mathbb{F}^\infty$$ is finite-dimensional.

*6. Prove that the real vector space consisting of all continuous real-valued functions on the interval $$[0,1]$$ is infinite-dimensional.*

First, we prove that $$\mathcal{P}(\mathbb{R})$$ on $$[0,1]$$ is a subspace of the aforementioned real vector space: since $$\mathcal{P}(\mathbb{R})$$ is a vector space on $$(-\infty, \infty)$$ and since every function $$p \in \mathcal{P}(\mathbb{R})$$ is continuous and real-valued, then it is a vector subspace.

Then, suppose the vector space of continuous real-valued functions on $$[0,1]$$ was finite dimensional with dimension $$n$$. Then we must have $$\textrm{dim}\ \mathcal{P}(\mathbb{R}) < n$$. Since $$\textrm{dim}\ \mathcal{P}(\mathbb{R}) = \infty$$, this supplies our contradiction.

*7. Prove that $$V$$ is infinite dimensional if and only if there is a sequence $$v_1,\ v_2,\ \ldots$$ of vectors in $$V$$ such that $$\left(v_1,\ \ldots,\ v_n \right)$$ is linearly independent for every positive integer $$n$$.*
