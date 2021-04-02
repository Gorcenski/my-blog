---
title: "Jesse Singal Got More Wrong Than He Thinks"
date: 2021-04-02T09:59:53+02:00
draft: false
tags: ["data science", "gender", "trans rights"]
categories: ["writing", "math-code-tech"]
markup: mmark
displayMath: [['$$','$$'], ['\\[','\\]']]
---

Jesse Singal has long been on a crusade against appropriate trans healthcare for children and adolescents. He's gotten key details wrong, but just how wrong he is he doesn't even know.

<!--more-->

Jesse Singal for the past several years has taken up a crusade of asking "difficult" questions about healthcare for transgender children. His magnum opus in this domain was a cover story in _The Atlantic_ a few years back. Ordinarily, a journalist writing about important public health matters is something we should otherwise celebrate. But Singal's ideological biases have colored both his analysis and his reporting in troublesome ways. In this post, I will break down how his conclusions on a key article he relies on to craft his narrative are not only faulty, but reflect the extent to which Singal is out of his element when reporting on health science.

I'll address faults in Singal's statistical reasoning, inferential skills, and journalistic practices. I'll begin by setting some context on his conclusions, and I'll keep the scope narrow to avoid corrupting my argument with value judgments of Singal's other behaviors. The point I will try to make is how Singal's powerful conclusions have foundations on very shaky scientific grounds. I'll focus on the statistics and Singal's rhetoric. In short, while I will make no effort to mask my personal disdain for how Singal carries and allies himself, I will attempt to keep the focus entirely on the _quality_ of Singal's work product.

In this piece, for the sake of clarity I will use "natal males" and "natal females" to refer to sexual assignments at birth when exploring the literature. I choose this scientific wording to minimize the cognitive distance between my piece and the scientific literature, while acknowledging that this choice of wording is not ideal in social settings. This choice is necessitated by the way in which data are presented in the studies I will explore, which appear, for instance, to label transgender girls as "boys."

### Background

Jesse Singal has been writing about trans issues for many years. In his writing, he attempts a balance between a position of "just asking questions" while also trying to maintain a facade of being outwardly supporting of trans rights; indeed, I will be the first to confess that his writing is full of padding that makes it less stark as many activists claim it is. Where Singal enters the realm of controversy is his narrow focus on transgender healthcare for children. In his writing, he does a poor job masking his apparent belief that transition care shouldn't be provided to children at all, particularly to transgender boys.

The science of transgender healthcare for children is far from settled. There are very reasonable questions to ask about when and how gender-affirming medical interventions should be given. There is a clear need for more research into the effectiveness of certain diagnostic measures, the efficacy and safety of certain treatments, and the prevalence of transgender people of all classications broadly. These factors are complicated by evolving standards regarding the clinical diagnosis of gender dysphoria, the ability and tendencies of practitioners to be able to confidently diagnose gender dysphoria, and rapidly changing social standards regarding transgender acceptance. I will not attempt to solve these challenges in this post, nor will I make any claims not backed by science regarding what I think the standards of care _should_ be.

