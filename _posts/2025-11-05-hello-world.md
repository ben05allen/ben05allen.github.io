---
layout: post
title: "Hello, world"
subtitle: Why I'm starting a blog in 2025, and what I plan to write about.
date: 2025-11-05 09:00:00 +0000
tags: [meta, writing]
summary: A short note on what this site is for and what to expect from it.
---

This is the first post on a site I've been meaning to build for years.

The pitch is simple: I write things down anyway — release notes to myself,
debugging notes, half-finished arguments about architecture — and most of it
dies in a scratch file. Publishing forces a bit of rigour. If an explanation
can't survive being read by someone else, it probably wasn't right.

## What to expect

Posts roughly fall into three buckets:

1. **Build notes** — how something works, with the details that took me hours
   to find.
2. **Postmortems** — things that broke and why, written while the memory is
   still fresh.
3. **Tools** — small things I made that might be useful to someone else.

I'd rather publish something short and correct than something long and
speculative, so expect gaps between posts.

## How this site works

It's plain [Jekyll](https://jekyllrb.com) running on GitHub Pages. No
JavaScript framework, no build step, no analytics. Writing a post means adding
a markdown file and pushing it:

```bash
git add _posts/2025-11-05-hello-world.md
git commit -m "Add hello world post"
git push
```

Markdown renders through kramdown with GFM input, so tables, footnotes, and
fenced code blocks all work as expected.

> If you're reading this in a feed reader, thanks for subscribing — the RSS
> feed is at [`/feed.xml`](/feed.xml).

## Where to find things

The [archive](/writing/) lists everything by date, and [tags](/tags/) groups
posts by topic. If you want to say hello, the links in the footer are the
quickest route.
