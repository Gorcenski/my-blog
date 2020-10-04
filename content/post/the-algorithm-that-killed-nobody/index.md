---
title: "The Algorithm That Killed Nobody"
date: 2020-09-13T13:49:54+0200
draft: false
tags: ["control theory", "game theory", "politics"]
categories: ["math-code-tech"]
displayMath: [['$$','$$'], ['\\[','\\]']]
markup: mmark
---

When I was an undergraduate, I wrote a term paper studying control theory for a class titled _Foundations of Applied Mathematics_. Because of this, ignorant ideologues have falsely accused me of writing software for murderous drones. I have found the paper that I worked on, and am publishing it here.

<!--more-->

A few years ago, I was reflecting publicly on the ethics of algorithms. This is [something](https://www.youtube.com/watch?v=7rO5knyjDR0) that I have [spoken about](https://www.youtube.com/watch?v=xLL7Fo_em2E) a few [times](https://www.youtube.com/watch?v=TXL4SfXH5zM). Engineering ethics is not a cut and dry, black and white field. The things that we build for good can be used for evil; things that were [originally designed for the military](https://en.wikipedia.org/wiki/ARPANET) have gone on [to change the world for the better](https://en.wikipedia.org/wiki/Internet).

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">During my undergrad, I did a gov&#39;t funded research project to use differential game theory to figure out how to make a drone chase a person.</p>&mdash; trans women are women (@EmilyGorcenski) <a href="https://twitter.com/EmilyGorcenski/status/790892030746619905?ref_src=twsrc%5Etfw">October 25, 2016</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

One of the classes I took during my undergraduate studies was a course called [Foundations of Applied Mathematics](http://homepages.rpi.edu/~kramep/Public/foam03syl.htm), or FOAM. FOAM was considered one of the more difficult undergraduate mathematics courses. In it, we studied mathematical modeling techniques such as [dimensional analysis](https://en.wikipedia.org/wiki/Dimensional_analysis), [perturbation theory](https://en.wikipedia.org/wiki/Perturbation_theory), and [stochastic processes](https://en.wikipedia.org/wiki/Stochastic_process). The class was fascinating and is still one of my favorite courses that I took.

In the class, we had the option to do a term paper in lieu of homework. The homework was quite burdensome—an estimated 20 hours per week. Given that I was, at the time, still an aeronautical engineering major, I wanted to explore a cross-disciplinary study, improve my research and paper-writing skills, and crucially, not spend 20 hours a week on homework. So I asked around my department.

One of the research programs in development was the "[Flying Bagel](http://cats-fs.rpi.edu/TechnologyShowcaseApril08/Posters/Amitay%20CATS%20Poster%20Session%202008-Miki.pdf)." This was a small, less than 100g prototype drone that could not fly under its own power or control. It was intended to be a technology demonstrator for synthetic jet actuators. It was suggested that I use this research as inspiration for my term paper—what could we model, using the techniques taught in the FOAM syllabus, that could in prinicple apply to this device? I had been reading about game theory and a professor suggested I look at game theory extensions to control modeling.

So I did some research. [Control theory](https://en.wikipedia.org/wiki/Control_theory) concerns itself with the dynamical systems modeling of a controllable system. Generally, this refers to a single system, or "player", potentially with multiple subsystems or components. An extension of control theory to mutliple "players" exists, and one approach to modeling this is to use [differential game theory](https://en.wikipedia.org/wiki/Differential_game). Differential games can be cooperative or non-cooperative and can be extended to _n_ players. The history of this theory goes back to Rufus Isaacs, who developed it formally in the mid 1960s. So I did some research and decided to explore this route. I ordered the book, found some other papers, and decided to see what I could do.

![My Amazon.com order of Rufus Isaacs' book in September 2002](isaacs.png)

Throughout the semester, under the guidance of my professor, Dr. Kramer, I worked through mathematical modeling, learning about optimization, non-linear dynamical systems, and more. The resulting work culminated in a term paper, written under my deadname, which I have embedded below.

{{< pdf id="foam-dg-paper.pdf" >}}

<br>

The paper explored the idea of having a drone chase a target in a non-cooperative manner—but it is necessary to point out that non-cooperative does not mean hostile. The class of algorithm is known as a "pursuit-evader" algorithm. This could be, as I mentioned in my paper, used to understand a cheetah chasing an antelope, or it could be used to model a skier trying to go down a course as quickly as possible while a camera follows them.

Similar technology did ultimately make it to the commercial quadcopter market. Quadcopter DJI has [a Follow Me flight mode](https://www.youtube.com/watch?v=C_v3sSxnZ00), for instance. It's a feature popular among people who shoot outdoor action videos. However, there's nothing that suggests that this technology is built on something as complex as a differential game model; these algorithms would require an inordinate amount of computing power impractical for a lightweight, power-hungry platform such as a drone.

It would be laughable to claim that the work I did for this undergraduate course had any impact on this technology. Rufus Isaacs developed his formulation of the "homicidal chauffeur" problem in 1965; more advanced applications of differential game theory were published on in during the intervening decades. Moreover, it's equally nonsensical to claim that I "built algorithms to murder people with drones." Not only was this work never put into production systems, it wasn't even motivated by a system that could fly under its own power!

This is not to say that this branch of mathematics was not deeply rooted in military research. Isaacs did his work for the RAND corporation during the Cold War, and his book is subtitled, "A Mathematical Theory with Applications to Warfare and Pursuit, Control and Optimization." As I point out in my paper, among the motivating factors for his work was studying combat. In the preface to _Differential Games_, Isaacs begins,

> Although combat problems were its original motive, this book has turned out to be far from a manual of military techniques. Rather the result is a mathematical entity which fuses game theory, the calculus of variations, and control theory, and, because of its subsuming character, often transcends all three.

In his introduction to pursuit games, Isaacs points out that his technique could, in principle, be used to model combat of fighter aircraft or to model football players on a field. As it turns out, as advanced as Isaacs' mathematics was for its time, decades later the field has still not evolved sufficiently to be able to tackle large multiplayer differential games.

Differential game theory algorithms like this have been developed further and the military has been involved in that technology. The most popular application of this mathematical theory today is in the use of multi-player orbital control. Here, the technique is used to study how satellites on orbit might interact with other orbital vehicles. The applications for this vary: it could be used to build a hostile "interceptor" spacecraft designed to disrupt satellite communications. Or, the theory could be used to ensure the safety of [weather satellites which are crucial to our understanding of the changing climate](https://www.nesdis.noaa.gov/content/world-according-weather-satellites).

Technological ethics is a complex field ill-suited to the sweeping and heavy-handed brushstrokes of ideologues. There is a genuine need to discuss the role the military plays in western imperialism, and there is a genuine need to discuss how scientific research for the benefit of humankind is inextricably linked to military funding in these nations. To act ethically as a technologist requires one to continuously revisit and reevaluate the work one does and has done, to hold new positions, to interrogate old positions, and to move intentionally forward with the goal of bettering the world for everybody. Everything we build can be used for good or evil, irrespective of politics. There is no space in the discussion for the inflexible and the puritanical, who act in ways that would silence dissenting voices when _their_ contributions are used with ill intent.

The technology we build will impact the world. [Kubernetes is used by the US Air Force](https://thenewstack.io/how-the-u-s-air-force-deployed-kubernetes-and-istio-on-an-f-16-in-45-days/). [Video games have been used by the US military for recruitment](https://www.thenation.com/article/culture/military-recruitment-twitch/). No technology is pure, least of all mine. But among all the things I am uncertain about, I can say with certainty that my MATH-4200 paper was never responsible for bombing anything, save for my final grade from an A to a B.
