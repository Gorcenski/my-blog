---
title: "Book Report: The Tyranny of Metrics"
date: 2021-04-19T04:22:41+0200
draft: false
tags: ["book-report", "data science", "politics"]
categories: ["writing"]
markup: mmark
image: post/book-report-the-tyranny-of-metrics/dashboard.jpg
---

In our data-driven universe, it's good to question how we use data. This is my review of _The Tyranny of Metrics_, by Jerry Z. Muller.

<!--more-->

As a data scientist and an agile consultant, the notion of building metrics forms the core part of my job. In the world of agile software engineering, we have a handful of terms that, in essence, simply mean a numerical measurement of quantifiable information that is, at least in theory, supposed to link to a notion of value. Whether we refer to them as _objectives and key results (OKRs)_, _key performance indicators (KPIs), or _service level indicators (SLIs)_, they all effectively map to the same concept: by measuring something that relates to product or performance, we can explain and diagnose past behaviors and predict and direct future ones.

This is a dramatic over-simplification. The art of crafting a good set of metrics is, in my experience, done poorly with remarkably higher frequency than it is done well. Good metrics should be validated; they should be uniquely connected to a set of outcomes or behaviors that are desired. To wield metrics effectively means to know their limits. Most importantly, they should reflect accountability for those who define them moreso than for those who are covered by them.

Herein lies the primary challenge: when metrics are synthesized, they can be done so to drive any agenda one so pleases. Metrics have an audience, and when one aims to please an audience one will often appeal to their biases more than to their critique. This has led to the misuse and abuse of metrics in many contexts, even when the logic behind them is sound. Take, for example, the idea of an Objective and Key Result. When Google reinvigorated the concept of OKRs, they became a common tool in the business transformation toolkit, particularly in knowledge-work industries where concrete productivity measures, e.g. the number of widgets built per day, are nearly impossible to measure. There is no shortage of writing on the potential benefits of OKRs, perhaps because consultants can get easy visible wins by applying the concept to a business, but the art of designing _effective_ OKRs is often missing from the discussion.

I have seen OKRs badly applied: data science teams with complete arbitrary measurements like "derive five insights per quarter" or software teams with goals like "increase lines of code written." This is, as Muller indirectly describes, the long-lasting influence of _Taylorism_. Indeed, Muller, a historian of Capitalism, credits 19th and 20th Century thinkers with the formation of metrics-driven management culture. Taylorism, so named for engineer Frederick Winslow Taylor, was an attempt to add mathematical rigor to management theory. This stems from an earlier popular notion of accountability in governance, manifest at least as early as the 1860s in Great Britain, where Robert Lowe introduced the concept to measure the British education system, and has carried through aspects of our culture, from government to public health to education to business. Even Lowe had his opponents; systems thinkers like Matthew Arnold argued that simple metrics cannot possibly capture the richness of complex human-centric ecosystems like public policy.

Muller approaches this work not from a data practitioner's lens, but as an academic being pressed under the thumb of quantitative reasoning in higher education. His book explores the concept of _accountability_ through _quantifiability_ in a variety of contexts: he reminds us of the inhumanity of Robert McNamara's industrial approach to measuring body counts in the Vietnam War; he explores the success and failures of metrics on healthcare policy; and he touches briefly on how metrics are used in public policy and philanthropy.

In his work, Muller gets many things right. He leans heavily on [Campbell's Law](https://en.wikipedia.org/wiki/Campbell%27s_law), "the more any quantitative social indicator is used for social decision-making, the more subject it will be to corruption pressures and the more apt it will be to distort and corrupt the social processes it is intended to monitor," and describes in clear terms what he calls _creaming_, or the tendency to cherry pick outcomes that lead to better metrics.

Muller's tyranny sprouts from the corruptibility of badly-derived metrics. He describes how metric-driven executive compensation drove the pharmaceutical company Mylan to price-gouge Epipens which led to short-term gains (for the executives) but long-term harm (to the executives but mostly the customers). He explores how Wells Fargo employees, pressured by a punitive use of metrics, led to wide-scale fraud perpetrated by low-level employees of the bank. He describes how in the healtcare space, transparency and metrics culture has given rise to counter-productive practices, such as admitting patients on an outpatient basis for "observation" to prevent re-admittence numbers from climbing, or surgeons deferring more complex surgeries to ensure their success rates don't go down.

Where Muller falls short is in interrogating _why_ these metrics don't work and what could be done to bulwark them. While all metrics can be gamed, this often stems from metrics being disconnected from their context or being used to describe a phenomenon that they simply cannot.

Muller has other shortcomings: he accepts without scrutiny the idea that standardized testing is a good proxy for college readiness, even as he criticizes the push towards inflating test participation as a proxy measure for success. He identifies that public education policies like No Child Left Behind largely failed their mission, but gives too much credit for that failure to the metric culture contained therein and not to other socioeconomic barriers not addressed by the metrics. When he touches on policing, he does so only through a lens of crime prevention and not police accountability. And he deadnames Chelsea Manning, a needlessly cruel act for a book published in 2018.

While the book is correct in pointing out the failures of bad metrics, it misses opportunities to explore in more detail how metrics could be done right, by localizing them and connecting them to outcomes. The most interesting parts of the book came when describing how the price of non-local produce served as a good proxy measure for regional stability during the war in Afghanistan. He describes why this was the case, namely that the risks of travel were reflected in the price of the goods, without diving into more detail about how these indirect measures can be crafted through local context.

Muller also identifies a flaw in the logic that more transparency equals more accountability and better outcomes. There is a good rationale behind this: when transparency erodes psychological safety, this impedes the ability to try ideas on for size in a private setting, a necessary element of experimentation and growth. In Charlottesville, we saw this happen when a dysfunctional City Council attempted a "bonding" retreat which was by law held publicly. The result was a public excoriation and rampant mockery on Twitter, largely by my good friend, Molly Conger. It's unlikely a closed-door session would have brought the Council closer to being effective, but it does raise a good question whether the public nature of the meeting could have even had any effect beyond public schadenfreude for a failing government. With ample opportunity for nuance, Muller's only argument for reducing transparency is a debatable claim that Manning's and Edward Snowden's leaks damaged the reputation and operational ability of the United States government.

Muller does attempt to provide a playbook for how to use metrics, but he lacks the craft of a data practitioner to delineate between the ways data can be used to control outcomes. In fact, the notion of feedback cycles is completely missing from the book, even if he does correctly identify, perhaps unknowingly, that "open loop," input-only measurements are rarely meaningful. A systems analyst could apply rigor here, and had he included that perspective his thesis would have been significantly strengthened.

Muller's concept of the misuse and abuse of metrics does accurately identify many of the failures of the concept. But by failing to dive deeper into the root causes he unfortunately misses many of the points that could have added meaningful heft to his arguments. This is a pity, because bad metrics deserve pushback, particularly when they are having deleterious effects on public health, public policy, and public safety. Instead, by arguing against transparency and accountability, he is arguing instead for a more biased form of governance. From a data practitioner lens, his algorithm for assessing metrics is naive.

Proper use of metrics, whether KPIs or OKRs or whatever, involve regular review of their applicability and efficacy, through a rigorous analysis. Muller is correct to imply that bad metrics can be harmful and should be vigorously doubted. But he leans too far into a bias against measurement, and away from an expert practitioners lens of how to use metrics well. Metrics can give us sight when we are otherwise blind, but it is a more complex and nuanced task to build them than Muller gives credit for.

_The Tyranny of Metrics_<br>
Jerry Z. Muller<br>
ISBN 978-0691191911<br>