---
title: "Beyond the Buzz: The Internet of Things"
date: 2016-02-29 22:00:00
tags: ["iot", "technology", "women in tech"]
categories: ["talks"]
markup: mmark
---

_This is a companion post to accompany the Charlottesville Women in Tech_ [Beyond the Buzz: The Internet of Things](http://www.charlottesvillewomenintech.com/2016/02/february-meeting-beyond-the-buzz-the-internet-of-things/) _panel on February 10, 2016. This post contains my responses to some of the questions prepared in advance of the panel._

**Content warning: An image of a raw piece of meat appears in this article below the fold.**

# Beyond the Buzz: The Internet of Things
## Charlottesville Women in Technology 2016

##### What is your 'angle' on IoT? What does it have to do with your professional/personal endeavors?

My personal interest in IoT is in quality issues, particularly how and when government and safety regulations do and do not apply. Furthermore, I have a deep-seated interest in cultural issues as they pertain to IoT products. The IoT is posed to integrately deeply in our lives and culture. Exploring secondary and tertiary effects of this innovation is something I find very fascinating.

##### What do you see as the most promising application of IoT? Or the top three most promising?

I find it very compelling that we can shorten the distance between industry and consumer. For example, an IoT-enabled power-generation factory can distribute alerts about increased load. Smart appliances could subscribe to these notices and take actions to reduce power usage. This would have an effect of operating more efficiently while also lowering maintenance frequency and fuel use on the generation-side of the equation. Likewise, IoT medical devices could distribute medical care to people who otherwise might not receive it, such as those who cannot travel easily, or those who cannot afford hands-on specialist time.

##### What do you think is the most important factor to the long-term success of a world full of networked objects? What needs to happen and/or what needs to be prevented from happening?

We absolutely must remember that software is about people. Innovation for the sake of innovation is only going to lead to disaster. At every step, we should be asking, "should we be doing this? Who is left out if we do this? What downstream effects will this innovation have on society?"

##### What is your viewpoint on security as it relates to IoT? Are you optimistic or pessimistic that the known (and perhaps unknown?) security problems can be successfully managed?

I think security is hugely important, but it is a subset of robustness. Internet security in general is a tough battle and in some sense I don't have a strong feeling as though the good guys are winning. But I feel like if we design for robustness, limit ourselves in what data we collect and why, we can make security issues more manageable.

##### On a lighter note, do you have a favorite IoT frustration/disaster story?

Absolutely! Recently, I used a smartwatch with a heart rate sensor to falsely detect a heartbeat in a piece of raw chicken breast. The video went semi-viral and ended up getting picked up by a couple of British tabloids ([Metro.co.uk](http://metro.co.uk/2016/01/27/this-chicken-breast-has-a-surprisingly-healthy-heart-rate-considering-its-dead-5647836/) and [Dailystar.co.uk](http://www.dailystar.co.uk/tech/news/491009/Microsoft-band-heart-rate-raw-chicken-breast)). In fact, I'll have a blog post coming up on this sometime in the near future.

<blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Yes, this chicken breast appears to be performing some vigorous exercise... <a href="https://t.co/fY1cPSlCLM">pic.twitter.com/fY1cPSlCLM</a> via <a href="https://twitter.com/EmilyGorcenski">@EmilyGorcenski</a></p>&mdash; Internet of Shit (@internetofshit) <a href="https://twitter.com/internetofshit/status/692004889380179968">January 26, 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

---
_The following questions are ones I submitted for possible consideration, but did not get asked due to time constraints_

##### What are some public safety issues regarding IoT?

IoT adoption actually has several impacts on public health. The way software behaves can change how machinery behaves. This can be dramatic: what happens if a software failure in a [Tesla Powerwall](https://www.teslamotors.com/powerwall) causes the device to overheat and explode? This can also be subtle: what are the health effects of [Volkswagen's engine control hack](http://www.bbc.com/news/business-34324772)? Most IoT products exist in unregulated spaces. Consumers often have an implicit sense of trust: if you buy a coffee maker, you expect it to be evaluated for safety. This is most commonly performed by an organization like [Underwriters Laboratories](http://ul.com/). But the UL has no standards that mention [internet](http://ulstandards.ul.com/standards-catalog/?search=Internet) and no standards that mention [software](http://ulstandards.ul.com/standards-catalog/?search=software). So how can you be certain that your internet-enabled coffee maker is actually safe?

##### What are some non-technical challenges regarding IoT adoption?

Depending on what you consider technical, usability is the first thing that comes to mind. However, usability can be a very technical field, even if it doesn't involve programming. So let me present it from the other side of the coin. Consider cultural issues on how people use devices. There are many intersectional considerations: class, race, gender, religion, etc. The IoT aims to be pervasive. That means that the utility and necessity of these devices, along with their benefits, have to have value to people with dramatically different cultural backgrounds.

##### What contributions can non-technical people make to IoT adoption?

Maybe this is a subset of usability, ultimately, but studying people. Explore how people interact with devices that _don't_ currently connect to the internet. What are their usage patterns and behaviors? Furthermore, developer evangelism is critically important. Developers need to know how subject matter experts work. What are their frustrations? What would they love to have be online if they could make it themselves? The ability to be interdisciplinary is key.

##### Who regulates IoT devices?

_(My comments here are US-centric)_

As I mentioned before, most IoT devices are not regulated. But in some spaces, we do have a set of both mandatory regulations and voluntary standards.

Medical devices are regulated by the Medical Device Amendment ([21 CFR 800](http://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfcfr/CFRSearch.cfm?CFRPartFrom=800&CFRPartTo=1299)) to the Federal Food, Drugs, and Cosmetics Act. Medical device software has been explicitly regulated since the [THERAC-25 incidents](https://en.wikipedia.org/wiki/Therac-25).

Avionics software is _de facto_ regulated under standard document [DO-178B](https://en.wikipedia.org/wiki/DO-178B). DO-178B is part of the reason why the question, "I have GPS tracking on my iPhone, why couldn't they put one on MH-370?" is difficult to answer. This standard is a guidance, but the FAA generally considers adherence to be a mandatory requirement.

In 2012, the NHTSA began exploring best practices for safety and reliability of computer code on vehicles, but so far has not established any legal authority to regulate the development of such software.

The National Institute of Standards and Technology (NIST) [has begun exploring generalized regulation of the IoT](http://www.hldataprotection.com/2015/09/articles/consumer-privacy/nist-releases-draft-framework-on-the-internet-of-things/), but headway is slow.

The US Consumer Product Safety Commission is practically silent on the issue.

##### What are your biggest concerns about IoT adoption?

My biggest concern is cultural. We are already experiencing a sharp digital divide, and Silicon Valley innovators often appear out-of-touch with the rest of the population in general. I am concerned that the IoT will be integrated predominantly into the lives of the already-privileged, destabilizing an already shaky cultural rift. We can see this already in the demographic differences between Twitter users and Twitter employees, for instance. [Talia Jane's Medium article](https://medium.com/@taliajane/an-open-letter-to-my-ceo-fb73df021e7a) about minimum-wage work at Yelp! also sticks out.

##### Who is putting support behind IoT adoption for industrial applications? For consumer applications?

Everybody who is making a product or selling a service is banking on the IoT, or should be. Literally every kind of product that you can imagine has someone trying to put a network-enabled computer chip inside. Of course, the big Fortune 100 companies are largely tackling the large-scale problems. But there is a lot of innovation happening in small businesses and startups, as well.



