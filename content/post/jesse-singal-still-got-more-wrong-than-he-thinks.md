---
title: "Jesse Singal Still Got More Wrong Than He Thinks"
date: 2021-04-05T16:01:22+0200
draft: false
tags: ["data science", "gender", "trans rights"]
categories: ["writing", "math-code-tech"]
markup: mmark
displayMath: [['$$','$$'], ['\\[','\\]']]
---

Jesse Singal has responded to my writeup on how badly he butchered the conclusions of the 2013 study, and I will now rebut his positions.

<!--more-->

Singal has responded to [my article](../jesse-singal-got-more-wrong-than-he-thinks/) about his 2016 piece in _The Cut_, and he has published a rebuttal on his substack. In that rebuttal he claims that I made key errors. I did not, but the fact that Singal perceives these as errors reflects his inability to write clearly about this issue. I will now address his four points

### Point 1: Singal ridiculously claims that loss to follow-up increases a study's power

Singal writes, "**The error I acknowledged in 2018 was overestimating the number of true non-responders in the Steensma study and therefore underestimating the strength of the study.** When you account for my error, the evidence for desistance gets _stronger_."

I don't know where to begin with this, but this claim is farcical. The 2013 study lost several patients to follow-up. Singal's error was misinterpeting the authors' use of the word "desister": to summarize, the word as used by the authors only meant to imply that those participants stopped coming to the clinic. I'll write more on this later.

However, Singal's claims that loss to follow-up *increase* the power of a study are absurd. Loss to follow-up has the effect of biasing a study and leading to incomplete results. It's possible that all of those participants simply moved from the Netherlands and continued their transition elsewhere (Singal references this possibility himself in _The Cut_). It's possible none of them were trans.

