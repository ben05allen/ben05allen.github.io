---
layout: post
title: "Draft: an unfinished idea"
subtitle: Drafts live in _drafts/ and are only built locally with --drafts.
date: 2025-11-08 09:00:00 +0000
tags: [drafting]
summary: This file is a template — it never appears on the published site.
---

Drafts are files in `_drafts/` with **no date in the filename**:

```
_drafts/an-unfinished-idea.md
```

They're excluded from builds by default. Preview them locally with:

```bash
make drafts     # docker compose run --rm site jekyll serve --drafts
```

When the post is ready:

```bash
git mv _drafts/an-unfinished-idea.md _posts/2025-11-08-an-unfinished-idea.md
```

## Outline

- The problem
- What I tried first (and why it failed)
- The approach that worked
- What I'd do differently

## Notes to self

- [ ] Add the benchmark numbers
- [ ] Link the relevant pull request
- [ ] Tighten the introduction
