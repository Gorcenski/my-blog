---
title: A Remarkable Tiny Proof
date: 2016-02-29 21:30:00
tags: ["analysis"]
categories: ["math"]
markup: mmark
displayMath: [['$$','$$'], ['\\[','\\]']]
---

There is a proof that I love, one that is very succinct and easy to understand to someone with only middle-school knowledge of mathematics. But it's remarkable in that inside of it lies a deep-seated idea, one that I find very difficult to wrap my head around sometimes. Let's have some fun and walk through it. I'm going to write this post in a mathematical language, but I want it to be accessible to a general audience, so I'm going to explain some terms as I go. (I generally won't do this).

<!--more-->

Before we begin, we're going to need a small but general prior result. In mathematics, we call this a *lemma*, even though some things called lemmas turn out to be quite important indeed.

---
> #### Lemma
> $$\sqrt{2}$$ is irrational.

> #### Proof
> A rational number takes the form $$\frac{p}{q}$$, where $$p$$ and $$q$$ are integers (e.g. whole numbers such as $$-2,-1,0,1,2...$$) which have no common factors. In other words, there is no other number that can be divided into both $$p$$ and $$q$$ and have integers come out both times. Any number that is not rational is called irrational. Now, suppose for a minute that $$\sqrt{2}$$ _were_ rational. Then, there are some integers $$p$$ and $$q$$ such that $$\sqrt{2} = \frac{p}{q}$$. Now, let's do some math for a bit.
>
>$$
\begin{align}
\sqrt{2} &= \frac{p}{q}, \\\\
2 &= \left(\frac{p}{q}\right)^2, \\\\
2 &= \frac{p^2}{q^2}, \\\\
2q^2 &= p^2.
\end{align}
$$
>
> Now, suppose that $$p$$ was an odd number. Then we can write $$p$$ in the following form: $$p = 2k+1$$ for some _other_ integer $$k$$. For instance, $$5 = 2\times 2 + 1$$. If $$p$$ is odd, then 
>
>$$
\begin{align}
p^2 &= (2k+1)^2 \\\\
 &= (2k+1)(2k+1) \\\\
 &= 4k^2+4k+1.
\end{align}
$$
>
> Since $$4k^2+4k$$ is divisible by 2, it must be even; therefore, $$4k^2+4k+1$$ is necessarily odd. This is a problem, because regardless of whether $q$ is odd or even, $$2q^2$$ _must_ be even. Therefore, this means that $$p$$ _must_ be even. So lets say instead that $$p=2m$$.  
> 
> Now, we have $$2q^2 = (2m)^2$$ which is equivalent to $$2q^2 = 4m^2$$, which is equivalent to $$q^2 = 2m^2$$. But now let's apply our logic again: $$2m^2$$ must be even, so by what we just did in the previous paragraph, $$q$$ must be even. Therefore, $$p$$ and $$q$$ are both even, which means they have a common factor! This goes against our earlier assertion that a rational number has the form $$\frac{p}{q}$$ where $$p$$ and $$q$$ have _no common factors_. This absurdity establishes what's known as a _proof by contrapositive_: we assert the opposite of the conclusion we want to be true, and show that it must mean that our hypothesis is nonsense. Therefore, $$\sqrt{2}$$ _must be irrational_.

---

Ok, now that we've spent some time on that proof, we can use the irrationality of $$\sqrt{2}$$ as an unquestionable argument from here on out. So let's get to the meat of this remarkable little result. I will state a theorem. In mathematics, a theorem is a statement that can be proven true. Sometimes a theorem gives us important results. Other times, it establishes minor stepping stones along the way. In this case, because this is the focus of this blog post, I will call this teeny-tiny result a theorem.

---

> #### Theorem
> There exists an irrational number that when raised to an irrational power, results in a rational number.

> #### Proof
> Consider $$\sqrt{2}$$, which is irrational. Then, $$\sqrt{2}^{\sqrt{2}}$$ is either rational or irrational. If it is rational, then we are done. If it is irrational, then consider $$\left(\sqrt{2}^{\sqrt{2}}\right)^{\sqrt{2}} = \sqrt{2}^{\sqrt{2} \cdot \sqrt{2}} = \sqrt{2}^2 = 2$$.

---

That's it. Easy as can be. Theorems such as these are called _existence theorems_. They tell us facts about mathematics, but it is likely that we cannot use them to construct practical examples of what we want to see. Mathematicians deal with these all the time. In this case, this existence theorem tells us something remarkable: we can take two irrational numbers and construct a rational from them using exponentiation. This can be a surprising result, because there are _many, many_ more irrational numbers than rational ones.

But something should be really uncomfortable here: We've never established whether $$\sqrt{2}^{\sqrt{2}}$$ is rational or irrational.

We've used what logicians call the _Law of the Excluded Middle_. In this case, the number $$\sqrt{2}^{\sqrt{2}}$$ must be either irrational or not; there is no middle case. We don't immediately know what qualities $$\sqrt{2}^{\sqrt{2}}$$ has. But it turns out _we don't care._ Regardless of which case is true, the pathway leads us to our desired result!

To me, this is very deep. It means that we can use truths we don't possess to prove things that are unquestionably true. It would be like mending a fence using either a screwdriver or a hammer without your ability to know which tool you're using. In either case the fence is mended, but you have no idea what truth kept your horses in the pasture.

This is not to say that we don't understand each of the possible truths individually--we know quite well what it means if $$\sqrt{2}^{\sqrt{2}}$$ is rational or not. This knowledge allows us to see that both paths lead to the result.

To me, getting to a destination whilst having absolutely no idea which path is taken is a bit unnerving. But it is also liberating to know that such strict control is unnecessary to discover beautiful things in the world.
