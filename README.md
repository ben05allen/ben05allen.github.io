# ben05allen.github.io

Personal blog. Static site generated with [Jekyll](https://jekyllrb.com) and
served by GitHub Pages at **https://ben05allen.github.io**.

No build pipeline, no CI: GitHub Pages runs its own Jekyll build on every push
to `master`. Everything here uses only plugins on the GitHub Pages allow-list.

## Local development

Ruby is **not** installed on this machine — everything runs in Docker.

```bash
make install   # first run: resolves gems inside the container
make serve     # http://localhost:4000, live reload, published posts only
make drafts    # same, but includes _drafts/ and future-dated posts
make build     # production build into _site/
make clean     # drop _site/ and caches
```

`make serve` runs `docker compose up`, so `Ctrl-C` stops it. Gems are cached in
a named Docker volume (`bundle`), so `make install` is only needed when
`Gemfile` changes.

## Writing a post

1. Create `_posts/YYYY-MM-DD-slug.md` (or draft it in `_drafts/` with no date).
2. Add front matter:

   ```yaml
   ---
   layout: post
   title: "Post title"
   date: 2025-11-08 09:00:00 +0000
   tags: [tag-one, tag-two]
   summary: One line shown on the home page and in feeds.
   ---
   ```

3. Write Markdown below the front matter (GFM: tables, footnotes, fenced code).
4. Push. Pages builds and publishes within a minute or two.

Posts are served at `/:year/:month/:day/:title/`. Tags are collected
automatically and listed at `/tags/`.

Promote a draft when it's ready:

```bash
git mv _drafts/an-unfinished-idea.md _posts/2025-11-08-an-unfinished-idea.md
```

## Structure

```
_config.yml          site config, plugins, permalink scheme
_data/navigation.yml header nav links
_layouts/            default, home, page, post
_includes/           head, header, footer, post list/meta, theme toggle
_posts/              published posts
_drafts/             unpublished posts (never built by Pages)
assets/css/style.scss theme styles (light + dark, Rouge tokens)
assets/favicon.svg   favicon
index.md             home page
writing/             full archive (/writing/)
tags.md              tag index with anchors (/tags/)
about.md             about page (/about/)
projects.md          project list (/projects/)
404.md               custom 404
robots.txt           robots + sitemap pointer
```

All three plugins — `jekyll-seo-tag`, `jekyll-sitemap`, `jekyll-feed` — are on
the GitHub Pages allow-list. Custom `_plugins/` Ruby files are **not** allowed
in the built-in build, which is why tag pages are generated with plain Liquid
loop over `site.tags` rather than a generator plugin.

## GitHub Pages settings

Repository → **Settings → Pages**:

- **Source**: Deploy from a branch
- **Branch**: `master` / `/ (root)`

Since this repo is named `<user>.github.io`, the site is served from the domain
root and `baseurl` stays empty.

## Theme

Hand-written, no theme gem. Design tokens are CSS custom properties at the top
of `assets/css/style.scss`; dark mode follows `prefers-color-scheme` and can be
overridden with the header toggle (stored in `localStorage`).

`assets/css/style.scss` is deliberately at the conventional theme path: GitHub
Pages' build loads the `jekyll-theme-primer` gem (a `github-pages` dependency)
and would otherwise publish its ~76 kB stylesheet. This repo's file shadows it,
so `/assets/css/style.css` is the only stylesheet the site ships.
