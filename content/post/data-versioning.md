---
title: "Data Versioning"
date: 2019-02-11T17:30:00+01:00
draft: false
tags: ["data science", "data engineering", "machine learning"]
categories: ["math-code-tech"]
markup: mmark
displayMath: [['$$','$$'], ['\\[','\\]']]
---

Productionizing machine learning/AI/data science is a challenge. Not only are the outputs of machine-learning algorithms often compiled artifacts that need to be incorporated into existing production services, the languages and techniques used to develop these models are usually very different than those used in building the actual service. In this post, I want to explore how the degrees of freedom in versioning machine learning systems poses a unique challenge. I'll identify four key axes on which machine learning systems have a notion of version, along with some brief recommendations for how to simplify this a bit.

<!--more-->

# Putting Intelligence into the Stack

Consider the following: you run a large webservice on a JVM-based stack, and now you want to incorporate a machine learning model. You have data scientists, and they have spent some time doing the research, and now they are ready to deliver their work product: a proof-of-concept model built in R, and you have to implement this somehow. And maintain it somehow. When none of your data scientists are backend engineers and none of your backend engineers speak R.

There are many open questions regarding applied data science in a modern software engineering environment:

- how do we test apps that include machine learning?
- how do we approach the user experience?
- how do we apply principles of things like DevOps and continuous delivery?
- how do we keep documentation up-to-date for a black box artifact?
- etc.

Most of these questions don't have an accepted answer in the way that we have accepted answers in the world of app development, for instance. Even big tech companies are stumbling here. There's a lot of discussion to be had here, but I want to focus on one element of one question with this post: **how do we accomplish continuous delivery with data science?** I won't go into all the details of [continuous delivery](https://continuousdelivery.com/) in this post, but I'll call out a couple key principles that machine learning applications often stuble on: the requirement for continuous improvement, and the requirement to be able to roll back to any release at any point in time. To understand why, I want to focus on how machine learning applications differ from deterministic ones.

When we build standard services and software, which I'll call _deterministic_, we have the concept of a version. We build software, it implements features and has dependencies, both downstream and upstream, and it performs some task. For a given featureset and change history, we assign that software a _version_ according to some scheme (the scheme doesn't really matter, and some are better than others). When we change the code, we change the version. If we need to roll back the software, we can roll back to a previous incarnation of the source code and re-build and re-deploy. This is the basic principle, though it is not always as easy as I make it sound here.

When it comes to machine learning applications, we have a big issue. The central artifact is usually a compiled model, which can be very large, and which has no notion of anything resembling a service architecture, dependencies, or anything else. It is essentially a ball of logic with inputs and outputs. Encoded within this artifact are several assumptions: it inherits the shape, support, and type of the dataset that trains it; it inherits the distribution function of the dataset that trains it (what I like to call the _state of the universe_); and it often relies on the code or the frameworks that created it.

In other words, a machine learning system is **Model** + **Data** + **Code**. And each of these can and do change. Let's look at how those changes can occur.

## Understanding Models

A lot of data science primers and writeups treat models as the artifacts of a machine learning approach, or sometimes the abstract method by which it works, but I think this it too specific and restrictive. Let's take another view, and permit me a moment of metaphysicality.

The universe acts on data in some way. There are inputs, which get modified by a _process_, which result in the output. The process could be some physical description, e.g. $$F=ma$$; it could be random, e.g. the decay of an atom; it could be undiscoverable or even arbitrary and not fully explainable, e.g. whether you choose a white sauce or a red sauce for pasta dinner. The universe is the only perfect simulation of itself, but we don't demand perfection. After all, we don't need general relativity to know when to hit the brakes when driving our cars.

A _model_ is an approximation of a given process. A model is restricted in both its _domain_ (the space of possible inputs) and its _range_ (the space of possible outputs). Our goal is to identify a model that provides a suitable approximation within the domain that we care about with a level of accuracy that well-describes the way the universe actually works.

When building a model, we often want to start simple. Many problems can be solved by linear or logistic regression algorithms. When first applying machine learning to a problem, your biggest improvements will usually come from implementing _any_ solution, not necessary the optimal one (a topic for another day is the diminishing returns of model complexity). In this context, I consider the model to be the combination of _hyperparameters_ and _algorithmic approach_, but not the parameters (which are dependent on data, discussed below).

That said, the principle of continuous improvement tells us we should not rest here. Eventually, we may wish to improve our accuracy. Or the domain of applicability may change. As a result, our models must change. We can do this by retraining on new data, but eventually a given _modeling approach_ might no longer be suitable. At some point, we may grow out of our logistic regression breeches and decide to use a random forest or a neural network.

Furthermore, we can apply different modeling approaches to the same data to compare performance. A logistic regression and a neural network could have similar accuracy behavior, but one might excel in a region of the problem domain where the other struggles.

