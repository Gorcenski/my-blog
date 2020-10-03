---
title: "Software Engineering Planning via Risk Qualification and Management"
date: 2020-09-13T13:49:54+0200
draft: false
tags: ["data science", "data engineering", "machine learning"]
categories: ["math-code-tech"]
displayMath: [['$$','$$'], ['\\[','\\]']]
markup: "goldmark"
---

Risk qualification is a useful but under-utilized technique in software engineering. Used mostly in high-criticality domains, qualifying risk can be a useful tool for managing engineering work and building better software systems.

<!--more-->

_Skip to [TL;DR summary]({{< relref "#tldr-wrap-up" >}})_

The ecology of software development is always changing. Practices evolve in the face of new technologies, new trends, and new capabilities. What may have been a "best practice" five or ten years ago is something that is being refactored out today. In most projects, including almost every project I've ever been part of, there is no clear "right" answer for an engineering solution. Rather, engineering solutions are done with respect to product requirements, and those requirements are expected to evolve as our understanding of our users and their needs change over time.

The reality of software development means that software projects can be incredibly difficult to prioritize and plan. In particular, there are two aspects of engineering planning that I have often seen teams struggle with: the prioritization of technical debt paydown and release planning. These are related. Technical debt, in my experience, is usually the product of one of two phenomena. The first debt-generating pattern is the change in user needs over time, which results in transitory business logic required to maintain compatibility with prior decisions. The second phenomenon is the sudden truncation in scope, often done in order to meet a deadline.

It's not uncommon to need to pare down the scope of a software deliverable ahead of a release. While practices like Continuous Delivery[^1] are designed to minimize this by making the development process and the release process the same thing, there is still development overhead necessary before one can launch a product that delivers user value. And even teams that have achieved a Continuous Delivery state can still have trouble prioritizing work tasks. A systematic approach for unblocking this process can be useful.