Singal claims in [his rebuttal](https://jessesingal.substack.com/p/a-sorta-quick-response-to-the-errors) that his conclusions are _stronger_ in light of his error. To offer evidence of this, he links to [another post](https://jessesingal.substack.com/p/a-sorta-quick-response-to-the-errors). That post contains no quantitative reasoning for why his error makes his conclusions stronger, but it does link back to his Medium _mea culpa_.

In that Medium post, Singal fails to adequately explain his stastistical methodology, which is unsurprising since he is not a statistician. But I will try to reconstruct his reasoning.

He claims the study is even stronger because of the 52 people _not_ lost to follow-up, all were true desisters, in that none of them reported gender dysphoria. But Jesse's logic here is begging the question! It cannot make _his_ conclusions stronger, because in his original writing he already assumed those 52 participants were true desisters! From his piece:

> The Amsterdam study reported on 127 adolescents, 79 of them boys, and found that 80 of those adolescents, or about two-thirds, had desisted — that is, now identified as cisgender — at the time of followup.

In other words, Singal _already_ assumed that the 80, which includes the participants he made a mistake with, were already fully desisted and were cisgender. In Singal's correction, he apparently wants us to believe that the study is actually showing that $$0%$$ of the study's true desisters ended up transgender, and that his earlier mistaken interpretation left room for this percentage to be something higher than zero.

This is ridiculous.

No matter how you cut it, Singal's original interpretation is that $$\frac{80}{127} \approx 63\%$$ of participants were desisters. He says that explicitly in _The Cut_. The reality is that slightly less than $$50\%$$ of participant respondees actually desisted. $$50\% <63\%$$ no matter how you look at it.

Nevertheless, Singal is insistent that his error made the conclusions weaker. In his Medium post, he uses the word "stronger" twice. But he offers _no methodology_ for justifying this claim. He provides no statistical analysis. He provides no measure of study power. He doesn't even provide a quantitative measure by which we can assess the strength of his claim. He just sort of handwaves basic descriptive statistics that were never in dispute.

But Singal *could* statistically assess the study before and after his mistake. So I will. Since Steensma publishes the percentage of participants in each group that were diagnosed with DSM-IV-TR Gender Identity Disorder, we can easily compute the probability that someone persisted given they had a childhood GID diagnosis. I'll do this using two methods: first, by lumping nonresponders in with desisters, and then without.

#### By including nonresponders

| GID Diagnosis | Group     | Number |
| ------------- | --------- | ------ |
| Yes           | Persister | 44     |
|               | Desister  | 36     |
| No            | Persister | 3      |
|               | Desister  | 44     |

Here we see that the probability that someone persisted, given that they were diagnosed, is $$\frac{44}{44 + 36} = 55\%$$.

#### By excluding nonresponders

| GID Diagnosis | Group     | Number |
| ------------- | --------- | ------ |
| Yes           | Persister | 44     |
|               | Desister  | 25     |
| No            | Persister | 3      |
|               | Desister  | 21     |

Here we see that the probability that someone persisted, given that they were diagnosed, is $$\frac{44}{44 + 25} \approx 64\%$$.

In other words, by excluding the non-responders, the probability that a DSM-IV-TR gender identity diagnosis resulted in persistence was _higher_, not _lower_ as Singal seems to claim.

#### Update: Directly addressing Singal's claim that since 0% of the desisiting responders reported lower-than-threshold gender dysphoria scores, this means the study was stronger

Singal claims in his medium article that Table 4 of the Steensma _et al_ (2013) study shows that since the 46 responders who desisted showed below-threshold scores on the Utrecht Gender Dysphoria Scale, this somehow makes his original conclusions stronger. This is incorrect and fails to account for the potential effects of the lost to follow-up group. At its core, Singal's claim is that gender dysphoria goes away either on its own or with some counseling. So if that's the claim, let's work some conditional probability.

Let $$D_1$$ denote an initial DSM-IV-TR Gender Identity Disorder diagnosis, let $$D_2$$ reflect a score of over 3 on the Utrecht Gender Dysphoria Scale, and let $$F$$ denote the number of follow-ups. Using [Bayes' Theorem](https://en.wikipedia.org/wiki/Bayes%27_theorem#Conditioned_version), we can state:

$$P\left( D_2 | D_1 \cap F \right) = \frac{P\left( D_1 | D_2 \cap F\right) P\left( D_2 | F\right)}{P\left( D_1 | F\right)}.$$

From the paper we know the following:

- $$P\left( D_2 | F\right) = \frac{41}{46 + 47} = \frac{41}{93}$$
- $$P\left( D_1 | F\right) = \frac{69}{46 + 47} = \frac{69}{93}$$
- $$P\left( D_1 | D_2 \cap F\right) = \frac{n}{41}$$

where $$n$$ represents the number of patients initially clinically diagnosed with dysphoria who reported later dysphoria. Since 3 people from the persistence group initially did not have a DSM-IV-TR GID diagnosis, we can state $$38 \le n \le 41$$.

Putting this together, we have, to two significant figures:

$$0.33 \le P\left( D_2 | D_1 \cap F \right) \le 0.35.$$

If we assume that all of the non-responders were actually desisters, we'd change these numbers thusly:

- $$P\left( D_2 | F\right) = \frac{41}{127} = \frac{41}{127}$$
- $$P\left( D_1 | F\right) = \frac{69}{127} = \frac{69}{127}$$
- $$P\left( D_1 | D_2 \cap F\right) = \frac{n}{41}$$

This gives us:

$$0.18 \le P\left( D_2 | D_1 \cap F \right) \le 0.19.$$

If we carry our math through, what this implies is that of the 34 participants who _did not respond themselves_, up to 28 of them could also still have gender dysphoria.

In fact, if we consider Singal's position that gender dysphoria goes away, then failing to control for those lost to follow-up actually _weakens_ his claim, as one would expect (because loss to follow-up almost never _strengthens_ a statistical result).

Jesse's assumptions are simply not rooted in mathematics.

**In short, Singal asserts that the study is _stronger_ than he thought, but he provides no formal method by which to assess this claim, and in the context of his original writing this conclusion cannot be supported.**

### Point 2: Singal claims he changed his conclusions, but he did not.

The original piece in _The Cut_ includes and undated update. This update reflects his error, but in it he repeats his statistically-unsupported claim that his error makes his conclusions stronger. This update is inline: it appears after one particular paragraph. However, the following incorrect statements are still present in the text.

> Again: Every study that has been conducted on this has found the same thing. At the moment there is strong evidence that even many children with rather severe gender dysphoria will, in the long run, shed it and come to feel comfortable with the bodies they were born with.

This is false. The Steensma study in question shows that 47 participants persisted, 46 affirmatively desisted, and 28 did not respond themselves (6 others responded via a parent). The Steensma study doesn't even say the same thing as what Singal claims it does.

I have no dispute with the idea that many children with gender dysphoria will feel comfortable in the bodies they were born with. Unfortunately, "many" is a weasel word that could mean 5, 5%, or 95%. Singal hides behind this because he cannot address the statistics.

Singal has also left the following text in his article:

> The Amsterdam study reported on 127 adolescents, 79 of them boys, and found that 80 of those adolescents, or about two-thirds, had desisted — that is, now identified as cisgender — at the time of followup. Singh, meanwhile, found that of the 139 former GIC patients she got in touch with, all of them natal males (that is, born with a penis), 122, or 88 percent, had desisted.
> 
> And when you combine these two studies with the other, admittedly earlier and smaller ones Cantor lists, all of which find the same thing, the case grows even stronger. While the numbers vary from study to study, as you would expect to between research conducted at different times in different places, the basic storyline is always the same: If a kid has gender dysphoria, the most likely outcome is that he or she will grow up to be a cisgender, gay or bisexual adult.

This text remains unchanged in Singal's article, even though it is strictly incorrect. This text appears several paragraphs before the parenthetical update and is not supported by the science. In fact, Thomas Steensma, the lead author of the study in question, even published [follow-up commentary in 2018](https://www.tandfonline.com/doi/full/10.1080/15532739.2018.1468292). In it he states in clear terms (emphasis mine):

> Using the term desistence in this way does not imply anything about the identity of the desisters. The children could still be hesitating, searching, fluctuating, or exploring with regard to their gender experience and expression, and trying to figure out how they wanted to live. Apparently, they no longer desired some form of gender-affirming treatment at that point in their lives. **The assumption that we considered all desisters as having a _fixed_ cisgender identity is therefore an incorrect one.**

Let's put these statements side by side, first, fron Singal, uncorrected. Then, from Steensma:

> Singal: And when you combine these two studies with the other, admittedly earlier and smaller ones Cantor lists, all of which find the same thing, the case grows even stronger. While the numbers vary from study to study, as you would expect to between research conducted at different times in different places, the basic storyline is always the same: If a kid has gender dysphoria, the most likely outcome is that he or she will grow up to be a cisgender, gay or bisexual adult.

> Steensma: The assumption that we considered all desisters as having a _fixed_ cisgender identity is therefore an incorrect one.

In short, Singal emphatically has **not** correctly updated or contextualized his 2016 article in _The Cut_.

### Point 3: Singal selectively misunderstands context and logical fallacies

Singal takes issue with how I interpret his paragraph:

> Now, it’s important to note that this group was less dysphoric at intake. Of the total 80 kids in the sample who stopped coming, 39.3% of boys and 58.3% of girls met the criteria for what used to be called Gender Identity Disorder, or GID. That’s way lower than the corresponding percentages for the kids who stayed in touch with the clinic as they grew up — 91.3% and 95.% percent, respectively. This shouldn’t surprise us! It makes perfect sense that the more gender dysphoric a kid is, the more likely they are to maintain regular contact with a gender identity clinic and to seek out its services. The kids who are there because Dad freaked out and overreacted when little — [does a Google search for the most common Dutch boys’ names] — Daan put on Mom’s dress once, but is a happy and healthy and non-dysphoric kid, aren’t going to keep coming.

Singal is a better rhetorician than this, so he should understand that the phrase "it makes perfect sense..." in the context of this paragraph can be taken to imply a _type_ of scenario that could result in the numbers he quotes. But there is not evidence that this _potential_ factor is present in the study statistics, and by presenting it along side of them he knowingly chooses to bias the reader towards this type of scenario.

Singal doesn't really dispute this point, in the end. But he chooses to present this hypothetical instead of other potential explanations supported by the authors. Again, I cite Steensma 2018:

> The children could still be hesitating, searching, fluctuating, or exploring with regard to their gender experience and expression, and trying to figure out how they wanted to live.

Singal's choice of wording here biases his reader in a direction. This is deliberate.

### Point 4: Singal misunderstands my claim about a diagnostic severity

In addressing Singal's hypothetical scenario, I claimed:

> Moreover, neither Singal nor Steensma et al provide any conclusive evidence that gender dysphoria has any such severity scale. Certainly, the DSM-5 includes no severity or degree scale with its diagnostic criteria of Gender Dysphoria; neither ICD-10 nor ICD-11 include a severity scale in their coding. While it might make intuitive sense that some gender dysphoria is "worse" than others, there is no commonly acceptable method for assessing this, and the attempts made in the literature so far have not conclusively determined a means by which gender dysphoria can be so ordered.

This was in relation to the earlier statement Singal made about a hypothetical kid putting on a hypothetical dress, a scenario not present in the Steensma _et al_ paper. My statement is correct. Steensma _et al_ use the Utrecht Gender Dysphoria Scale (UGDS) in their research. This is clear and I do not dispute this.

I should have been more clear with this paragraph. When I say there is no commonly acceptable method for assessing this, this is true: the UGDS is not validated in all languages and is not the only such scale in use. Other scales exist in more modern contexts, for example the Transgender Congruence Scale (TCS). The UGDS is explicitly binary and is unable to capture, e.g., the more gender fluid models referenced by Steensma in his 2018 commentary.

I admit to Singal's criticism regarding my lack of clear explanation here. I am not as good a writer as he is. So I will rebut his piece by simply clarifying my own stance.

At the core of my issue with Singal's commentary is his clear and unwaivering conclusion that the majority of children who present gender issues end up as "cisgender adults." The UGDS is not a scale capable of assessing the many ways in which someone can be something other than a cisgender adult. The UGDS is not a commonly acceptable method of assessing nonbinary identities or other transgender identities. UGDS provides _a_ way of doing this for some identities but there are _others_, and the way the evidence is presented in Steensma _et al_ does not address the myriad possibilities for a participant to stop interacting with a clinic.

Moreover, the scenario that Singal presents **is not captured in the UGDS**. There is no entry in the UGDS for "I have put on a dress once." The behavior that Singal presents is simply not relevant to the clinical instruments used in this study, but he presents it side-by-side with the study data as if it were. This is misleading at best.

### Conclusions

Jesse Singal once again flaunts his lack of scientific knowledge with handwaving arguments that are disconnected from the research, and fails to reference more recent literature _by the same authors_ that refute his claims. Singal's 2016 piece is dishonest and mendacious. He provides no evidence for his claims in his follow-up that survive even basic scrutiny.

Fundamentally, Singal has failed to provide a single clear statistical measure to support his claim. He makes a claim about _adults_ when in fact the study's lead author has clearly and explicitly rejected that conclusion. Singal has yet to adequately address these two fatal flaws in his piece.

**Update: I corrected $$80%% to $$63\%$$ and added a paragraph in the conclusion shortly after upload. A second update included a section on Bayes' Theorem that directly addresses Singal's bizarre assumptions.**