Different modeling approaches have different properties and limitations. A logistic regression is highly explainable, but a neural network is not. Therefore, when we consider what downstream requirements our system affects, our choice of model may have version-dependent impacts that are independent of the data used to train them. For this reason, the choice of model (including its hyperparameterization), should be thought of as a version axis.

## Understanding Data

Data is super-relevant when exploring how machine learning versions can fluctuate. In fact, it is so important that I break this down into two separate, equally-important subcategories: **schema** and **values**.

If we admit the metaphysical metaphor described in the previous section, then data is an _measurement_ or an _assessment of state_ of the universe. Data has a number of important properties, but the two we care most about are its shape and its distribution. The shape can be thought of as a schema, i.e. a structured way of describing the properties of the space the data lives in, and its values, i.e. the way it is distributed over that space.

### Understanding How Values Change

Data changes. The truth of the universe changes. Economies ebb and flow, our user base grows or gets older. Trends change. Technology changes. There is no reason to expect that our data will always look the same, even if its underlying shape stays the same. We must always be retraining our models.

This is a simple problem to understand but a more difficult thing to implement in a continuous delivery world. After all, if we need to be able to roll back to an arbitrary point in time, then we need to be able to version the data we train a model on at any given point in time. This is perhaps more pressing in data-driven applications than in software applications. In software, we always want to keep moving forward, but non-deterministic systems, such as AI applications, are extremely difficult to effectively patch.

Other data issues can abound. Sometimes data can be wrongly recorded due to software bugs. Fraudster behavior can corrupt data. These things take time to catch, and sometimes they cannot be retroactively remedied. For this reason, it should be clear that we need to be able to retrain a model on the data as it is reflected at any point in the past, and consequently we should think of the actual values of our dataset as a version axis.

### Understanding Schemas

A similar data issue exists with data schemas. We can think of a schema as the "shape" of the data (e.g. a relational database schema), and when we derive artifacts from data we often inherit some properties of this schema. For example, suppose you have a field representing a ``status``. What is this? Is this a string? Does this have subfields?

Schema variations are irritating because so much depend on them: object models, database tables, XML payloads, etc. Machine learning artifacts can also depend on the schema as well; if a machine learning algorithm expects a ``status`` field, it will break if at some point in the future this field becomes ``status_membership`` and ``status_editor``, for instance.

Data schemas can change independently of data. A third-party service could start serving JSON payloads with extra fields. A de-normalized field could be re-normalized without changing the values of the data. Rolling back schema changes is _very difficult_. But it is not always avoidable. Data schemas represent a version axis because of the tight coupling they have with both upstream and downstream dependencies.

## Understanding Code

Of all the components of a machine learning system, code is probably the best understood among technologists, because we have been working on building deterministic software systems for a while, and continuous delivery principles are pretty well understood in this context.