One such approach is _risk qualification_. Risk qualification is the process of estimating and ranking risk with the goal of creating a priority measure for work to be done. But in order to qualify risk we have to understand what risk is. Some people think of risk in terms of probabilities: "what's the risk of getting caught speeding? What's my risk of developing cancer?" Others think in terms of worst-case scenarios: "what's the risk of making a mistake on my taxes?" However, both of these framings are incomplete. [Risk should be thought of in terms of _harm_](https://en.wikipedia.org/wiki/Risk#Quantitative_analysis), or adverse outcomes, that can occur in relation to causal events. In analyzing risk, we want to factor in at least two quantities: the chances that the harm can occur, and how bad the harm is if it occurs. Using this, we can develop formal methods to assess and qualify risk.

## Risk qualification with FMEA

One method to qualify risk is the Failure Mode(s) and Effects Analysis,[^2] or FMEA, framework. This framework is commonly used in safety-critical applications, like medical device development, power systems, aircraft, and so forth. In engineered systems that involve serious risk of death if failures occur, FMEA processes can get quite heavy and formal. But at its core, FMEA is actually quite lightweight and easy to run. To do so, you first brainstorm possible failures and the harms that could occur if those failures occur. Next, you subjectively assess these harms on three dimensions: probability, detectability, and severity. This assessment can be straightforward; for example, ranked from 1-5, where 5 is the "worst". In a real FMEA, these values are well-defined in an engineering context.[^3] In the "lightweight FMEA" I present here, a scale of 1-5 makes things a bit simpler. During this process, all team members are asked to brainstorm around potential failure modes and their effects, ranking each risk along three axes:

- the **failure** that can occur;
- the **harm** that results _given that the failure occurs_;
- the **probability** (P) that the harm occurs, _given that the failure occurs_;
- the **detectability** (D) of the failure, _given that the failure occurs_;
- the **severity** (S) of the _harm_, _given that the harm occurs_.

This conditional language is stressed precisely because we want to acknowledge that failures are naturally low-probability events. It's possible to use objective measures in some cases, and we should endeavor to do so when possible. However, precision is not the point here. Rather, we want to use expert knowledge to assess harms in order to help prioritize work. Subjective rankings are enough. These rankings are used to compute a _Risk Priority Number (RPN)_, defined as

$$RPN = P \times D \times S.$$

Higher risk scores are worse. One note: when assessing detectability, the lowest ranking (1) means "highly detectable", and the highest ranking (5) means "practically indetectable". In some FMEA frameworks, alternative risk score models are used, such as

$$RPN = P\times S + D.$$

This also has an intuitive quality, where risk is measured similarly to [expectation](https://en.wikipedia.org/wiki/Expected_value) and then regularized by detectability. Your choice of risk function is up to you, but I prefer the product method described above because I find detectability of failures to be a critically important part of any reliability engineering practice.

Let's look at a working example. Consider a pulse oximeter used in a hospital to monitor a patient's vital signs.

- Failure: The monitor loses power, and therefore the monitor fails to send an alert when a patient's Sp02 levels drop.
- Harm: The patient suffers brain damage from the lack of oxygen.
- Probability: 2
- Detectability: 4
- Severity: 4

Once we have these measures, we multiply to find the RPN of this harm: 2 ⨉ 4 ⨉ 4 = 32.

There are a couple things to note here. First, these assessments have to come in the context of the environment in which the system is used. In some cases, maybe the detectability score is lower, because the device is used in the ICU where there is constant monitoring. Second, these scores shouldn't be taken as gospel. They're estimates, and nitpicking for too long over the meaning of a 3 vs a 4 is usually not a value-generating proposition.

Once you have enough of these failures, you can start to order them from worst to least (i.e. highest RPN to lowest). The failures with the highest RPN are the ones you should intervene with first. However, you can get more nuanced than this. One approach is to assign failures to a particular component, subsystem or domain. For instance, you could separate your failures by "frontend," "backend," and "database." Another strategy is to cluster failures that are similar. Using the example above, you might cluster all failures related to "loss of power" together. The RPN of a cluster, then, is the sum of the RPNs of its elements. You could even assign a failure to more than one cluster.

In order to make this exercise worthwhile, it has to be used to plan and prioritize actual work. The work that gets planned shouldn't focus on eliminating the risk, but rather on reducing the negative effects of it. In the example above, we cannot possibly eliminate all instances of someone, say, tripping over a power cable and unplugging the machine. But we can design the machine in such a way that the negative effect of that failure is dampened, for instance by engineering in a battery standby and a loud alert tone, by using a bright yellow power cable that is easier to see, by creating labeling that instructs the user to ensure that the power cable is not left in a precarious position, or any other number of conceivable options. In each of these cases, there is a clear set of work that can be done, and that work is clearly linked to reducing the overall risk of the product. To explore this in more depth, let's talk about risk management strategies.

## Risk Management

Let's say we ran a lightweight FMEA to identify risks and we now have a prioritized list of what to fix first. The question is how do we direct our finite time and resources to achieve the best possible risk reduction? In _The Owner's Role in Project Risk Management_[^4], the authors state, "Risk management planning needs to be an ongoing effort that cannot stop after a qualitative risk assessment, or a Monte Carlo simulation, or the setting of contingency levels." Much like qualifying risk is a systematic effort, so too is managing risk. Whereas risk qualification is done along three axes: Probability, Detectability, and Severity, we can also think of risk management along a set of three similar axes: Prevention, Mitigation, and Remediation. We should think of this as a layered strategy; in security engineering, this concept maps loosely to the notion of _defense in depth_.[^5] It's important to not overcompensate in any one area, because risk is impossible to eliminate. Instead, we want to invest resources in all three risk management strategies.

**Prevention**, sometimes referred to as "Avoidance," is self-explanatory. Although we cannot eliminate failures (and therefore harms), we can work hard to prevent them. Risk prevention means making the effort to make failure less probable. This maps cleanly to reducing the Probability score in the failure analysis. In the example I gave in the previous section, things like "install a backup battery" and "use a yellow power cord" are examples of preventative interventions. But as the old adage says, "make something foolproof, and all you've made is a better fool" holds true in risk analysis, too. A backup battery can run out; a careless person might still trip over a brightly-colored power cable. So while we can and should spend energy in risk prevention, it is not enough to stop here.

**Mitigation** is all about reducing the impact of harm. Mitigation efforts are worthwhile because risk mitigation can reduce both the Probability and Detectability scores. At the core, mitigation is about reducing the damage done when a harm occurs. At first glance this may seem to directly affect the severity score, but this is not necessarily the case. Revisiting the earlier example, suppose we already spend energy in the preventative efforts described above. A mitigation strategy might look something like, "install an audible alarm that goes off when the monitor loses power." This does not affect the severity of the harm, which is "the patient suffers brain damage due to lack of oxygen." An audible alert doesn't make brain damage less severe. Another example could be a hacker entering your database. Hashing your users' passwords is a mitigation strategy: it reduces the likelihood that a hacker can access a user's account, but it does not reduce the severity of the harm should the hacker succeed in doing so. So mitigation efforts, even when done in conjunction with prevention efforts, are not enough. We also need to consider remediation.

**Remediation** comes from "remedy," which contains the Latin root _mederi_, or "to heal." In order to manage risk, we need to implement strategies to remedy failures. Remediation usually requires detectability: we cannot begin to fix a problem we cannot detect. Moreover, my view is that remediation also does not affect severity in a properly-done risk qualification exercise. Using the example above, a vitals monitor can't undo brain damage, and we can't un-hack of a user's account. The magnitude of the remedy is proportional to the severity of the harm. Remediation is largely an organizational initiative: how do we compensate our users when they have been harmed by our failures, and how do we react organizationally to such failures? But that is not to say we cannot create systems that implement remedies: we could automatically de-activate users' accounts once we detect a hack, we can put holds on any transactions that happened after the hack took place, we can notify users that a hack took place and encourage them to change passwords. Importantly, remediation is only possible when adequate prevention and mitigation efforts have been put in place, but that does not mean a remediation plan must wait for failure to happen. Risk remediation is a necessary part of any risk management playbook.

## Running a Risk Assessment

A risk assessment workshop is a very powerful tool in the engineering management playbook, and it should be done from time to time to assess system quality and identify blind spots. In this section, I want to provide some suggestions for how to run a basic Risk Assessment workshop.

1. Create a Spreadsheet with a few columns:
    - The Failure That Can Occur
    - The Harm (given that the failure occurs)
    - Component or Subsystem (in which the failure can occur)
    - Probability (of the harm occurring, given that the failure occurs)
    - Detectability (of the failure, given that it occurs)
    - Severity (of the harm, given that it occurs)
    - Risk Priority Number = Probability ⨉ Detectability ⨉ Severity 
    - Preventative Actions
    - Mitigation Actions
    - Remedial Actions
2. Ask your team to take some time to fill out potential failures, harms, and the associated estimated scores. Do _not_ fill out columns for actions to take.
    - Inform team members of how the subjective scaling works, and instruct them to use their best judgment and not to stress over the score.
3. Sort the rows by Risk Priority Number descending.
4. Starting at the top, ask the author of that row to briefly describe it, and then ask the team if they agree with the assessment of the Probability, Detectability, and Severity scores.
5. Once consensus is reached, discuss actions that can be taken to prevent, mitigate, and remedy the harm.
6. Turn those actions into work items on your planning board.
    - One option to distribute responsibility and ownership of risk management is to make the person who raised the potential failure as the owner or driver of the work items done to prevent, mitigate, or remedy risks associated with that failure.

As mentioned before, we can add intermediate steps. For instance, we could cluster by component, or _ad hoc_, and then focus energies on the highest risk area first.

## Example Risk Assessment

Let's consider an incomplete risk assessment for my blog. This is designed to be illustrative, and should not be interpreted to reflect reality. At first, I'll omit potential actions.

Failure | Harm | Component | Probability | Detectability | Severity | RPN | Prevention | Mitigation | Remediation
--------|------|-----------|-------------|---------------|----------|-----|------------|------------|------------
My local development folder is deleted or corrupted | I cannot build my blog locally | Development Environment | 1 | 1 | 2 | 2 | | |
I fail to renew my domain | Someone steals the domain and impersonates me | Hosting | 2 | 1 | 4 | 8 | | |
I write a post that defames someone | A person's reputation is hurt and I am financially liable | Content | 2 | 2 | 5 | 20 | | |
LaTeX formatting doesn't work on some mobile devices | Some of my content is unreadable and I lose readers | View Layer | 2 | 4 | 1 | 8 | | |
Updating my static site generator version breaks some custom views | My site breaks and I lose readers | Development Environment | 3 | 3 | 1 | 9 | | |

Doing this risk analysis, I see that my greatest risk is a 20, which is still fairly small, despite having the highest severity. This is because of low probability and easy detectability of the potential failure—I don't often write about people who have reputations that can be harmed by my writing, but I do write about politics. My second highest failure has to do with my development environment: I've already been bitten by non-backwards compatible upgrades a few times, so I know it is likely to happen again.

Let's rank these by RPN, and explore some potential actions to take.

Failure | Harm | Component | Probability | Detectability | Severity | RPN | Prevention | Mitigation | Remediation
--------|------|-----------|-------------|---------------|----------|-----|------------|------------|------------
I write a post that defames someone | A person's reputation is hurt and I am financially liable | Content | 2 | 2 | 5 | 20 | Ask a friend to review draft posts that refer to other people, Add references to posts to defend factual claims | Write an apology post | Buy legal insurance
Updating my static site generator version breaks some custom views | My site breaks and I lose readers | Development Environment | 3 | 3 | 1 | 9 | Add automated tests | Use maintained third-party plugins when possible | Implement version management strategies for my toolchain
I fail to renew my domain | Someone steals the domain and impersonates me | Hosting | 2 | 1 | 4 | 8 | Purchase a multi-year domain registration, add email filters to passlist my domain registrar | Buy similar domains | Update references in other sources to point to the new domains
LaTeX formatting doesn't work on some mobile devices | Some of my content is unreadable and I lose readers | View Layer | 2 | 4 | 1 | 8 | Add testing tools | Implement alt-text | Edit posts and re-promote them on social media
My local development folder is deleted or corrupted | I cannot build my blog locally | Development Environment | 1 | 1 | 2 | 2 | Use a distributed VCS | Push commits frequently and ensure remote version management is always up-to-date | Create a script for restoring from remote VCS

With this, I have a list of concrete actions to take. In the case of the highest-level risk, there's not much I can do concretely except implement some process-level quality gates, such as asking a friend to review a post. But even from this process-oriented action I can find technical tasks: I could, for instance, implement a password-controlled `drafts` domain for my blog, with which I could more easily share posts with potential reviewers.

## TL;DR Wrap-Up

- Risk qualification can aid prioritization of engineering tasks;
- Risk is associated with harm and failures are measured conditionally and subjectively (1-5, 5 being worst) along three axes:
    - Probability of harm (given failure occurs);
    - Detectability of failure (given that failure occurs); and
    - Severity of harm (given that harm occurs);
    - The risk priority number is a product of these sub-scores
- Risk management is a layered approach built on three strategies:
    - Prevention (stopping the harm from happening);
    - Mitigation (making the harm less likely, making the causes more discoverable);
    - Remediation (righting wrongs and recovering from harm).

## Disclaimer

_The intention of this post is to provide engineering leads and project managers with tools to prioritize work by viewing it through a lens of risk. While the post draws on concepts from safety-critical systems engineering, it is not intended to be a how-to guide for engineering safety critical systems. If you are working in safety-critical systems, consult with a professional risk analyst who understands your domain._

[^1]: [Continuous Delivery](https://continuousdelivery.com/)

[^2]: [Failure mode and effects analysis](https://en.wikipedia.org/wiki/Failure_mode_and_effects_analysis)

[^3]: [Risk Management for Engineering Projects: Procedures, Methods and Tools, Nolberto Munier, 2014, Springer International Publishing 978-3-319-05251-9.](https://www.springer.com/de/book/9783319052502#otherversion=9783319379685) [https://doi.org/10.17226/11183](https://doi.org/10.17226/11183)

[^4]: [National Research Council. 2005. The Owner's Role in Project Risk Management. Washington, DC: The National Academies Press.](https://www.nap.edu/read/11183/chapter/7) [https://doi.org/10.17226/11183](https://doi.org/10.17226/11183)

[^5]: [Defense in depth](https://en.wikipedia.org/wiki/Defense_in_depth_(computing))
