---
layout: post
title: "Notes on writing posts in Markdown"
subtitle: A template post showing every element the theme styles.
date: 2025-11-01 10:30:00 +0000
tags: [meta, jekyll, markdown]
summary: Headings, lists, tables, code, quotes, and footnotes — a reference for writing future posts.
---

This post exists so you can see how each Markdown element renders in the theme
before writing your own. Delete it whenever you like.

## Headings

Use `##` for sections and `###` for subsections. The post title comes from the
front matter, so start at `##`.

### A third-level heading

Body copy is set in a serif face at a comfortable measure; long paragraphs stay
readable without line lengths sprawling across a wide monitor.

## Text formatting

You can **bold**, *italicise*, ~~strike through~~, and use `inline code`. Links
look like [this one](https://jekyllrb.com/docs/).

## Lists

Unordered:

- First item
- Second item
  - Nested item
  - Another nested item

Ordered:

1. Write the draft
2. Edit it twice
3. Publish

## Code blocks

Fenced blocks get syntax highlighting via Rouge, and the colours adapt to the
light/dark theme:

```ruby
# _plugins/example.rb — not used here, but handy for reference
module Jekyll
  class ExampleTag < Liquid::Tag
    def render(context)
      "Hello from #{context["page"]["title"]}"
    end
  end
end

Liquid::Template.register_tag("example", Jekyll::ExampleTag)
```

```javascript
const posts = await fetch("/feed.xml")
  .then((res) => res.text())
  .then((xml) => new DOMParser().parseFromString(xml, "application/xml"));

console.log(posts.querySelectorAll("item").length, "posts");
```

## Tables

| Element | Supported | Notes                     |
| ------- | --------- | ------------------------- |
| Tables  | Yes       | Scrolls horizontally      |
| Images  | Yes       | Rounded corners           |
| Notes   | Yes       | Footnotes via kramdown    |

## Blockquotes

> Good writing is clear thinking made visible.
>
> — someone, probably

## Footnotes

Kramdown supports footnotes[^1], which are useful for asides that would
otherwise break the flow.

[^1]: Rendered at the bottom of the post, with a link back.

## Front matter reference

Every post needs, at minimum:

```yaml
---
layout: post
title: "Post title"
date: 2025-11-05 09:00:00 +0000
tags: [tag-one, tag-two]
summary: One line used on the index and in feeds.
---
```

`summary` is optional but shows up on the home page and archive listing.
