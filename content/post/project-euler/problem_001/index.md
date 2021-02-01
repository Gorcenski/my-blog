---
title: "Solving Project Euler Problem 1"
date: 2021-02-01T23:39:28+01:00
draft: false
tags: ["math", "number theory"]
categories: ["math-code-tech"]
markup: mmark
displayMath: [['$$','$$'], ['\\[','\\]']]
---

I recently re-solved Project Euler Problem 1 on Twitch. Here's the math behind it.

<!--more-->

[Project Euler](https://projecteuler.net/) is a collection of mathematical problems, mostly revolving around number theory, that might also require some level of programming skill to solve. The problems have been around for nearly 20 years, and I've already solved many of them. But I decided to dust off some old math skills and start from the beginning by solving [Problem 1](https://projecteuler.net/problem=1). Here's the math behind it.

> If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
> 
> Find the sum of all the multiples of 3 or 5 below 1000.

This is not a hard problem to solve. A programmer might look at this problem, recognize that we need to use a modulo operation, and write something like the following:

```python
sum([x for x in range(1000) if x % 3 == 0 or x % 5 == 0])
```

And in fact, this works quite well. But there's a problem here. The problem is that the actual mathematics, the _business logic_, is hidden inside the conditional and that doesn't really reveal what's happening. Moreover, this is slow! We don't care about most numbers: 1, 2, 4, 7, 8, etc. add nothing to our sum. But here we have to compute two modulo operations for each of them. We can do much better by exploring the math.

First, we should recognize that the sum of numbers less than 1000 divisible by three can be re-written as a sum of consecutive integers:

$$
3 + 6 + 9 + \cdots + 999 = 3 \left( 1 + 2 + \cdots + 333\right).
$$

Likewise, we can similarly factor out for multiples of 5. This allows us to abstract the problem: we can solve this problem as one of computing the "right" sums of consecutive integers. But how do we do that?

There is [a story](http://superm.math.hawaii.edu/_pdfs/lessons/k_five/Gauss_addition_lesson.pdf), likely apocryphal, that a young Carl Friedrich Gauss was given a busywork assignment to sum all numbers from one to one hundred. His lecturer, thinking that it would keep him busy, was surprised when Gauss quickly identified the solution.

His method involved using the commutative property to write the sum two different ways. Consider the sum for numbers from one to four:

$$
\begin{array}{ccccccc}
1 & + & 2 & + & 3 & + & 4 \\
4 & + & 3 & + & 2 & + & 1 \\
\downarrow & & \downarrow & & \downarrow & & \downarrow \\
5 & + & 5 & + & 5 & + & 5 \\
\downarrow & & \downarrow & & \downarrow & & \downarrow \\
(4 + 1) & + & (4 + 1) & + & (4 + 1) & + & (4 + 1)
\end{array}
$$

Gauss noticed that if you line them up and then add down vertically, you have exactly $$n$$ copies of the quantity $$n+1$$; in this case, 4 copies of 4+1. If you then take this sum, it is equal to the desired sum, twice (one for the top row, one for the bottom).

This gives us the formula for the sum of consecutive integers:

$$
\sum_{i=1}^{n} i = \frac{n(n+1)}{2}.
$$

We can prove that this works for all $$n$$ by using [induction](https://en.wikipedia.org/wiki/Mathematical_induction).

First, we must prove the base case, $$n=1$$. This is trivial:

$$
\sum_{i=1}^{1} i = \frac{1(1+1)}{2} = \frac{2}{2} = 1.
$$

Next, assume the property holds for $$n$$. Then we must prove it for $$n+1$$:

$$
\sum_{i=1}^{n+1}i = \left( \sum_{i=1}^n i \right) + (n + 1) = \frac{n(n+1)}{2} + (n+1) = \frac{n^2 + 3n + 2}{2} = \frac{(n+1)(n+2)}{2}.
$$

Great! So we know it works for all $$n$$. But there is one more complication. The sequence of all powers of 3 looks like `3, 6, 9, 12, 15, ...` and the sequence of all powers of 5 looks like `5, 10, 15, ...`. In other words, we have 15 being counted twice. If we think of these sequences as sets, then 15 lies in the intersection. This is an application of the [inclusion-exclusion principle](https://en.wikipedia.org/wiki/Inclusion%E2%80%93exclusion_principle). To compute the desired sum, we must add the sum as computed for powers of 3 to the sum as computed for powers of 5, then subtract the sum of powers of 15.

We'll do this by permitting ourself a few more lines of code and making use of [currying](https://en.wikipedia.org/wiki/Currying). Since we're looking for multiples of 3, 5, and 15 less than 1000, we can find their corresponding co-factor by dividing 999 by each of those numbers. In other words given $$3 + 6 + \cdots + 999 = 3 \left( 1 + 2 + \cdots + 333 \right)$$, we need to find the number 333. We'll use python's integer division operator, `//`, to make this easy. Letting `n` denote our upper limit, in this case 1000, we can write:

```python
gauss_sum = lambda n: lambda m: m * ((n - 1) // m) * ((n - 1) // m + 1) // 2
gs = gauss_sum(1000)
gs(3) + gs(5) - gs(15)
```

You can check to see that this is the same as our other code. But profiling it shows it is about 10x faster. This is because we are doing only 23 arithmetic operations in total irrespective of $$n$$, vs $$\mathcal{O}(n)$$ for the naive approach.

So a little bit of theoretical maths goes a long way in improving performance. Who knew you could get such significant performance benefits out of such a simple problem!

Anyhow, go ahead and give Project Euler a shot. See if you find any interesting problems!