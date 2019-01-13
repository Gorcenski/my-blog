---
title: "Transgender Murders: By the Numbers"
date: 2019-01-13T00:12:31+01:00
draft: false
tags: ["data science", "gender", "trans rights"]
categories: ["writing", "math"]
markup: mmark
displayMath: [['$$','$$'], ['\\[','\\]']]
---

Revisiting some old works on the alarming murder rate of transgender people, particularly Black transgender women, has caused me to want to revisit some analysis on what the murder rate would look like in proportion to the cisgender white male population in the US.

<!--more-->

This post is supposed to be a rough estimate to attempt to assign scale to an epidemic problem. I am trying to avoid reducing trans lives to mere numbers. These deaths represent real people who deserved a better world, and we must honor them. We must also work to prevent the loss of life. I hope that this can provide some contextual meaning to how severe anti-transgender and anti-Black violence is in the United States.

## Baseline Data

- Incidence Rate of Transgender People (approx.)[^1]: $$\frac{1}{250}$$
- US Population (est., 01-July-2017)[^2]: $$325.7\textrm{M}$$
- African-American Population, percent (est.)[^2]: $$13.4\%$$
- White Population, percent (est.)[^2]: $$76.6\%$$
- Male Population, percent (est.)[^2]: $$49.2\%$$
- Number of Known US Transgender Murders, 2017[^3]: 29
- Number of Known US Transgender Murders of Black Transgender People (assigned male at birth)[^3]: 19
- Total US Murder Victims, 2017[^4]: 15,129
- Total White Male US Murder Victims, 2017[^4]: 4,616

## Assumptions

For this analysis, we will make the following assumptions:

- the incidence rate of assigned male at birth transgender people is roughly the same as the incidence rate of assigned female at birth transgender people;
- the incidence rate of transgender people is independent of race;
- gender distribution is independent of race;

## Analysis

We'll look at the number of Black transgender people (assigned male at birth), since this population makes up the majority of murders of transgender people in the US.

First, we estimate the number of Black people assigned male at birth in the United States:

$$3.257 \times 10^8 \cdot 0.134 \cdot 0.492 \approx 2.147 \times 10^7.$$

We'll use this to estimate the number of Black assigned male at birth transgender people.

$$\frac{1}{250} \cdot 2.147 \times 10^7 \approx 85890.$$

You might pause a moment here. Why did we use the overall incidence rate here, if we're only applying it to assigned male at birth people? We assumed that the incidence rate is independent of race and gender. The population scaling factors are already accounted for in the previous lines.

Next, we compute the relative murder rate:

$$\frac{19}{85890} \approx 2.212 \times 10^{-4}.$$

We'll use this rate to compare to the cisgender white male population.

$$2.212 \times 10^{-4} \cdot 0.492 \cdot 0.766 \cdot 3.257 \times 10^8 \cdot \frac{249}{250} \approx 27043.$$

This means that if we scaled the murder rate of Black transgender women and nonbinary people to white cisgender men, we would see over 27,000 murders every year. By comparison, in 2017, there were 4,616 murders of white men.

That means that Black trans women and nonbinary people experience a murder rate almost six times higher than white cisgender men. Put another way, 27,000 deaths is 9 times more people than were killed in the September 11 attacks. Image if your community experienced a September 11-scale assault nearly every five-and-a-half weeks.

## Conclusions

Anti-transgender violence against Black people is at epidemic levels. It is almost certain that the numbers reported underestimate the number of victims; in many cases, trans people's deaths aren't correctly reported, or the truth of their lives is covered up after their deaths. These numbers don't count assaults, which are difficult to track. Nor do they count the loss of life due to improper medical care, suicide, or drug overdose, three horrible symptoms of society's general anti-Blackness and anti-transgender attitudes.

## The Names of the Dead

This analysis was restricted to 2017, the most recent year for which I could easily find data. The 20 people lost are more than numbers; they are real people, and they had names. These are their names.

- Mesha Caldwell, 41
- JoJo Striker, 23
- Tiara Richmond (aka Keke Collier), 24
- Chyna Gibson, 31
- Ciara McElveen, 26
- Jaquarrius Holland, 18
- Alphonza Watson, 38
- Chay Reed, 28
- Sherrell Faulkner, 46
- Kenne McFadden, 27
- Ava Le'Ray Barrin, 17
- Ebony Morgan, 28
- TeeTee Dangerfield, 32
- Jaylow McGlory, 29
- Kiwi Herring, 30
- Derricka Banner, 26
- Candace Towns, 30
- Brooklyn BreYanna Stevenson, 31
- Brandi Seals, 26


## References

[^1]: ["Transgender Population Size in the United States: a Meta-Regression of Population-Based Probability Samples," Meerwijk, E.L. and Sevelius, J.M., _Am J Public Health_, 2017 February 107(2): e1-e8](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5227946/)
[^2]: [U.S. Census Quick Facts](https://www.census.gov/quickfacts/fact/table/US/PST045217)
[^3]: ["Violence Against the Transgender Community in 2017", HRC](https://www.hrc.org/resources/violence-against-the-transgender-community-in-2017)
[^4]: [Number of murder victims in the United States in 2017, by race/ethnicity and gender](https://www.statista.com/statistics/251877/murder-victims-in-the-us-by-race-ethnicity-and-gender/)