Despite this, it is possible to explore the existing scientific literature and examine how Singal wields its conclusions. To do this, we go back in time to examine what Singal has written on the issue, and how. In July of 2016, Singal published a piece in _The Cut_, provocatively titled, "What's Missing From the Conversation About Transgender Kids." Singal opens the piece by framing the issue of transgender healthcare for children as one of a heated debate, omitting that the debatees are often cisgender adults. The article quickly enters the realm of "Desistence," a controversial idea that some (or in Singal's mind, the majority of) children who report having cross-gender feelings eventually "grow out" of this "phase." Desistence, and its cousin, detransition, is a real phenomenon: I know several de-transitioners myself.

Singal misses the central controversy of desistence/detransition as quickly as he introduces it: for trans people, the question is not whether desistence/detransition is real, the question is whether desisters/detransitioners, who are _cisgender_, have an undue influence on the healthcare policies that affect people who are _transgender_. Put another way, why is it seen as more of a tragedy if a cisgender person gets the wrong healthcare than if a transgender person does?

Singal makes no attempt to explore the structural dynamics of this question, a curious omission from someone who prides himself on writing about social science. Instead, he relies on a smattering of scientific literature on desistence research spanning 40 years. Singal links to a list of scientific studies aggregated by James Cantor, a sex researcher in Toronto. This list, published in early 2016, lists 11 studies (including one unpublished doctoral dissertation). The largest sample size of the published studies therein is also the most recent: [a 2013 publication](https://www.docdroid.net/hY664Sc/steensma2013-pdf#page=2) in the _Journal of the American Academy of Child & Adolescent Psychiatry_ by Steensma _et al_, titled "Factors Associated With Desistence and Persistence of Childhood Gender Dysphoria: A Quantitative Follow-Up Study."

Singal relies heavily on his analysis of the study's data in his piece for _The Cut_. He writes:

> And when you combine these two studies with the other, admittedly earlier and smaller ones Cantor lists, all of which find the same thing, the case grows even stronger. While the numbers vary from study to study, as you would expect to between research conducted at different times in different places, the basic storyline is always the same: If a kid has gender dysphoria, the most likely outcome is that he or she will grow up to be a cisgender, gay or bisexual adult.

This statement is the central thesis to his article. Immediately after, he acknowledges that people can dispute the study on its merits before spending the remaining 2500 or so words explaining why they are wrong to do so. In this tirade, he makes several critical rhetorical errors, which I will now explore. Of these errors, he has admitted only one. I will discuss this error, but rather than re-litigate a nearly three-year-old controversy, I will attempt to emphasise the others. These errors are:

1. Singal (and many others) badly misinterpreted the meaning of the data by inducing a false dichotomy;
1. The data as presented are not reproducible, and Singal, who is writing a book on the replication crisis, failed to catch this;
1. Even if we accept the data as legitimate, Singal extrapolates an unsupported conclusion;
1. Singal, in correcting the first error, introduces a conclusion unsupported by evidence to justify his interpretation.

Let's explore them in sequence.

### Error 1: Singal Introduces a False Dichotomy

The Steensma paper studied 127 people who entered the Center of Expertise on Gender Dysphoria at the Vrije Universiteit (VU) University  Medical Center in Amsterdam. This sampling represents 127 people out of 225 who were referred to the clinic between 2000 and 2008; inclusion criteria for the study included those who were at least 15 years of age at the time of follow-up, and follow-up occurred between 2008 and 2012. In Table 1 in the report, the data are broken down into two distinct groups: "Persisters" ($$n=47$$) and "Desisters" ($$n=80$$). This is the first mistake, as this dichotomy is false. The Desister category includes six responses by parents (as opposed to study subjects) and twenty-eight nonresponders. Simply put, the responses from these subgroups cannot be relied upon, and anyone with basic clinical study experience should know that [loss to Follow-up](https://en.wikipedia.org/wiki/Lost_to_follow-up) is not the same thing as a negative response.

Two years after Singal relied on this analysis to shape his narrative in _The Cut_, he was forced to accept that the reasoning was faulty. He wrote [a follow-up Medium post](https://medium.com/@jesse.singal/everyone-myself-included-has-been-misreading-the-single-biggest-study-on-childhood-gender-8b6b3d82dcf3), and his article in _The Cut_ was updated (although no time and date for the update is provided). Despite this correction, Singal's conclusions are not changed to reflect this methodological misunderstanding. Indeed, the text immediately after the correction instead attacks several transgender people by name for not debunking the literature that he himself confesses to have misread.

This correction is the only error Singal has admitted to making with respect to this publication. Although his apology is nowhere near as loud as his mistake, we can at least rest easy knowing that, with the hindsight of years, Singal is capable of acknowledging mistakes. Let us therefore proceed onto the next ones.

### Error 2: The Data are Irreproducible

Table 1 in Steensma _et al_ reports demographic data of the study participants. Within each group, the ages of the participants both during initial assessment and during follow-up are reported. Here, the authors report four significant digits for the mean and standard deviations for the age, but only two significant digits for the age range. This makes validation of the data difficult.

For example, in the natal female cohort of the "Responders" subgroup, the authors report a sample size of $$n=15$$. The ages are reported to have a mean age of $$16.03$$ years and a standard deviation of $$0.80$$ years. However, $$\frac{1}{15} \approx 0.06667$$, so a resolution of $$0.03$$ years is unattainable if years were collected as integer values.

The table also reports a cohort with sample size $$n=1$$, and here a mean age of $$16.32$$ years is reported. Therefore, it is likely that years were recorded as age to-the-day, but this does not shine through in the reporting of the age ranges in the paper. Moreover, I could not find any reporting standards for the _Journal of the American Academy of Child & Adolescent Psychiatry_, but in at least one of the papers referenced by Cantor, age ranges are reported to four significant digits, consistent with the descriptive statistics.

This is more likely to be a formatting error than it is to be indicative of faulty data handling practices or academic fraud. Nevertheless, without access to the data used to generate the publication, the conclusions cannot be replicated. Jesse, who is publishing a book on the replication crisis this year, was in every position to catch this, and did not. This is relevant for reasons that will become clear when assessing the next error.

### Error 3: Singal Draws an Unsupportable Conclusion from Irreproducible Data

One might be tempted to claim that I am nitpicking when arguing over significant digits in a table, but this is no small matter when assessing conclusions. In the quote from Singal's piece for _The Cut_ that I quoted earlier, he states (emphasis added): "[i]f a kid has gender dysphoria, the most likely outcome is that he or she will grow up to be a cisgender, gay or bisexual **adult**."

Singal's conclusion from this study and the several older and smaller studies before it is faulty. He uses the analysis to suggest that desistence/detransition in childhood is permanent, and in particular that the Steensma _et al_. study draws conclusions about _adulthood_. In fact, the study makes no claims about the prevalence of gender dysphoria in adulthood. This may be partly due to the fact that very few participants could have possibly been considered adults at the time of follow-up.

To validate this, I needed to rely on the data present in Table 1 of the Steensma _et al_ study. I attempted to reconstruct the age distributions using the fewest signficant digits reported in the paper. Discrete distributions can be reconstructed from a small handful of parameters using [Diophantine equations](https://en.wikipedia.org/wiki/Diophantine_equation). Put more simply, given a sufficiently small set of discrete data, a known sample size, a mean, a variance, and bounded ranges, it is possible to identify the raw data sets that might generate those descriptive statistics.

Using [CORVIDS](https://github.com/katherinemwood/corvids), an open-source software package that does just this, I attemped to reproduce the distribution of integer ages suggested by the reported age ranges. Unfortunately, for the reasons described above this proved impossible if representing the data with only two significant digits.

So I went ahead and assumed that fractional years were recorded during follow-up. Using half-years as a resolution, I was able to nearly represent the data in Table 1 by generating potential age distributions. For example, by looking at the natal females cohort in the "Responders" subgroup, I was able to identify that of the 15 participants, only one could be a legal adult in the Netherlands (age 18 and above). Similar conclusions can be drawn from the other cohorts. Without accurate data, it is impossible to claim definitively how many participants were legal adults in this study. However, from the data reported, we can estimate that a maximum of around ten adults could have possibly been part of the group labeled "Desisters."

The experience of a maximum of ten adults, none of whom who had reached twenty years of age, is far from sufficient evidence to reflect the strength of the conclusion that Singal publishes: that the **most likely outcome** is that the child would desist from transitioning and would remain free of gender dysphoria as an adult.

Even if we admit Singal's framing that the Steensma _et al_ study and the prior studies collected by Cantor are correct, then Singal bases his sweeping conclusion on **around 100 individuals studied over a period of 40 years**, a period which has also seen dramatic social changes in the mainstream acceptance of LGBTQ+ people generally.

### Error 4: Singal's Corrections Introduce an Unsupported Hypothesis

Singal was able to admit one of his mistaken interpretations of the Steensma _et al_ data (though he has missed the other two presented here). Despite this admission, he fails to retract the conclusions he drew from his faulty analysis. Instead, he doubles down on his conclusions and instead commits a common sense fallacy:

> It makes perfect sense that the more gender dysphoric a kid is, the more likely they are to maintain regular contact with a gender identity clinic and to seek out its services. The kids who are there because Dad freaked out and overreacted when little — [does a Google search for the most common Dutch boys’ names] — Daan put on Mom’s dress once, but is a happy and healthy and non-dysphoric kid, aren’t going to keep coming.

Here, Singal invents a scenario from whole cloth. There is nothing in the Steensma publication that suggests that any of the study participants were referred to the Amsterdam clinic because they put on Mom's dress once; in fact Singal presents no evidence of the prevalence of this type of intervention for this type of behavior whatsoever. This is instead an appeal to popular misconceptions of transgender lives.

Moreover, neither Singal nor Steensma _et al_ provide any conclusive evidence that gender dysphoria has any such severity scale. Certainly, the DSM-5 includes no severity or degree scale with its diagnostic criteria of Gender Dysphoria; neither ICD-10 nor ICD-11 include a severity scale in their coding. While it might make intuitive sense that some gender dysphoria is "worse" than others, there is no commonly acceptable method for assessing this, and the attempts made in the literature so far have not conclusively determined a means by which gender dysphoria can be so ordered.

In fact, while reducing his _mea culpa_ to this argument, Singal misses a critical factor: of those classified as "Desisters", natal males reported a remarkably high incidence of having no transition in their social lives: $$96.4\%$$ of natal males vs $$54.2\%$$ of natal females. Of those whose parents responded, $$100\%$$ of natal males' parents reported no social transition. This could be easily be explained by misogynistic social pressures or family situations, whereby the children are _pressured_ into not returning to the clinic, or _denied_ access to social transition support, thereby suppressing the reports about their dysphoria. Much as with Singal's conclusion, there is no evidence of this, either, because this study does not longitudinally track these participants into adulthood. Moreover, transition in adulthood is open-ended: people may transition at 22 or 92.

Simply put, Singal chooses the hypothetical scenario that suits his narrative, and ignores an equally-plausible hypothetical scenario which challenges his narrative. Importantly, he chooses the hypothetical scenario that sounds farthest from the lived experiences of some of the trans people who have criticized his work.

### Conclusions

Jesse Singal has relied on a small subset of scientific research to draw broad conclusions about transgender children. Singal has no apparent background in psychiatry or clinical research statistics and he is not to my knowledge transgender. This lack of relevant subject-matter expertise has evidently allowed him to miss critically important details in the thin body of knowledge regarding transgender children. When confronted with his mistakes, Singal instead resorts to appeals to common sense to backfill the missing science to justify his conclusions, instead of retracting his articles and apologizing for antagonizing his critics.

Singal is not universally wrong. He attempts to walk a middle road, and there are even times when, from a scientific standpoint, I have a hard time disagreeing with some of his points. But Singal's flaw is that his use of the knowledge gap of trans healthcare is completely one-sided. When he wrote on concerns over the safety of puberty blockers in a recent Substack post, he did not report on studies that show that they are safely and effectively used for treating Central Precocious Puberty, such as [this study](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6486823/#bib2). Instead, he wrote about expert but qualitative concerns over long-term safety of these drugs, without providing scientific reference for such concerns or even acknowledging that a gap in the science exists.

Singal has neither the experience nor the range to critically assess the research on its own merits. This is fine for someone who is a science reporter and not a scientist. But the ethics of journalism demand that he treat all perspectives with equal scrutiny, and on this measure Singal fails.

_This post has been updated to correct small typos and grammatical errors._