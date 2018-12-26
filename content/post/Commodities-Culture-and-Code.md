---
title: Commodities, Culture, and Code
date: 2016-03-15 22:00:00
tags: ["technology", "inclusion"]
categories: ["writing"]
markup: mmark
displayMath: [['$$','$$'], ['\\[','\\]']]
---

# Commodities, Culture, and Code

There is a general belief that social impact consideration, project/time management, documentation strategies, analysis of ethics, and so forth are non-technical skills. These so-called "soft" skills are not necessarily reviled, per se, but they are often viewed as second-class competencies in comparison to "hard" talents such as code production, hardware, analysis, and so forth. This dichotomy is not only false, as I will discuss, but it is also evidently harmful. Yet this attitude is so common as to be almost axiomatic.

I was recently participating in/mostly-watching a [Twitter thread](https://twitter.com/emilyagras/status/706091500191551489) musing on the false dichotomy between "technical" talks and "soft" talks at tech/tech-adjacent conferences.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Proposal: stop using the words &quot;technical talk&quot; as if social engineering is less technical and somehow easier than software engineering.</p>&mdash; Emmalein (@emilyagras) <a href="https://twitter.com/emilyagras/status/706091500191551489">March 5, 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

Within the space of tech conferences, there is a general sense that soft talks (I will cease using quotation marks) are ignored as irrelvant, dismissed as elementary, or relegated to the domain of women and/or non-CS programmers. This is a dangerous notion to hold onto.

Soft skills apply broadly in the workplace; although any given employee may not be individually responsible for managing/changing/supervising the soft aspects of the development cycle, development doesn't happen in a silo. Each employee shares responsibility in their own work environment, and good allyship requires active involvement, not simply passive support. These are not simple issues to understand: managing people is hard because it involves individuals, no two who are the same. This is not easily abstracted; we cannot use the factory pattern and program our way out of soft challenges.

But because these issues often have to deal with people, there is a tendency to assign these talents a feminine gender. Our culture still presumes that women hold greater interpersonal talent, and accordingly these people skills are seen as a woman's responsibility. In extreme cases, some even see interpersonal skills as a weakness. This is, of course, sexism manifest.

When women are seen solely for their soft skills, it dramatically undercuts their opportunities for advancement. Hard-skill acolytes may complain about lack of technical content in conferences (perhaps because their lack of soft skills makes them uncomfortable?) and seniority is too often linked to technical benchmarks, meaning that promotions and raises often skip those who dedicate their time budget to soft development.

Soft skill debt is akin to technical debt--neglect it and you will eventually regret it. Documentation matters, client education/participation matters. But because so many tech projects are time-budgeted in Narnia, there often isn't enough up-front allocation of time for soft-skill management. This embeds a sense that soft-skills are't as valuable (because if they were, obviously, they would have been budgeted for).

---

This unhealthy attitude hides a stark reality in tech culture, one that the industry doesn't much like to address: programming is a commodity skill.

Sure, there is a difference between a good programmer and a bad one. But frequently, bad code happens a user tries to program their way out of ignorance, and not because a developer lacks skill. Programmers are often evaluated based on their skills instead of their ceilings, but even good programmers lean heavily on external resources to do their work. By and large, there is almost no value to memorizing seldom-used API calls, patterns, or data structures: they can easily be recalled with a Google search, and there is little difference in the long run between an experienced programmer implementing code from memory and a novice one implementing it from a Google search result. One may argue that the latter takes more time, but if one's budgets are built around a developer knowing every possible programming technique by heart, then the issue isn't lack of quality developers, but rather a failure of an ability to accurately anticipate project needs and resource availability--a soft skill.

We don't often see programming as a commodity skill because the industry is so tied to its academic roots. Interviews too often test obscure or overly-fundamental knowledge: can you write a linked list, can you identify the syntactical bug in this code. I'm sorry, but in 13 years of R&D, and another 4 years ahead of that of consumer development, I've never once had to create a linked list by hand, from memory, to solve a problem. The real problems we face in industry almost never map to the kind of gatekeeper fundamentals that computer science programs use to weed out students.

The truth is that these types of problems are often boring to the experienced developer, and when we fetishize the myth of the 10x developer, the grass around the programming industry seems a lot greener than it is. Students work their asses off to memorize operation counts of obscure algorithms: this buys them a chair and a Macbook Pro at whatever hot tech company is out there. And when they realize that modern development involves making a header 2 pixels higher, or changing the validation logic on a signup form, it's easy for them to stop seeing the forest for the trees.

So new artificial gates are created to help blockade the view that programming jobs, ultimately, are fairly fungible. What if we write JavaScript in ELM? What if we use Clojure to generate CSS? What do you mean you don't know what a monad is?

This is not to say that I hate functional programming; I actually like it. Rather, this pattern, which repeats itself again and again in the tech industry, is unfortunate in part because it sets unnecessary artificial barriers to entry, and in part because it also continues to funnel attention and money to the same privileged programmers who don't need it in the first place. What's more frustrating, really, is that there are perfectly good open problems to solve with _existing_ paradigms, languages, and practices. What about accessibility? What about deployability? How about instead of rolling your own XML parser in JavaScript-née-Ruby, we instead help make the web usable for the elderly, who increasingly need it to access medical records?

In the end, these decisions have to be made by those with strong soft skills. It's fun to fart around with a new programming language. It's less fun to back-convert your site to Section 508 compatibility. But one of those things your users will notice, and one they will never give a damn about.

---

The emphasis on soft skills takes the joy out of a lot of programmers, partly because it does force them to recognize their skills as basically replaceable on the open market. And it's a hard thing to hear, and an easy thing to dismiss, when someone with a microphone and a speaker slot starts talking about the importance or impact of the "boring" bits of development. To some it feels like an attack. "Why are we listening to this lady prattle on about documenting API endpoints? I want to learn about the new Flux implementation so I can go back to the office and crush code!" When we talk about soft skills, it reminds many developers that the excuse of "not enough time, not enough budget" doesn't hold water when there's a Mario Kart tournament during work hours or when perfectly good work time is spent trying to get some beta version of _latest hot framework_ working in Safari.

When these talks strip away the facade of joy, they are easy to deride. And when they are so often given by women or minorities, who are already standing at the artificial gates of $$O(n\log n)$$, then it becomes even easier to deride them as irrelevant.

But remember: the lifecycle of a framework is shorter than the lifecycle of a language which is shorter than the lifecycle of a career. But budgets, documentation, ethics, inclusivity, client interactions, and co-worker support will _always_ be a factor. That soft skills talk you ignore might be the most important one at the conference.