For a machine learning system, we can break the code down into _implementation code_ and _model development code_. We can also explore [_infrastructure as code_](https://en.wikipedia.org/wiki/Infrastructure_as_code), which is a relevant concept in this regard as well. The case for arguing that code represents a version axis is clear. But here we also call out that in practice, most compiled machine learning artifacts have code dependencies and so maintaining the dependencies becomes just as important as maintaining the model.

# Addressing Machine Learning Version Challenges

Suppose you have made it this far and broadly agree that by putting intelligence into the production stack, we significantly complicated our notion of maintaining versions. We've introduced four main axes: model, values, schema, and code. And a machine learning system can change along all four of those axes dependently or independently.

There are some broad approaches to tackle this challenge, and I'll describe some of them here.

## Treat Models as Code

One approach is to treat the model/modeling approach as code. Since we usually build models using some python or R scripts or the like, while using some libraries/dependencies like Tensorflow, we can simply treat the model as an extension of the code we're using.

#### Where this goes right

This is a sensible approach, because we can just develop on master alongside the rest of our development and any rollbacks automatically include a rollback to a previous version of the model. This removes a degree of freedom by locking two logically-distinct concepts together. It also means that your data scientists aren't working in a silo, but are fully-integrated into a cross-functional team.

#### Where this goes wrong

One of the challenges with this approach is that it fails to consider how the modeling approach may be linked to _other_ elements of the machine learning system and by consequence it couples all the rest of your code to your data and your schema, which may be drifting independently. This may or may not be a big challenge.

#### What to look out for

If you couple models and code, then it makes research a little bit harder, which means that data scientists doing experimental work to improve the product will need to work in development spikes, or that you'll need a more complex feature-flagging system to handle multiple (large) artifacts in the build process. Ultimately, as a model is the combination of hyperparameters and algorithmic approach, we may find ourself periodically reverting to "old" solutions as time evolves, which may feel strange when all the rest of the code keeps moving forward.

#### Recommendations

I recommend treating models as code for the same reason we treat infrastructure as code. Though it introduces some challenges, it is a natural way to link two closely-related concepts, and the negative consequences are, in my experience, minimal.

## Link Schemas and Values

This approach is also natural. When handling data, we simply store it as a blob somewhere. The values can be used to derive a schema anyhow, so this makes some sense.

#### Where this goes right

This is probably the easiest to implement. We can simply dump a table at each training period, save a training table somewhere, use a datamart/materialized view/stored query with a time dependency, or any other technical solution. Furthermore, if we link the values and the schema, we have a pretty clear case of what the data represent at any given point. This means we don't have to impute missing values or write complex adapters/interfaces to squeeze old data into a new shape or vice versa, an approach that gets complex and implausible very quickly. It also prevents us from having to guess what the default value is for newly-added fields.

#### Where this goes wrong

First, this is a bit more complex than just dumping the data at a given time point. This puts more dependency on tools to encode our schema and keep that linked to data. Furthermore, it may not be difficult at all to handle schema changes. But more critically, if we link values and schema, if our schema changes then we are essentially starting from scratch when the schema changes unless we figure out how to translate data from the old schema to the new. Anyone who has done a data migration knows that this is not always easy.

#### Recommendations

I don't recommend to link values and schema. It is usually easier to simply dump values to CSV files or the like, and from there we can infer schemas as necessary or document them elsewhere. For things like new columns, it is sometimes possible to use statistical methods to impute values. It is sometimes not so hard to write adapters if the shape of data changes, but consider your use case. If it involves a major migration, or frequent changes, it might be better to link everything to your schema and adjust as needed.

## Link Data and Code using Version Control for Data

This approach is used by tools like dvc. Simply put, we emit our data to some storage solution, hash the data in a meaningful way, and write a small stub that we can commit to source control alongside our code.

#### Where this goes right

This approach is gaining in popularity, with tools like MLFlow, Pachyderm, and dvc offering functionality to accomplish this. This makes it much easier to share and repeat work, and guarantees that training and validation data is always the same. Storage is fairly cheap, and many of these tools integrate nicely with existing source control tools.

#### Where this goes wrong

This can take up a lot of storage because we're potentially replicating the same data over and over. This also doesn't necessarily work for all types of data, either. The tooling for this is still not perfectly mature.

#### Recommendations

I recommend trying to implement this as best as possible given your data storage and access solutions. Even with data that lives on something like HDFS, we can version control an array of filepaths and keep references to that. For blob data, we can create datasets that are hashed and controlled using any of these tools being developed.

## Unlink Data/Models from Code

Another approach I've is to simply unlink the model or the data from the rest of the implementing code. In this approach, a model release cycle is agreed upon, e.g. once per week. A new training and validation dataset is derived, set aside, and one or more new models are trained. This is then implemented in whatever service needs to use it.

#### Where this goes wrong

This isn't continuous delivery and causes your data scientists to work in a silo.

#### Recommendations

Don't do this. Doing this is a really good way to come into intractable integration issues.

## Restrict Modeling Approaches

With this solution, you basically choose a modeling approach and commit to it. You may change the hyperparameters, and you certainly retrain the model, but you don't change the algorithmic approach, perhaps going so far as to implementing your own code.

#### Where this goes right

This is not as foolish as it might sound. Most of the time, we need nothing more than a basic approach. And by specializing in one technique, it is possible to become an expert in all the various issues it might have. It allows you to specialize your supporting code (e.g. training and validation code, implementation code), and it makes tweaks and optimizations much easier.

#### Where this goes wrong

If the only tool you have is a random forest-shaped hammer, then every problem better be a random forest-shaped nail. It bakes in a lot of dependency on the approach, tools, etc. into your code, making it hard to change later on. It is really a hyper-specific way of the first possible solution, linking models and code.

#### Recommendations

This is a good approach if you have large-scale problems and need to be able to test and deploy multiple models regularly. It's also good if you have simple problems and want to avoid chasing the latest shiny technique. More broadly, I think most applications should open themselves up to a small variety of possible modeling approaches and stay within those boundaries.

# Conclusion

Data science is hard to productionize, and one of the reasons it is hard is because it has so many moving parts. The notion of a "version" of a smart/AI/machine learning application has (at least) four possible axes on which it can drift. This poses a challenge in continuous delivery practices. These challenges can be addressed, but there are benefits and drawbacks to the various ways I've seen people try to address this in practice.

In the end, keeping an eye on continuous delivery principles is important. We should strive to integrate data scientists into our delivery teams, involve developers in the data science efforts, and treat machine learning like functional software and not a magical black box.