---
layout: post
title: "Python's Proposed None-coalescing Operator"
subtitle: An oddly timed, but useful addition.
date: 2026-11-25 23:00:00 +0900
tags: [python]
summary: This article introduces Python's new None-coalescing operator, and considers how computer languages evolve.
---

British linguist David Crystal wrote that the only languages that do not change are dead ones.
He was referring to Latin, a language which grew into the Romance family of languages
but which is now rarely spoken outside of classrooms. Still, Crystal's
observation seems equally applicable to computer languages - think of BASIC, or Pascal, or maybe even Python 2.

That modern computer languages must also evolve seems a reasonable premise. So what then are the mechanics of
that evolution? In human language it's simple enough - once enough kids in the 60s started saying "to boldly go", the
rules about splitting infinitives were relegated to dusty shelf-bound grammar textbooks. But bending the rules of
language in the playground is different to when the rules are enforced by a syntax analyser.

In the case of computer languages, evolution often happens by committee. In Python's case new features are
introduced by _Python Enhancement Proposals_ (PEPs), which the Python Steering Council then decide whether to
accept. Python's model of proposal and acceptance is now the blueprint for many other languages; Java
shamelessly has JEPs no less! The difference normally comes down to who makes the final call. In
Python's case it took the maelstrom around the walrus operator `:=` to shift responsibility from one person, Guido van
Rossum (the so-called benevolent dictator for life), to the now five-person Steering Council.
Beatles fans will approve, koo koo ka choo.

One of the common ways that a computer language evolves is through the introduction of "syntactic sugar" - think
optional chaining in TypeScript with `user?.profile?.email` or list comprehensions in Python `[x * 2 for x in range(5)]`. As
the name suggests these are features that make code easier for people to write and, perhaps more importantly, to read.

Of the current PEPs under consideration, one is [PEP 824](https://peps.python.org/pep-0824/), None-coalescing operators - a live example of Python
evolution happening, if you will. The author has introduced two new operators `??` and `??=`, called the
_None-coalescing operator_ and the _None-coalescing assignment operator_.
Reading `a ?? b` aloud might be voiced as "a or-else b". This operator occurs in other computer languages, for example JavaScript and C#,
where there is a concept of `null` or `None`. In Polars, the expression `pl.coalesce()` is similar.

For now, let's just consider the first proposed operator, the None-coalescing operator, `??`. At
the time of writing only this is likely to be adopted by the Steering Council. The idea behind
this new operator is that Pythonistas will have a test for `None` going forward, rather than
using `or` which can only test for a falsy value.

Using Python's common `or` operator we have:

```Python
a = None
b = 1
a or b
# is 1

c = 0
d = 1
c or d
# is 1
```

In Python, `0` is _falsy_, which can be problematic if you're checking for the existence of a value which
might actually be `0`.

However, the `??` operator allows us to only test for `None`:

```Python
a = None
b = 1
a ?? b
# is 1

c = 0
d = 1
c ?? d
# is 0
```

By definition `a ?? b` is syntactic sugar for `_t if ((_t := a) is not None) else b`, which alone
justifies the change, at least to my way of thinking.

Not only is it shorter, and easier to understand, but the proposed change allows one to avoid the trap of
false negatives with `or`.

## But why now?

As PEP 824 points out, this change was proposed over eleven years ago as PEP 505.

Earlier this year [PEP 661](https://peps.python.org/pep-0661/) introduced a new mechanism for creating _sentinel values_ into Python 3.15,
making it easier to use alternatives to `None`.
Python has had over a decade to introduce the `??` operator. Doing so now seems oddly timed.

Stepping back, in the new world of agentic coding where the wider adoption of new language features
might even be slower than it is for humans and where syntactic sugar is arguably of little value,
is the timing of this new feature Python's way of reminding us that, at least for now, fingers on the keyboard do still matter?

Despite that odd timing, the `??` operator seems like a useful addition to Python, though I wonder if it might have been better
as a keyword operator, perhaps `or-else`.
Nevertheless, it is a reminder that Python remains very much a living language. _Esto perpetua_!
