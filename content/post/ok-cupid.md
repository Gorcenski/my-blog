---
title: "When Open Science Isn't: The OkCupid Data Breach"
date: 2016-05-11T20:00:00-05:00
draft: false

tags: ["politics", "white supremacy", "tech"]
categories: ["writing", "math-code-tech"]
---

My commentary on the OkCupid data breach: a recovered post from 2017.

<!--more-->

_Content Warning: Actual Nazis. Disclosure: I have an NIH Certification in Human Subjects research, and I regularly attend non-affiliated events that the Center for Open Science graciously hosts, including the monthly Charlottesville Women in Tech meetup. Some slight edits have been made to fix typos and tie up loose threads. This post was recovered in 2021 from archive.org and not all formatting may have been preserved._

Earlier today, a pair of individuals ostensibly affiliated with Danish universities, “published” a paper performing large scale data analysis on user response data from Ok Cupid. These individuals, under the guise of open science, then pushed the full dataset to the Open Science Framework, a service hosted by the Center of Open Science, which happens to be located in my home city of Charlottesville.

The data they published happened to include complete usernames in the clear, along with responses to questions on the Ok Cupid site. The questions include responses of a highly private nature, including sexual preferences, health habits, and more.

These data were obtained by using a scraper bot that would walk OKC profiles and gather data. Presumably, this was not done with Ok Cupid’s permission.

The purpose of this research appears to be begging the question. Despite the wealth of available information in the data, the users chose to test hypotheses comparing cognitive ability to religious affiliation and to explore correlations between Zodiac signs and certain preferences. This has a dramatic stench of attempting to find a dataset to match a pre-formed conclusion; in this case, it smells a lot like the prototypical rhetoric of a specific athiest politic. One author’s comments betray any sense of independence in this regard.


The study itself is deeply flawed in multiple ways. Let’s explore them.

## The Ethics of Data Acquisition

As mentioned, the authors confess to using a bot to scrape OKC data. This is a violation of OKC’s terms of service, of course. But there is something bigger at stake here. This is a _fundamental violation_ of research ethics.

During World War II, the Nazi scientist Karl Brandt conducted human trials and unethical medical practices against prisoners of concentration camps. These trials included, among other things, forced sterilization, forced abortion, and eugenics. After the war, he was convicted of war crimes during the Doctors’ Trial. As a consequence of his actions, the Nuremberg Code was established to govern the ethics of medical research. The [Nuremberg Code](https://web.archive.org/web/20160610082154/https://www.ushmm.org/information/exhibitions/online-features/special-focus/doctors-trial/nuremberg-code) lays out ten points for ethical human subjects research. Point number one among them: **“Required is the voluntary, well-informed, understanding of the human subject in a full legal capacity.”**

The Nuremberg Code served as the basis for the [Declaration of Helsinki](https://web.archive.org/web/20160610082154/http://www.wma.net/en/30publications/10policies/b3/) by the World Medical Association, an organization with 112 national medical associations. The code also served as the basis of 45 CFR 46, the United States code that governs medical research.

A similar code of conduct for medical ethics was written following syphillis trials on African Americans in the United States: the [Belmont Report](https://web.archive.org/web/20160610082154/http://www.hhs.gov/ohrp/regulations-and-policy/belmont-report/) established a similar set of ethical guidelines for medical research, and this report is used by the US Department of Health and Human Services to structure human subject protections regulations. Among the guidelines in this report: **to gather informed consent from the patient.**

Informed consent is the _sine qua non_ of conducting medical research. Failure to obtain informed consent is the _biggest possible failure_. These authors purport to be conducting legitimate psychosocial analysis. Even though they are merely analyzing existing data, the hypothesis they wish to test fall under the well-established guidelines of medical research ethics.

OkCupid users _do not_ automatically consent to third party psychological research, plain and simple. This study violates the first and most fundamental rule of research ethics. In fact, OkCupid’s Terms of Service includes the following statement:

> You further agree that you will not use personal information about other users of this Website for any reason without the express prior consent of the user that has provided such information to you.

## Benefit to Humanity

Human subjects research must also meet the guidelines of _beneficence_ and _equipoise_: the researchers must do no harm; the research must answer a legitimate question; and the research must be of a benefit to society. Do the hypotheses here satisfy these requirements? It should be obvious they do not.

Many words can be said about the effect of certain organized religions on human history. But many more can be said about religion’s effect on local communities and on individual wellness. Freedom of religion is considered a fundamental human right, and while we can perform scientific studies about its impact on populations, we have to have a fundamental respect for persons and their rights. The researchers appear not to be asking a legitimate question; indeed, their language in their conclusions seem to indicate that they already chose an answer. Even still, attempting to link cognitive capacity to religious affiliation is fundamentally an eugenic practice. This study does not meet these criteria.

## Data Safety

Were these data to leak as a result of a hack, the infosec community would be up in arms. These data include personal identifiable information with highly sensitive results. The users then dumped the data on an open repository, where anyone can easily download and view the results. The impact of this can be dramatic: users can be shamed, fired from jobs, relationships terminated, etc. as a result of these data. It is a red herring to say that the data were available online. No user could reasonably gather this information through normal use in a reasonable amount of time.

## Methodological Flaws
Suppose the researchers _did_ have a legitimate research question. OkCupid allows users who self-identify as queer to set a filter preventing straight-identified users from viewing their profile. This is not a safety setting so much as it is a user experience improvement. However, the result is that queer people are likely invisible to the scraper bot (unless the researchers had the foresight of identifying the bot as queer; this appears not to be the case). Consequently, the underlying data set contains a significant sample bias: queer people are excluded disproportionately from the data. This is conventional queer erasure: queer identified folks are not included in a study, so conclusions applying only to straight people are used to inform conclusions which then get pressed upon queer people. This bias is unfortunately commonplace, but the authors appeared to make no effort to address it.

## Peer Review Failure

I used the term “published” in quotes earlier because what the authors did barely meets any definition of the term. The journal in which they published the paper appears to be edited by one of the authors of the paper. The journal has no impact score, and the conclusions of prior papers appear to follow a similar trend: relgious people are less intelligent, immigration (particularly from the Middle East) lowers intelligence in European countries, etc. These papers have exhibit disturbing far-right trends with dramatic methodological failures and should not be considered scientific research in any way.

Unfortunately, the damage has been done by uploading OKC user identities to the Internet. Hopefully, COS will take these data down, as it represents neither science nor openness in any meaningful way.

## A Last Note

OkCupid probably did not sanction this research, but that does not mean they could not have prevented it. A basic rate-limiter on requests would stifle any bot; particularly one that has exponentially increasing timeouts. For any website that allows user data to be public, this should be fundamental security praxis. This incident does not represent open science; it represents a security breach, enabled by a lack of countermeasures, and should be handled and treated as such.